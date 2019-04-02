.class Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;
.super Lcom/android/camera/async/ForwardingBufferQueue;
.source "ImageStreamImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/async/ForwardingBufferQueue",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;",
        "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;"
    }
.end annotation


# instance fields
.field private final mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

.field private final mImageStreamController:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mImgCalbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLifetime:Lcom/android/camera/async/Lifetime;

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V
    .locals 2
    .param p3, "imageDistributor"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    .param p4, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;",
            "Landroid/view/Surface;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "imageStream":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p2, "imageStreamController":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-direct {p0, p1}, Lcom/android/camera/async/ForwardingBufferQueue;-><init>(Lcom/android/camera/async/BufferQueue;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImgCalbackMap:Ljava/util/HashMap;

    .line 52
    iput-object p4, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mSurface:Landroid/view/Surface;

    .line 53
    iput-object p3, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    .line 54
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl$1;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;Lcom/android/camera/async/BufferQueueController;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImageStreamController:Lcom/android/camera/async/BufferQueueController;

    .line 74
    new-instance v0, Lcom/android/camera/async/Lifetime;

    invoke-direct {v0}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mLifetime:Lcom/android/camera/async/Lifetime;

    .line 75
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0, p1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 76
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-virtual {v0, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImgCalbackMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public addImageCallback(JLjava/lang/Runnable;)V
    .locals 3
    .param p1, "timestamp"    # J
    .param p3, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImgCalbackMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    return-void
.end method

.method public bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/Surface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "timestamps":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0, p1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 83
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImageStreamController:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v0, p1, v1}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;->addRoute(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;)V

    .line 84
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mImgCalbackMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 90
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 91
    return-void
.end method

.method public bridge synthetic getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/camera/async/ForwardingBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method

.method public bridge synthetic getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/async/ForwardingBufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method

.method public isDummy()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic peekNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcom/android/camera/async/ForwardingBufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method
