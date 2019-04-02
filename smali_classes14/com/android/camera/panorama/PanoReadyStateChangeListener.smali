.class public interface abstract Lcom/android/camera/panorama/PanoReadyStateChangeListener;
.super Ljava/lang/Object;
.source "PanoReadyStateChangeListener.java"

# interfaces
.implements Lcom/android/camera/burst/BurstReadyStateChangeListener;


# virtual methods
.method public abstract onPanoramaFailed(I)V
.end method

.method public abstract onPanoramaHint(I)V
.end method

.method public abstract onPanoramaPreviewFrame(Landroid/graphics/Bitmap;II[II[III)V
.end method

.method public abstract onPanoramaStarted()V
.end method

.method public abstract onPanoramaStarting()V
.end method

.method public abstract onPanoramaStoped(Z)V
.end method

.method public abstract onPanoramaStoping()V
.end method
