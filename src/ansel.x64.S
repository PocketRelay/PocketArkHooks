.globl addUserControl
.globl clearHdrBufferBindHint
.globl clearHdrBufferFinishedHint
.globl clearUserControlDescListDirtyFlag
.globl getConfiguration
.globl getConfigurationSize
.globl getHdrBufferBindHintActive
.globl getHdrBufferFinishedHintActive
.globl getSessionConfigurationSize
.globl getUserControlDescription
.globl getUserControlDescriptionsSize
.globl getVersion
.globl initializeConfiguration
.globl initializeSessionConfiguration
.globl isAnselAvailable
.globl isUserControlDescListDirty
.globl lockUserControlDescriptions
.globl markHdrBufferBind
.globl markHdrBufferFinished
.globl quaternionToRotationMatrixVectors
.globl removeUserControl
.globl rotationMatrixVectorsToQuaternion
.globl setConfiguration
.globl setSessionFunctions
.globl setStopSessionCallback
.globl setUpdateCameraFunc
.globl setUserControlLabelLocalization
.globl startSession
.globl stopSession
.globl unlockUserControlDescriptions
.globl updateCamera
.globl userControlValueChanged

addUserControl:
    jmp qword ptr [rip + ADDR_TABLE + 0 * 8]
clearHdrBufferBindHint:
    jmp qword ptr [rip + ADDR_TABLE + 1 * 8]
clearHdrBufferFinishedHint:
    jmp qword ptr [rip + ADDR_TABLE + 2 * 8]
clearUserControlDescListDirtyFlag:
    jmp qword ptr [rip + ADDR_TABLE + 3 * 8]
getConfiguration:
    jmp qword ptr [rip + ADDR_TABLE + 4 * 8]
getConfigurationSize:
    jmp qword ptr [rip + ADDR_TABLE + 5 * 8]
getHdrBufferBindHintActive:
    jmp qword ptr [rip + ADDR_TABLE + 6 * 8]
getHdrBufferFinishedHintActive:
    jmp qword ptr [rip + ADDR_TABLE + 7 * 8]
getSessionConfigurationSize:
    jmp qword ptr [rip + ADDR_TABLE + 8 * 8]
getUserControlDescription:
    jmp qword ptr [rip + ADDR_TABLE + 9 * 8]
getUserControlDescriptionsSize:
    jmp qword ptr [rip + ADDR_TABLE + 10 * 8]
getVersion:
    jmp qword ptr [rip + ADDR_TABLE + 11 * 8]
initializeConfiguration:
    jmp qword ptr [rip + ADDR_TABLE + 12 * 8]
initializeSessionConfiguration:
    jmp qword ptr [rip + ADDR_TABLE + 13 * 8]
isAnselAvailable:
    jmp qword ptr [rip + ADDR_TABLE + 14 * 8]
isUserControlDescListDirty:
    jmp qword ptr [rip + ADDR_TABLE + 15 * 8]
lockUserControlDescriptions:
    jmp qword ptr [rip + ADDR_TABLE + 16 * 8]
markHdrBufferBind:
    jmp qword ptr [rip + ADDR_TABLE + 17 * 8]
markHdrBufferFinished:
    jmp qword ptr [rip + ADDR_TABLE + 18 * 8]
quaternionToRotationMatrixVectors:
    jmp qword ptr [rip + ADDR_TABLE + 19 * 8]
removeUserControl:
    jmp qword ptr [rip + ADDR_TABLE + 20 * 8]
rotationMatrixVectorsToQuaternion:
    jmp qword ptr [rip + ADDR_TABLE + 21 * 8]
setConfiguration:
    jmp qword ptr [rip + ADDR_TABLE + 22 * 8]
setSessionFunctions:
    jmp qword ptr [rip + ADDR_TABLE + 23 * 8]
setStopSessionCallback:
    jmp qword ptr [rip + ADDR_TABLE + 24 * 8]
setUpdateCameraFunc:
    jmp qword ptr [rip + ADDR_TABLE + 25 * 8]
setUserControlLabelLocalization:
    jmp qword ptr [rip + ADDR_TABLE + 26 * 8]
startSession:
    jmp qword ptr [rip + ADDR_TABLE + 27 * 8]
stopSession:
    jmp qword ptr [rip + ADDR_TABLE + 28 * 8]
unlockUserControlDescriptions:
    jmp qword ptr [rip + ADDR_TABLE + 29 * 8]
updateCamera:
    jmp qword ptr [rip + ADDR_TABLE + 30 * 8]
userControlValueChanged:
    jmp qword ptr [rip + ADDR_TABLE + 31 * 8]
