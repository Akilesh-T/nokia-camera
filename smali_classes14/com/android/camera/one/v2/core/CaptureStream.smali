.class public interface abstract Lcom/android/camera/one/v2/core/CaptureStream;
.super Ljava/lang/Object;
.source "CaptureStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/core/CaptureStream$StreamType;
    }
.end annotation


# virtual methods
.method public abstract bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation
.end method
