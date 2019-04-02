.class public interface abstract Lcom/android/camera/one/OneCameraOpener;
.super Ljava/lang/Object;
.source "OneCameraOpener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;
    }
.end annotation


# virtual methods
.method public abstract open(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/SoundPlayer;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;)V
.end method

.method public abstract openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V
.end method

.method public abstract setMonoInfo(Z)V
.end method
