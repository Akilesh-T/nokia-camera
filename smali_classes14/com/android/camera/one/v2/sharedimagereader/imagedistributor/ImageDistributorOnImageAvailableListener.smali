.class Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;
.super Ljava/lang/Object;
.source "ImageDistributorOnImageAvailableListener.java"

# interfaces
.implements Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

.field private final mImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;)V
    .locals 0
    .param p1, "imageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p2, "imageDistributor"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    .line 41
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;->mImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 42
    return-void
.end method


# virtual methods
.method public onImageAvailable()V
    .locals 3

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;->mImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->acquireNextImage()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    .line 47
    .local v0, "nextImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eqz v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->distributeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 50
    :cond_0
    return-void
.end method
