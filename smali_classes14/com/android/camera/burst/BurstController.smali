.class public interface abstract Lcom/android/camera/burst/BurstController;
.super Ljava/lang/Object;
.source "BurstController.java"


# virtual methods
.method public abstract buildImageSaverForBurst(Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .param p1    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getBurstIntent()Lcom/android/camera/burst/BurstFacade$BurstIntent;
.end method

.method public abstract getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;
.end method

.method public abstract getCaptureSession()Lcom/android/camera/session/CaptureSession;
.end method

.method public abstract getControllerLocalLifeTime()Lcom/android/camera/async/Lifetime;
.end method

.method public abstract getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
.end method

.method public abstract getEvictionHandler(Lcom/android/camera/async/Lifetime;)Lcom/android/camera/burst/EvictionHandler;
.end method

.method public abstract getImageOrientationDegrees()I
.end method

.method public abstract getInputSurface()Landroid/view/Surface;
.end method

.method public abstract getRecordController()Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isNeedAELock()Z
.end method

.method public abstract isNeedAFLock()Z
.end method

.method public abstract processBurstResults(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/MetadataImage;",
            ">;)V"
        }
    .end annotation
.end method
