.class public interface abstract Lcom/android/camera/app/OneCameraProvider;
.super Ljava/lang/Object;
.source "OneCameraProvider.java"


# virtual methods
.method public abstract forceCloseExistWhenNextOpen()V
.end method

.method public abstract getCurrentCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getCurrentSubCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getFirstBackCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getFirstFrontCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
.end method

.method public abstract getMonoCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract getNumberOfCameras()I
.end method

.method public abstract getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;
.end method

.method public abstract getOneCameraOpener()Lcom/android/camera/one/OneCameraOpener;
.end method

.method public abstract getSecondBackCameraId()Lcom/android/camera/device/CameraId;
.end method

.method public abstract isBackFacingCamera(Lcom/android/camera/device/CameraId;)Z
.end method

.method public abstract isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z
.end method

.method public abstract releaseCamera(Lcom/android/camera/device/CameraId;)V
.end method

.method public abstract releaseSubCamera(Lcom/android/camera/device/CameraId;)V
.end method

.method public abstract requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
.end method

.method public abstract requestSubCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V
.end method

.method public abstract setCameraExceptionHandler(Lcom/android/ex/camera2/portability/CameraExceptionHandler;)V
.end method

.method public abstract waitingForCamera()Z
.end method

.method public abstract waitingForSubCamera()Z
.end method

.method public abstract warmStartCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;)V
.end method
