.class public interface abstract Lcom/android/camera/processing/imagebackend/ImageConsumer;
.super Ljava/lang/Object;
.source "ImageConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;
    }
.end annotation


# virtual methods
.method public abstract getNumberOfOutstandingCalls()I
.end method

.method public abstract getNumberOfReservedOpenImages()I
.end method

.method public abstract getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;
.end method

.method public abstract receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;ZZLcom/google/common/base/Optional;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            "ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/Set;ZZLcom/google/common/base/Optional;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer;",
            ">;ZZ",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/Runnable;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
            ">;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;",
            ">;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageProcessorListener;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
