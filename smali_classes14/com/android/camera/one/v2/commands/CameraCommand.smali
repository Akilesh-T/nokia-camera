.class public interface abstract Lcom/android/camera/one/v2/commands/CameraCommand;
.super Ljava/lang/Object;
.source "CameraCommand.java"


# virtual methods
.method public abstract run()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation
.end method
