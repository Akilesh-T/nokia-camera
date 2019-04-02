.class public interface abstract Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
.super Ljava/lang/Object;
.source "ImageDistributor.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract addRoute(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation
.end method
