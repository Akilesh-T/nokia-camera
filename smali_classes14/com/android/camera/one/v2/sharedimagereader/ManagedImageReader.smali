.class public Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
.super Ljava/lang/Object;
.source "ManagedImageReader.java"


# instance fields
.field private final mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

.field private final mLifetime:Lcom/android/camera/async/Lifetime;

.field private final mSurface:Landroid/view/Surface;

.field private final mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Landroid/view/Surface;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;)V
    .locals 0
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "ticketPool"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    .param p3, "surface"    # Landroid/view/Surface;
    .param p4, "imageDistributor"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mLifetime:Lcom/android/camera/async/Lifetime;

    .line 91
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .line 92
    iput-object p3, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mSurface:Landroid/view/Surface;

    .line 93
    iput-object p4, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    .line 94
    return-void
.end method

.method private createUnallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;
    .locals 8
    .param p1, "capacity"    # I

    .prologue
    .line 97
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-direct {v3, v1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;)V

    .line 99
    .local v3, "ticketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
    new-instance v4, Lcom/android/camera/async/ConcurrentBufferQueue;

    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;

    invoke-direct {v1}, Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;-><init>()V

    invoke-direct {v4, v1}, Lcom/android/camera/async/ConcurrentBufferQueue;-><init>(Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    .line 102
    .local v4, "imageStream":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v5, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;

    invoke-direct {v5, v3, v4}, Lcom/android/camera/one/v2/sharedimagereader/TicketRequiredFilter;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketProvider;Lcom/android/camera/async/BufferQueueController;)V

    .line 105
    .local v5, "imageStreamController":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mLifetime:Lcom/android/camera/async/Lifetime;

    iget-object v6, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mImageDistributor:Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;

    iget-object v7, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mSurface:Landroid/view/Surface;

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;-><init>(Lcom/android/camera/async/Lifetime;ILcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V

    .line 107
    .local v0, "stream":Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->mLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 109
    return-object v0
.end method


# virtual methods
.method public createPreallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .locals 2
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createUnallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;

    move-result-object v1

    .line 149
    .local v1, "stream":Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;
    :try_start_0
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->allocate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->close()V

    .line 154
    throw v0
.end method

.method public createStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createUnallocatedStream(I)Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;

    move-result-object v0

    return-object v0
.end method
