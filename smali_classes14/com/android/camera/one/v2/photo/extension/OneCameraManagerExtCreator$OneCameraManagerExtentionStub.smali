.class public Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator$OneCameraManagerExtentionStub;
.super Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
.source "OneCameraManagerExtCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OneCameraManagerExtentionStub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
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
    .line 40
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
    .line 45
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
    .line 35
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
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method
