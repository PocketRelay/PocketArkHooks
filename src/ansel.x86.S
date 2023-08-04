.globl markHdrBufferFinished
.globl rotationMatrixVectorsToQuaternion
.globl getConfigurationSize
.globl setSessionFunctions
.globl removeUserControl
.globl getHdrBufferFinishedHintActive
.globl setStopSessionCallback
.globl getSessionConfigurationSize
.globl isUserControlDescListDirty
.globl initializeSessionConfiguration
.globl userControlValueChanged
.globl lockUserControlDescriptions
.globl setUserControlLabelLocalization
.globl markHdrBufferBind
.globl setConfiguration
.globl quaternionToRotationMatrixVectors
.globl getVersion
.globl initializeConfiguration
.globl unlockUserControlDescriptions
.globl clearHdrBufferBindHint
.globl startSession
.globl setUpdateCameraFunc
.globl getUserControlDescriptionsSize
.globl addUserControl
.globl getConfiguration
.globl getHdrBufferBindHintActive
.globl clearHdrBufferFinishedHint
.globl isAnselAvailable
.globl clearUserControlDescListDirtyFlag
.globl stopSession
.globl updateCamera
.globl getUserControlDescription

markHdrBufferFinished:
    jmp ds:[ADDR_TABLE + 0 * 4]
rotationMatrixVectorsToQuaternion:
    jmp ds:[ADDR_TABLE + 1 * 4]
getConfigurationSize:
    jmp ds:[ADDR_TABLE + 2 * 4]
setSessionFunctions:
    jmp ds:[ADDR_TABLE + 3 * 4]
removeUserControl:
    jmp ds:[ADDR_TABLE + 4 * 4]
getHdrBufferFinishedHintActive:
    jmp ds:[ADDR_TABLE + 5 * 4]
setStopSessionCallback:
    jmp ds:[ADDR_TABLE + 6 * 4]
getSessionConfigurationSize:
    jmp ds:[ADDR_TABLE + 7 * 4]
isUserControlDescListDirty:
    jmp ds:[ADDR_TABLE + 8 * 4]
initializeSessionConfiguration:
    jmp ds:[ADDR_TABLE + 9 * 4]
userControlValueChanged:
    jmp ds:[ADDR_TABLE + 10 * 4]
lockUserControlDescriptions:
    jmp ds:[ADDR_TABLE + 11 * 4]
setUserControlLabelLocalization:
    jmp ds:[ADDR_TABLE + 12 * 4]
markHdrBufferBind:
    jmp ds:[ADDR_TABLE + 13 * 4]
setConfiguration:
    jmp ds:[ADDR_TABLE + 14 * 4]
quaternionToRotationMatrixVectors:
    jmp ds:[ADDR_TABLE + 15 * 4]
getVersion:
    jmp ds:[ADDR_TABLE + 16 * 4]
initializeConfiguration:
    jmp ds:[ADDR_TABLE + 17 * 4]
unlockUserControlDescriptions:
    jmp ds:[ADDR_TABLE + 18 * 4]
clearHdrBufferBindHint:
    jmp ds:[ADDR_TABLE + 19 * 4]
startSession:
    jmp ds:[ADDR_TABLE + 20 * 4]
setUpdateCameraFunc:
    jmp ds:[ADDR_TABLE + 21 * 4]
getUserControlDescriptionsSize:
    jmp ds:[ADDR_TABLE + 22 * 4]
addUserControl:
    jmp ds:[ADDR_TABLE + 23 * 4]
getConfiguration:
    jmp ds:[ADDR_TABLE + 24 * 4]
getHdrBufferBindHintActive:
    jmp ds:[ADDR_TABLE + 25 * 4]
clearHdrBufferFinishedHint:
    jmp ds:[ADDR_TABLE + 26 * 4]
isAnselAvailable:
    jmp ds:[ADDR_TABLE + 27 * 4]
clearUserControlDescListDirtyFlag:
    jmp ds:[ADDR_TABLE + 28 * 4]
stopSession:
    jmp ds:[ADDR_TABLE + 29 * 4]
updateCamera:
    jmp ds:[ADDR_TABLE + 30 * 4]
getUserControlDescription:
    jmp ds:[ADDR_TABLE + 31 * 4]
