.class public interface abstract Lcom/android/camera/ui/PreviewStatusListener;
.super Ljava/lang/Object;
.source "PreviewStatusListener.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/PreviewStatusListener$PreviewAspectRatioChangedListener;,
        Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;
    }
.end annotation


# virtual methods
.method public abstract getGestureListener()Landroid/view/GestureDetector$OnGestureListener;
.end method

.method public abstract getScaleGestureListener()Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.end method

.method public abstract getTouchListener()Landroid/view/View$OnTouchListener;
.end method

.method public abstract onPreviewFlipped()V
.end method

.method public abstract onPreviewLayoutChanged(Landroid/view/View;IIIIIIII)V
.end method

.method public abstract shouldAutoAdjustTransformMatrixOnLayout()Z
.end method

.method public abstract useModuleListenerFirst()Z
.end method
