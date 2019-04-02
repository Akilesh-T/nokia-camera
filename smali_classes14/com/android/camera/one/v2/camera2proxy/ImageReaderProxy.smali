.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
.super Ljava/lang/Object;
.source "ImageReaderProxy.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract acquireLatestImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getImageFormat()I
.end method

.method public abstract getMaxImages()I
.end method

.method public abstract getSurface()Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getWidth()I
.end method

.method public abstract setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V
    .param p1    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Handler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method
