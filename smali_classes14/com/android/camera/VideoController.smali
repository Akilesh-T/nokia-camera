.class public interface abstract Lcom/android/camera/VideoController;
.super Ljava/lang/Object;
.source "VideoController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# virtual methods
.method public abstract isInReviewMode()Z
.end method

.method public abstract isVideoCaptureIntent()Z
.end method

.method public abstract onPreviewUIDestroyed()V
.end method

.method public abstract onPreviewUIReady()V
.end method

.method public abstract onReviewCancelClicked(Landroid/view/View;)V
.end method

.method public abstract onReviewDoneClicked(Landroid/view/View;)V
.end method

.method public abstract onReviewPlayClicked(Landroid/view/View;)V
.end method

.method public abstract onReviewRetakeClicked(Landroid/view/View;)V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onZoomChanged(F)V
.end method

.method public abstract onZoomClick()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
