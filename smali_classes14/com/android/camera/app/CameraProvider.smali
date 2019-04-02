.class public interface abstract Lcom/android/camera/app/CameraProvider;
.super Ljava/lang/Object;
.source "CameraProvider.java"


# virtual methods
.method public abstract forceCloseExistWhenNextOpen()V
.end method

.method public abstract getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
.end method

.method public abstract getCurrentCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getCurrentSubCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getFirstBackCameraId()I
.end method

.method public abstract getFirstFrontCameraId()I
.end method

.method public abstract getLogicCameraBackId()I
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract getSecondBackCameraId()I
.end method

.method public abstract isBackFacingCamera(I)Z
.end method

.method public abstract isFrontFacingCamera(I)Z
.end method

.method public abstract releaseCamera(I)V
.end method

.method public abstract releaseSubCamera(I)V
.end method

.method public abstract requestCamera(I)V
.end method

.method public abstract requestCamera(IZ)V
.end method

.method public abstract requestSubCamera(I)V
.end method

.method public abstract requestSubCamera(IZ)V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method

.method public abstract waitingForCamera()Z
.end method

.method public abstract waitingForSubCamera()Z
.end method

.method public abstract warmStartCamera(IZ)V
.end method
