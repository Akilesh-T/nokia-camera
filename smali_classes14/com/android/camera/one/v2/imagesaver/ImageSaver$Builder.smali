.class public interface abstract Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
.super Ljava/lang/Object;
.source "ImageSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/ImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract build(Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
.end method

.method public abstract buildForBusrt(Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
.end method

.method public abstract updatePostCaptureCrop(Landroid/graphics/Rect;)V
.end method
