.class public Lcom/android/camera/one/v1/LegacyOneCameraOpenerImpl;
.super Ljava/lang/Object;
.source "LegacyOneCameraOpenerImpl.java"

# interfaces
.implements Lcom/android/camera/one/OneCameraOpener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static create()Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/OneCameraOpener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/android/camera/one/v1/LegacyOneCameraOpenerImpl;

    invoke-direct {v0}, Lcom/android/camera/one/v1/LegacyOneCameraOpenerImpl;-><init>()V

    .line 36
    .local v0, "cameraManager":Lcom/android/camera/one/OneCameraOpener;
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public open(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Lcom/android/camera/async/MainThread;Lcom/android/camera/one/v2/photo/ImageRotationCalculator;Lcom/android/camera/SoundPlayer;Lcom/android/camera/one/OneCamera$OpenCallback;Lcom/android/camera/FatalErrorHandler;)V
    .locals 2
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "mainThread"    # Lcom/android/camera/async/MainThread;
    .param p4, "imageRotationCalculator"    # Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .param p5, "soundPlayer"    # Lcom/android/camera/SoundPlayer;
    .param p6, "openCallback"    # Lcom/android/camera/one/OneCamera$OpenCallback;
    .param p7, "fatalErrorHandler"    # Lcom/android/camera/FatalErrorHandler;

    .prologue
    .line 53
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openCameraDevice(Lcom/android/camera/device/CameraId;Landroid/os/Handler;Landroid/hardware/camera2/CameraDevice$StateCallback;Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;)V
    .locals 2
    .param p1, "cameraId"    # Lcom/android/camera/device/CameraId;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "stateCallback"    # Landroid/hardware/camera2/CameraDevice$StateCallback;
    .param p4, "openCameraExceptionHandler"    # Lcom/android/camera/one/OneCameraOpener$OpenCameraExceptionHandler;

    .prologue
    .line 58
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMonoInfo(Z)V
    .locals 0
    .param p1, "isMono"    # Z

    .prologue
    .line 64
    return-void
.end method
