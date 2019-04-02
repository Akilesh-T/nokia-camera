.class public Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;
.super Ljava/lang/Object;
.source "MetadataPoolFactory.java"


# instance fields
.field private final mImageQueue:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/BufferQueueController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "imageQueue":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    invoke-direct {v0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    .line 31
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;-><init>(Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mImageQueue:Lcom/android/camera/async/BufferQueueController;

    .line 32
    return-void
.end method


# virtual methods
.method public provideImageQueue()Lcom/android/camera/async/BufferQueueController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mImageQueue:Lcom/android/camera/async/BufferQueueController;

    return-object v0
.end method

.method public provideMetadataCallback()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    return-object v0
.end method

.method public provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    return-object v0
.end method

.method public provideMetadataPoolImpl()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    return-object v0
.end method
