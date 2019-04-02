.class public interface abstract Lcom/android/camera/ui/focus/FocusRing;
.super Ljava/lang/Object;
.source "FocusRing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;,
        Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
    }
.end annotation


# virtual methods
.method public abstract centerFocusLocation()V
.end method

.method public abstract configurePreviewDimensions(Landroid/graphics/RectF;)V
.end method

.method public abstract isActiveFocusRunning()Z
.end method

.method public abstract isPassiveFocusRunning()Z
.end method

.method public abstract isTouchExposureInProgress()Z
.end method

.method public abstract onExternalTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract setFocusLocation(FF)V
.end method

.method public abstract setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V
.end method

.method public abstract setOrientation(I)V
.end method

.method public abstract setRadiusRatio(F)V
.end method

.method public abstract setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V
.end method

.method public abstract startActiveFocus()V
.end method

.method public abstract startPassiveFocus()V
.end method

.method public abstract stopFocusAnimations()V
.end method
