#![allow(clippy::missing_safety_doc)]

use std::{fs, path::Path};
use windows_sys::Win32::{
    Foundation::GetLastError,
    System::{
        Console::{AllocConsole, FreeConsole},
        LibraryLoader::{FreeLibrary, LoadLibraryA},
        SystemServices::{DLL_PROCESS_ATTACH, DLL_PROCESS_DETACH},
    },
};

pub mod hooks;
pub mod proxy;

#[no_mangle]
#[allow(non_snake_case, unused_variables)]
unsafe extern "system" fn DllMain(dll_module: usize, call_reason: u32, _: *mut ()) -> bool {
    match call_reason {
        DLL_PROCESS_ATTACH => {
            // Allocate a console
            AllocConsole();

            // Load ASI plugins
            load_plugins();

            // initialize the proxy
            proxy::init();
            // Handles the DLL being attached to the game
            unsafe { hooks::hook() };
        }
        DLL_PROCESS_DETACH => {
            // free the proxied library
            if let Some(handle) = proxy::PROXY_HANDLE.take() {
                FreeLibrary(handle);
            }

            // Free the console
            FreeConsole();
        }
        _ => {}
    }

    true
}

fn load_plugins() {
    let path = Path::new("ASI");
    if !path.exists() {
        print!("No ASI plugins loaded");
        return;
    }

    let files = match fs::read_dir(path) {
        Ok(value) => value,
        Err(err) => {
            eprintln!("Failed to read ASI directory: {}", err);
            return;
        }
    };

    for file in files {
        let file = match file {
            Ok(value) => value,
            Err(err) => {
                eprintln!("Failed to acccess dir entry: {}", err);
                continue;
            }
        };
        let is_file = match file.metadata() {
            Ok(value) => value.is_file(),
            Err(err) => {
                eprintln!("Failed to acccess entry metadata: {}", err);
                continue;
            }
        };
        if !is_file {
            continue;
        }
        let name = file.file_name();
        let name = match name.to_str() {
            Some(value) => value,
            None => continue,
        };

        if !name.ends_with(".asi") {
            continue;
        }

        let mut path = file.path().to_string_lossy().to_string();
        path.push('\0');

        println!("Loading ASI plugin: {}", name);

        let handle = unsafe { LoadLibraryA(path.as_ptr()) };
        if handle == 0 {
            let err = unsafe { GetLastError() };
            eprintln!("Failed to load library: {}", err);
        } else {
            println!("Loaded plugin: {}", name);
        }
    }
}
