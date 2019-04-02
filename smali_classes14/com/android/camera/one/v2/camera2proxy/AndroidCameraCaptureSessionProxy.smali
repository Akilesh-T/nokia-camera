.class public Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;
.super Ljava/lang/Object;
.source "AndroidCameraCaptureSessionProxy.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;
    }
.end annotation


# instance fields
.field private final mIsConstrainedHighSpeedSession:Z

.field private final mIsReprocessable:Z

.field private final mSession:Landroid/hardware/camera2/CameraCaptureSession;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCaptureSession;ZZ)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "isReprocessable"    # Z
    .param p3, "isConstrainedHighSpeedSession"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 90
    iput-boolean p2, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mIsReprocessable:Z

    .line 91
    iput-boolean p3, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mIsConstrainedHighSpeedSession:Z

    .line 92
    return-void
.end method


# virtual methods
.method public abortCaptures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;)V

    invoke-virtual {v1, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public captureBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p2, "listener"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
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

    .prologue
    .line 117
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;)V

    invoke-virtual {v1, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public close()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 126
    return-void
.end method

.method public createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
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

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mIsConstrainedHighSpeedSession:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast v0, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevice()Lcom/android/camera/one/v2/camera2proxy/CameraDeviceProxy;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;

    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getDevice()Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraDeviceProxy;-><init>(Landroid/hardware/camera2/CameraDevice;)V

    return-object v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public isConstrainedHighSpeedSession()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mIsConstrainedHighSpeedSession:Z

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mIsReprocessable:Z

    return v0
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CameraCaptureSession;->prepare(Landroid/view/Surface;)V

    .line 189
    return-void
.end method

.method public setRepeatingBurst(Ljava/util/List;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p2, "listener"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
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

    .prologue
    .line 137
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;)V

    invoke-virtual {v1, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Landroid/os/Handler;)I
    .locals 4
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "listener"    # Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3}, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$AndroidCaptureCallback;-><init>(Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionProxy$CaptureCallback;Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy$1;)V

    invoke-virtual {v1, p1, v2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopRepeating()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;
        }
    .end annotation

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/camera2proxy/AndroidCameraCaptureSessionProxy;->mSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
