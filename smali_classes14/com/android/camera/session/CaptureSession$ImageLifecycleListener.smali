.class public interface abstract Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;
.super Ljava/lang/Object;
.source "CaptureSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/session/CaptureSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageLifecycleListener"
.end annotation


# virtual methods
.method public abstract onCaptureCanceled()V
.end method

.method public abstract onCaptureFailed()V
.end method

.method public abstract onCapturePersisted()V
.end method

.method public abstract onCaptureStarted()V
.end method

.method public abstract onMediumThumb()V
.end method

.method public abstract onPostProcessImage()V
.end method

.method public abstract onProcessingComplete()V
.end method

.method public abstract onProcessingStarted()V
.end method

.method public abstract onRawImage()V
.end method

.method public abstract onTinyThumb()V
.end method
