.class public final Lcom/android/camera/one/v2/imagesaver/MetadataImage;
.super Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;
.source "MetadataImage.java"


# instance fields
.field private final mImgName:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadata:Lcom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mNeedThumbnail:Z


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    .locals 0
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p3, "needThumbnail"    # Z
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
    .line 41
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p4, "imageName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/camera2proxy/ForwardingImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 42
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 43
    iput-boolean p3, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mNeedThumbnail:Z

    .line 44
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mImgName:Lcom/google/common/base/Optional;

    .line 45
    return-void
.end method


# virtual methods
.method public getImgName()Lcom/google/common/base/Optional;
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
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mImgName:Lcom/google/common/base/Optional;

    return-object v0
.end method

.method public getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mMetadata:Lcom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method public isNeedThumbnail()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/MetadataImage;->mNeedThumbnail:Z

    return v0
.end method
