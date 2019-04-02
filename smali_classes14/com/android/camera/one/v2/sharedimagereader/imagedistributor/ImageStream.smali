.class public interface abstract Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
.super Ljava/lang/Object;
.source "ImageStream.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueue;
.implements Lcom/android/camera/one/v2/core/CaptureStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueue",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;",
        "Lcom/android/camera/one/v2/core/CaptureStream;"
    }
.end annotation


# virtual methods
.method public abstract addImageCallback(JLjava/lang/Runnable;)V
.end method

.method public abstract close()V
.end method

.method public abstract discardNext()V
.end method

.method public abstract getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation
.end method

.method public abstract getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isDummy()Z
.end method

.method public abstract peekNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
.end method
