.class public interface abstract Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;
.super Ljava/lang/Object;
.source "CameraCaptureSessionProxy.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$StateCallback;,
        Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    }
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

.method public abstract capture(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract captureBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract close()V
.end method

.method public abstract createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .param p1    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation
.end method

.method public abstract getDevice()Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract isConstrainedHighSpeedSession()Z
.end method

.method public abstract isReprocessable()Z
.end method

.method public abstract prepare(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setRepeatingBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method

.method public abstract stopRepeating()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation
.end method
