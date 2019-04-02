.class public Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;
.super Ljava/lang/Object;
.source "BurstImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/ImageSaver;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;)V
    .locals 0
    .param p1, "singleImageSaver"    # Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;

    .line 40
    return-void
.end method


# virtual methods
.method public addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;->addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v0

    return v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    .locals 1
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p3, "isNeedThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    .line 64
    return-void
.end method

.method public addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    .locals 6
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p3, "isNeedThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p4, "imgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;->saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    .line 69
    return-void
.end method

.method public addRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 53
    return-void
.end method

.method public addThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 2
    .param p1, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 45
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Should not use this API"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;->close()V

    .line 79
    return-void
.end method

.method public getCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public prepareImgName()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/BurstImageSaver;->mMultiImageSaver:Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;

    invoke-interface {v0}, Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;->prepareImgName()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method
