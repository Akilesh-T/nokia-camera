.class public interface abstract Lcom/android/camera/PIPPhotoController;
.super Ljava/lang/Object;
.source "PIPPhotoController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;
.implements Lcom/android/camera/pip/opengl/gesture/AbstractGesture;


# static fields
.field public static final FOCUSING:I = 0x2

.field public static final IDLE:I = 0x1

.field public static final PREVIEW_STOPPED:I = 0x0

.field public static final SNAPSHOT_IN_PROGRESS:I = 0x3

.field public static final SWITCHING_CAMERA:I = 0x4


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

.method public abstract startPreCaptureAnimation()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
