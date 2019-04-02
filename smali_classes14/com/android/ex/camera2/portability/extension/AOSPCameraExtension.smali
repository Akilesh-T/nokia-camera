.class public Lcom/android/ex/camera2/portability/extension/AOSPCameraExtension;
.super Lcom/android/ex/camera2/portability/extension/CameraExtension;
.source "AOSPCameraExtension.java"


# static fields
.field private static final TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "AOSPCamExt"

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/Camera;I)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraId"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/ex/camera2/portability/extension/CameraExtension;-><init>(Landroid/hardware/Camera;I)V

    .line 20
    sget-object v0, Lcom/android/ex/camera2/portability/extension/AOSPCameraExtension;->TAG:Lcom/android/ex/camera2/portability/debug/Log$Tag;

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/android/ex/camera2/portability/debug/Log;->v(Lcom/android/ex/camera2/portability/debug/Log$Tag;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public abortCapture(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    return-void
.end method

.method public invalidate(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    return-void
.end method

.method public setCameraMetaData(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
    .locals 0
    .param p1, "proxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;

    .prologue
    .line 81
    return-void
.end method

.method public startBurst(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureBurstCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    const/4 v0, -0x1

    invoke-interface {p2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;->onBurstFailed(I)V

    .line 36
    return-void
.end method

.method public startPanorama(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "capturePanoramaCallback"    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    return-void
.end method

.method public stopBurst(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 41
    return-void
.end method

.method public stopPanorama(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    return-void
.end method

.method public takeBeautyPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c4

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 71
    return-void
.end method

.method public takeBokehPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c5

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 76
    return-void
.end method

.method public takeDenoisePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c2

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 61
    return-void
.end method

.method public takeHDRPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c1

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 56
    return-void
.end method

.method public takeLowLightPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "captureCallbacks"    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    iget-object v0, p2, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;->mActionNotSupport:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    const/16 v1, 0x2c3

    invoke-interface {v0, v1}, Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;->onActionNotSupport(I)V

    .line 66
    return-void
.end method
