.class public interface abstract Lcom/android/camera/one/OneCamera$PictureCallback;
.super Ljava/lang/Object;
.source "OneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/OneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PictureCallback"
.end annotation


# virtual methods
.method public abstract onPictureSaved(Landroid/net/Uri;)V
.end method

.method public abstract onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
.end method

.method public abstract onPictureTakingFailed()V
.end method

.method public abstract onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
.end method

.method public abstract onQuickExpose()V
.end method

.method public abstract onTakePictureProgress(F)V
.end method

.method public abstract onThumbnailResult([B)V
.end method
