.class public interface abstract Lcom/android/camera/ManualController;
.super Ljava/lang/Object;
.source "ManualController.java"

# interfaces
.implements Lcom/android/camera/ShutterButton$OnShutterButtonListener;


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

.method public abstract getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCameraIdle()Z
.end method

.method public abstract onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onPreviewUIDestroyed()V
.end method

.method public abstract onPreviewUIReady()V
.end method

.method public abstract onSingleTapUp(Landroid/view/View;II)V
.end method

.method public abstract onZoomChanged(F)V
.end method

.method public abstract startPreCaptureAnimation()V
.end method

.method public abstract stopPreview()V
.end method

.method public abstract updateCameraOrientation()V
.end method

.method public abstract updatePreviewAspectRatio(F)V
.end method
