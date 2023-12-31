
use std::arch::global_asm;
use windows_sys::Win32::System::LibraryLoader::{GetProcAddress, LoadLibraryA};

#[no_mangle]
pub static mut ADDR_TABLE: [*const (); 32] = [std::ptr::null(); 32];
pub static mut PROXY_HANDLE: Option<isize> = None;

#[cfg(target_pointer_width = "64")]
global_asm!(include_str!("ansel.x64.S"));
#[cfg(target_pointer_width = "32")]
global_asm!(include_str!("ansel.x86.S"));
    
// # Safety
pub unsafe fn init() {
    let handle = LoadLibraryA("AnselSDK64.bak\0".as_ptr());
    if handle == 0 {
        eprintln!("Failed to load library");
        return;
    }

    PROXY_HANDLE = Some(handle);

    let symbols: [&str; 32] = ["addUserControl\0","clearHdrBufferBindHint\0","clearHdrBufferFinishedHint\0","clearUserControlDescListDirtyFlag\0","getConfiguration\0","getConfigurationSize\0","getHdrBufferBindHintActive\0","getHdrBufferFinishedHintActive\0","getSessionConfigurationSize\0","getUserControlDescription\0","getUserControlDescriptionsSize\0","getVersion\0","initializeConfiguration\0","initializeSessionConfiguration\0","isAnselAvailable\0","isUserControlDescListDirty\0","lockUserControlDescriptions\0","markHdrBufferBind\0","markHdrBufferFinished\0","quaternionToRotationMatrixVectors\0","removeUserControl\0","rotationMatrixVectorsToQuaternion\0","setConfiguration\0","setSessionFunctions\0","setStopSessionCallback\0","setUpdateCameraFunc\0","setUserControlLabelLocalization\0","startSession\0","stopSession\0","unlockUserControlDescriptions\0","updateCamera\0","userControlValueChanged\0"];

    for (symbol, addr) in symbols.iter().zip(ADDR_TABLE.iter_mut()) {
        *addr = GetProcAddress(handle, symbol.as_ptr()).expect("Missing function") as *const ();
    }
}
    
