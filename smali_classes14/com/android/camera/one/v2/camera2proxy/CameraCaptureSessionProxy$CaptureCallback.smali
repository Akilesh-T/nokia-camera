.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
.super Ljava/lang/Object;
.source "CameraCaptureSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
.end method

.method public abstract onCaptureFailed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
.end method

.method public abstract onCaptureProgressed(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
.end method

.method public abstract onCaptureSequenceAborted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;I)V
.end method

.method public abstract onCaptureSequenceCompleted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;IJ)V
.end method

.method public abstract onCaptureStarted(Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;Landroid/hardware/camera2/CaptureRequest;JJ)V
.end method
