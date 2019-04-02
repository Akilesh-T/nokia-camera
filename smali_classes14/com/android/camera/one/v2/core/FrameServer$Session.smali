.class public interface abstract Lcom/android/camera/one/v2/core/FrameServer$Session;
.super Ljava/lang/Object;
.source "FrameServer.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/core/FrameServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Session"
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# virtual methods
.method public abstract abortCaptures()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract isConstrainedHighSpeedSession()Z
.end method

.method public abstract isReprocessable()Z
.end method

.method public abstract stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/core/Request;",
            ">;",
            "Lcom/android/camera/one/v2/core/FrameServer$RequestType;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation
.end method
