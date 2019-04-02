.class public Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;
.super Ljava/lang/Object;
.source "ImageDistributorFactory.java"


# instance fields
.field private final mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

.field private final mTimestampStream:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V
    .locals 4
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-direct {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;-><init>()V

    .line 44
    .local v0, "globalTimestampStream":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<Ljava/lang/Long;>;"
    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mTimestampStream:Lcom/android/camera/async/Updatable;

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 46
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;-><init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/BufferQueue;)V

    iput-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    .line 47
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    invoke-virtual {p1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 52
    const-string v2, "ImageDistributor"

    const/16 v3, 0xa

    invoke-virtual {p3, p1, v2, v3}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    .line 55
    .local v1, "imageReaderHandler":Landroid/os/Handler;
    if-eqz p2, :cond_0

    .line 56
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;

    iget-object v3, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    invoke-direct {v2, p2, v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorOnImageAvailableListener;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;)V

    invoke-interface {p2, v2, v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 58
    :cond_0
    return-void
.end method


# virtual methods
.method public provideGlobalTimestampCallback()Lcom/android/camera/async/Updatable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mTimestampStream:Lcom/android/camera/async/Updatable;

    return-object v0
.end method

.method public provideImageDistributor()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;

    return-object v0
.end method
