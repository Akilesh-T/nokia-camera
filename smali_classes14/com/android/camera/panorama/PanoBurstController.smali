.class public Lcom/android/camera/panorama/PanoBurstController;
.super Ljava/lang/Object;
.source "PanoBurstController.java"

# interfaces
.implements Lcom/android/camera/burst/BurstController;


# instance fields
.field private final mBurstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

.field private final mCaptureSession:Lcom/android/camera/session/CaptureSession;

.field private final mDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mImageOrientationDegrees:I


# direct methods
.method public constructor <init>(Lcom/android/camera/burst/BurstResultsListener;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;I)V
    .locals 0
    .param p1, "burstResultsListener"    # Lcom/android/camera/burst/BurstResultsListener;
    .param p2, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "imageOrientationDegrees"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/camera/panorama/PanoBurstController;->mBurstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    .line 39
    iput-object p2, p0, Lcom/android/camera/panorama/PanoBurstController;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    .line 40
    iput-object p3, p0, Lcom/android/camera/panorama/PanoBurstController;->mDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 41
    iput p4, p0, Lcom/android/camera/panorama/PanoBurstController;->mImageOrientationDegrees:I

    .line 42
    return-void
.end method


# virtual methods
.method public buildImageSaverForBurst(Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .locals 3
    .param p1, "imageSaverBuilder"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/camera/panorama/PanoBurstController;->mDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p0, Lcom/android/camera/panorama/PanoBurstController;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {p1, v0, v1, v2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver$Builder;->build(Lcom/android/camera/one/OneCamera$PictureSaverCallback;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/session/CaptureSession;)Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    move-result-object v0

    return-object v0
.end method

.method public getBurstIntent()Lcom/android/camera/burst/BurstFacade$BurstIntent;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/camera/burst/BurstFacade$BurstIntent;->PANORAMA:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    return-object v0
.end method

.method public getBurstResultsListener()Lcom/android/camera/burst/BurstResultsListener;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/panorama/PanoBurstController;->mBurstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    return-object v0
.end method

.method public getCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/panorama/PanoBurstController;->mCaptureSession:Lcom/android/camera/session/CaptureSession;

    return-object v0
.end method

.method public getControllerLocalLifeTime()Lcom/android/camera/async/Lifetime;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/panorama/PanoBurstController;->mDeviceOrientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public getEvictionHandler(Lcom/android/camera/async/Lifetime;)Lcom/android/camera/burst/EvictionHandler;
    .locals 1
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    new-instance v0, Lcom/android/camera/burst/EvictionHandlerImp;

    invoke-direct {v0}, Lcom/android/camera/burst/EvictionHandlerImp;-><init>()V

    .line 47
    .local v0, "handler":Lcom/android/camera/burst/EvictionHandler;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 48
    return-object v0
.end method

.method public getImageOrientationDegrees()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/panorama/PanoBurstController;->mImageOrientationDegrees:I

    return v0
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPanoramaCallback()Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/panorama/PanoBurstController;->mBurstResultsListener:Lcom/android/camera/burst/BurstResultsListener;

    check-cast v0, Lcom/android/camera/panorama/PanoramaResultsListener;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaResultsListener;->getPanoramaCallback()Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    move-result-object v0

    return-object v0
.end method

.method public getRecordController()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNeedAELock()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public isNeedAFLock()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public processBurstResults(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/imagesaver/MetadataImage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "capturedImages":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    .line 55
    .local v0, "image":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    invoke-virtual {v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->close()V

    goto :goto_0

    .line 58
    .end local v0    # "image":Lcom/android/camera/one/v2/imagesaver/MetadataImage;
    :cond_0
    return-void
.end method
