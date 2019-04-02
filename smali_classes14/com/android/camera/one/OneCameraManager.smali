.class public interface abstract Lcom/android/camera/one/OneCameraManager;
.super Ljava/lang/Object;
.source "OneCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCameraManager$Factory;
    }
.end annotation


# virtual methods
.method public abstract findFirstCamera()Lcom/android/camera/device/CameraId;
.end method

.method public abstract findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
.end method

.method public abstract getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
.end method

.method public abstract getMonoCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getNumberOfCameras()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation
.end method

.method public abstract getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation
.end method

.method public abstract getSecondBackCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getUltraWideCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract hasCamera()Z
.end method

.method public abstract hasCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z
.end method

.method public abstract isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation
.end method

.method public abstract isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/one/OneCameraAccessException;
        }
    .end annotation
.end method
