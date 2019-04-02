.class public abstract Lcom/android/ex/camera2/portability/extension/CameraExtension;
.super Ljava/lang/Object;
.source "CameraExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ex/camera2/portability/extension/CameraExtension$ImageProcess;,
        Lcom/android/ex/camera2/portability/extension/CameraExtension$AndroidCameraExtensionStateHolder;
    }
.end annotation


# instance fields
.field private final mCamera:Landroid/hardware/Camera;

.field protected final mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

.field private final mCameraId:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;I)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cameraId"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension;->mCamera:Landroid/hardware/Camera;

    .line 53
    iput p2, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension;->mCameraId:I

    .line 54
    new-instance v0, Lcom/android/ex/camera2/portability/extension/CameraExtension$AndroidCameraExtensionStateHolder;

    invoke-direct {v0}, Lcom/android/ex/camera2/portability/extension/CameraExtension$AndroidCameraExtensionStateHolder;-><init>()V

    iput-object v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension;->mCameraExtensionState:Lcom/android/ex/camera2/portability/extension/CameraExtensionStateHolder;

    .line 55
    return-void
.end method


# virtual methods
.method public abstract abortCapture(Landroid/os/Handler;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraId()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/android/ex/camera2/portability/extension/CameraExtension;->mCameraId:I

    return v0
.end method

.method public abstract invalidate(Landroid/os/Handler;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract setCameraMetaData(Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V
.end method

.method public abstract startBurst(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract startPanorama(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stopBurst(Landroid/os/Handler;)V
.end method

.method public abstract stopPanorama(Landroid/os/Handler;)V
.end method

.method public abstract takeBeautyPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract takeBokehPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract takeDenoisePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract takeHDRPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract takeLowLightPicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;)V
    .param p1    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
