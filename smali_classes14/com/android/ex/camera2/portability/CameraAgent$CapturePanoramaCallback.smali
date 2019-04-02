.class public interface abstract Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ex/camera2/portability/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CapturePanoramaCallback"
.end annotation


# virtual methods
.method public abstract getImgOrientation()I
.end method

.method public abstract onPanoramaCompleted()V
.end method

.method public abstract onPanoramaFailed(I)V
.end method

.method public abstract onPanoramaPictureTaken([B)V
.end method

.method public abstract onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
.end method

.method public abstract onPanoramaStarted()V
.end method

.method public abstract onPanoramaWarning(I)V
.end method
