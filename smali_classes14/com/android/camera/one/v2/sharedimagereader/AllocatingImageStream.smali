.class Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;
.super Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;
.source "AllocatingImageStream.java"


# instance fields
.field private mAllocated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCapacity:I

.field private mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mParentLifeTime:Lcom/android/camera/async/Lifetime;

.field private final mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;ILcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V
    .locals 2
    .param p1, "parentLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "capacity"    # I
    .param p3, "ticketPool"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;
    .param p6, "imageDistributor"    # Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;
    .param p7, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "I",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;",
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
    .local p4, "imageStream":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p5, "imageStreamController":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0, p4, p5, p6, p7}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;Landroid/view/Surface;)V

    .line 63
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mParentLifeTime:Lcom/android/camera/async/Lifetime;

    .line 64
    iput p2, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mCapacity:I

    .line 65
    iput-object p3, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mAllocated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    return-void
.end method


# virtual methods
.method public allocate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mAllocated:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    iget v2, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mCapacity:I

    invoke-virtual {v1, v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->reserveCapacity(I)V
    :try_end_0
    .catch Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
    new-instance v1, Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;

    invoke-direct {v1, v0}, Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;
    .locals 1
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
    .line 83
    .local p1, "timestamps":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->allocate()V

    .line 84
    invoke-super {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->bind(Lcom/android/camera/async/BufferQueue;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mParentLifeTime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0, p0}, Lcom/android/camera/async/Lifetime;->remove(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 94
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/AllocatingImageStream;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/ReservableTicketPool;->close()V

    .line 95
    invoke-super {p0}, Lcom/android/camera/one/v2/sharedimagereader/ImageStreamImpl;->close()V

    goto :goto_0
.end method
