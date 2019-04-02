.class public interface abstract Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
.super Ljava/lang/Object;
.source "ManualAutoFocus.java"

# interfaces
.implements Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;


# virtual methods
.method public abstract getFocusAreaPoint()Landroid/graphics/PointF;
.end method

.method public abstract onShutter()Z
.end method

.method public abstract resetFocusAndMeterArea()V
.end method

.method public abstract triggerFocusAndMeterAtPoint(FF)V
.end method
