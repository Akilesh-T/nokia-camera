.class public interface abstract Lcom/android/camera/PanoramaController;
.super Ljava/lang/Object;
.source "PanoramaController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


# static fields
.field public static final PANO_FOCUSING:I = 0x3

.field public static final PANO_PREVIEW:I = 0x1

.field public static final PANO_PROGRESS:I = 0x2

.field public static final PANO_STOPPED:I


# virtual methods
.method public abstract cancelAutoFocus()V
.end method

.method public abstract getCameraState()I
.end method

.method public abstract isCameraIdle()Z
.end method

.method public abstract onPreviewUIDestroyed()V
.end method

.method public abstract onPreviewUIReady()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
