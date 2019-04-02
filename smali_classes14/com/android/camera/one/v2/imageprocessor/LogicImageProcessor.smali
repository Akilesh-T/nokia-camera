.class public interface abstract Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;
.super Ljava/lang/Object;
.source "LogicImageProcessor.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract convertImageAndProcess(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation
.end method
