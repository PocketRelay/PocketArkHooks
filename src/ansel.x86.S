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
    jmp ds:[ADDR_TABLE + 0 * 4]
clearHdrBufferBindHint:
    jmp ds:[ADDR_TABLE + 1 * 4]
clearHdrBufferFinishedHint:
    jmp ds:[ADDR_TABLE + 2 * 4]
clearUserControlDescListDirtyFlag:
    jmp ds:[ADDR_TABLE + 3 * 4]
getConfiguration:
    jmp ds:[ADDR_TABLE + 4 * 4]
getConfigurationSize:
    jmp ds:[ADDR_TABLE + 5 * 4]
getHdrBufferBindHintActive:
    jmp ds:[ADDR_TABLE + 6 * 4]
getHdrBufferFinishedHintActive:
    jmp ds:[ADDR_TABLE + 7 * 4]
getSessionConfigurationSize:
    jmp ds:[ADDR_TABLE + 8 * 4]
getUserControlDescription:
    jmp ds:[ADDR_TABLE + 9 * 4]
getUserControlDescriptionsSize:
    jmp ds:[ADDR_TABLE + 10 * 4]
getVersion:
    jmp ds:[ADDR_TABLE + 11 * 4]
initializeConfiguration:
    jmp ds:[ADDR_TABLE + 12 * 4]
initializeSessionConfiguration:
    jmp ds:[ADDR_TABLE + 13 * 4]
isAnselAvailable:
    jmp ds:[ADDR_TABLE + 14 * 4]
isUserControlDescListDirty:
    jmp ds:[ADDR_TABLE + 15 * 4]
lockUserControlDescriptions:
    jmp ds:[ADDR_TABLE + 16 * 4]
markHdrBufferBind:
    jmp ds:[ADDR_TABLE + 17 * 4]
markHdrBufferFinished:
    jmp ds:[ADDR_TABLE + 18 * 4]
quaternionToRotationMatrixVectors:
    jmp ds:[ADDR_TABLE + 19 * 4]
removeUserControl:
    jmp ds:[ADDR_TABLE + 20 * 4]
rotationMatrixVectorsToQuaternion:
    jmp ds:[ADDR_TABLE + 21 * 4]
setConfiguration:
    jmp ds:[ADDR_TABLE + 22 * 4]
setSessionFunctions:
    jmp ds:[ADDR_TABLE + 23 * 4]
setStopSessionCallback:
    jmp ds:[ADDR_TABLE + 24 * 4]
setUpdateCameraFunc:
    jmp ds:[ADDR_TABLE + 25 * 4]
setUserControlLabelLocalization:
    jmp ds:[ADDR_TABLE + 26 * 4]
startSession:
    jmp ds:[ADDR_TABLE + 27 * 4]
stopSession:
    jmp ds:[ADDR_TABLE + 28 * 4]
unlockUserControlDescriptions:
    jmp ds:[ADDR_TABLE + 29 * 4]
updateCamera:
    jmp ds:[ADDR_TABLE + 30 * 4]
userControlValueChanged:
    jmp ds:[ADDR_TABLE + 31 * 4]
