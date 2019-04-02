.class public Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;
.super Ljava/lang/Object;
.source "ZslSharedImageReaderFactory.java"


# instance fields
.field private final mAvailableImageCount:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

.field private final mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

.field private final mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mZslCaptureStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;Lcom/android/camera/async/ConcurrentState;)V
    .locals 10
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "imageReader"    # Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    .param p3, "handlerFactory"    # Lcom/android/camera/async/HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/async/HandlerFactory;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "maxRingBufferSize":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/HandlerFactory;)V

    .line 69
    .local v2, "imageDistributorFactory":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;
    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->provideImageDistributor()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    move-result-object v1

    .line 71
    .local v1, "imageDistributor":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorFactory;->provideGlobalTimestampCallback()Lcom/android/camera/async/Updatable;

    move-result-object v0

    .line 75
    .local v0, "globalTimestampQueue":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Long;>;"
    new-instance v5, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    :goto_0
    invoke-direct {v5, v6}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 76
    .local v5, "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    invoke-virtual {p1, v5}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 78
    new-instance v4, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    new-instance v6, Lcom/android/camera/async/Lifetime;

    invoke-direct {v6, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    invoke-direct {v4, v6, v5, p4}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V

    .line 81
    .local v4, "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;

    .line 82
    invoke-virtual {v4}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferInput()Lcom/android/camera/async/BufferQueueController;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;-><init>(Lcom/android/camera/async/BufferQueueController;)V

    .line 84
    .local v3, "metadataPoolFactory":Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;
    new-instance v7, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;

    .line 85
    invoke-virtual {v4}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferOutput()Lcom/android/camera/async/BufferQueue;

    move-result-object v8

    .line 86
    invoke-virtual {v3}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->provideImageQueue()Lcom/android/camera/async/BufferQueueController;

    move-result-object v9

    if-eqz p2, :cond_1

    .line 87
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v6

    :goto_1
    invoke-direct {v7, v8, v9, v1, v6}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V

    iput-object v7, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mZslCaptureStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    .line 88
    iget-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mZslCaptureStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    invoke-virtual {p1, v6}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 90
    invoke-virtual {v3}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 91
    iget-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    invoke-virtual {p1, v6}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 93
    new-instance v7, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    new-instance v8, Lcom/android/camera/async/Lifetime;

    invoke-direct {v8, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    .line 94
    invoke-virtual {v4}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideTicketPool()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    move-result-object v9

    if-eqz p2, :cond_2

    .line 95
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v6

    :goto_2
    invoke-direct {v7, v8, v9, v6, v1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Landroid/view/Surface;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;)V

    iput-object v7, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 97
    invoke-virtual {v4}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideTicketPool()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getAvailableTicketCount()Lcom/android/camera/async/Observable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mAvailableImageCount:Lcom/android/camera/async/Observable;

    .line 101
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/camera/one/v2/core/ResponseListener;

    const/4 v7, 0x0

    .line 102
    invoke-static {v0}, Lcom/android/camera/one/v2/core/ResponseListeners;->forTimestamps(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 103
    invoke-virtual {v3}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;->provideMetadataCallback()Lcom/android/camera/async/Updatable;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFinalMetadata(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v8

    aput-object v8, v6, v7

    .line 101
    invoke-static {v6}, Lcom/android/camera/one/v2/core/ResponseListeners;->forListeners([Lcom/android/camera/one/v2/core/ResponseListener;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    .line 104
    return-void

    .line 75
    .end local v3    # "metadataPoolFactory":Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;
    .end local v4    # "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    .end local v5    # "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 87
    .restart local v3    # "metadataPoolFactory":Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolFactory;
    .restart local v4    # "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    .restart local v5    # "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 95
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method


# virtual methods
.method public provideAvailableImageCount()Lcom/android/camera/async/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mAvailableImageCount:Lcom/android/camera/async/Observable;

    return-object v0
.end method

.method public provideGlobalResponseListener()Lcom/android/camera/one/v2/core/ResponseListener;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mResponseListener:Lcom/android/camera/one/v2/core/ResponseListener;

    return-object v0
.end method

.method public provideMetadataPool()Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    return-object v0
.end method

.method public provideSharedImageReader()Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mSharedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    return-object v0
.end method

.method public provideZSLStream()Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ZslSharedImageReaderFactory;->mZslCaptureStream:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;

    return-object v0
.end method
