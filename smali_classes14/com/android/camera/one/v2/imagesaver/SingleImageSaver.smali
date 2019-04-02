.class interface abstract Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;
.super Ljava/lang/Object;
.source "SingleImageSaver.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract getCaptureSession()Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.end method

.method public abstract getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
.end method

.method public abstract saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract saveAndCloseRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation
.end method
