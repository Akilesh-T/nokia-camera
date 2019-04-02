.class public interface abstract Lcom/android/camera/burst/EvictionHandler;
.super Ljava/lang/Object;
.source "EvictionHandler.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# virtual methods
.method public abstract onFrameCaptureResultAvailable(JLandroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onFrameDropped(J)V
.end method

.method public abstract onFrameInserted(J)V
.end method

.method public abstract selectFrameToDrop()J
.end method
