.class public Lcom/android/camera/one/v2/photo/extension/spreadtrum/SPTOneCameraManagerExtention;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
.source "SPTOneCameraManagerExtention.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogicCameraId(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureMode"    # Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMonoCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondBackCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUltraWideCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .locals 1
    .param p1, "cameraManager"    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
