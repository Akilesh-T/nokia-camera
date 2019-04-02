.class public Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;
.super Ljava/lang/Object;
.source "MetadataReleasingImageQueue.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueueController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueueController",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# instance fields
.field private final mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

.field private final mOutputQueue:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;)V
    .locals 0
    .param p2, "metadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "outputQueue":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mOutputQueue:Lcom/android/camera/async/BufferQueueController;

    .line 57
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;)Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mOutputQueue:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->close()V

    .line 68
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mOutputQueue:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v0

    return v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 2
    .param p1, "element"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->mOutputQueue:Lcom/android/camera/async/BufferQueueController;

    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue$MetadataReleasingImageProxy;-><init>(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    invoke-interface {v0, v1}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    .line 63
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 32
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataReleasingImageQueue;->update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    return-void
.end method
