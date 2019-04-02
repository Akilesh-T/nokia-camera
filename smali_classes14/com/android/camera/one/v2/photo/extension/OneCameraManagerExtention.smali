.class public abstract Lcom/android/camera/one/v2/photo/extension/OneCameraManagerExtention;
.super Ljava/lang/Object;
.source "OneCameraManagerExtention.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLogicCameraId(Landroid/hardware/camera2/CameraManager;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;
    .param p1    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getMonoCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .param p1    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getSecondBackCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .param p1    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getUltraWideCameraId(Landroid/hardware/camera2/CameraManager;)Lcom/android/camera/device/CameraId;
    .param p1    # Landroid/hardware/camera2/CameraManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
