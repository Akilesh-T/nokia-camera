.class public interface abstract Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
.super Ljava/lang/Object;
.source "ImageCaptureCommand.java"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# virtual methods
.method public abstract run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation
.end method
