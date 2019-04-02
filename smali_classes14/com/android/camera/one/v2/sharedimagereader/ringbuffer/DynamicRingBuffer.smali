.class public final Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;
.super Ljava/lang/Object;
.source "DynamicRingBuffer.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
.implements Lcom/android/camera/async/BufferQueue;
.implements Lcom/android/camera/async/BufferQueueController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;",
        "Lcom/android/camera/async/BufferQueue",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">;",
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
.field private final mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

.field private final mMaxSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mQueue:Lcom/android/camera/async/CountableBufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/CountableBufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueueSize:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

.field private final mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;)V
    .locals 5
    .param p1, "parentTickets"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueueSize:Lcom/android/camera/async/ConcurrentState;

    .line 75
    new-instance v0, Lcom/android/camera/async/CountableBufferQueue;

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueueSize:Lcom/android/camera/async/ConcurrentState;

    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;

    invoke-direct {v2}, Lcom/android/camera/one/v2/sharedimagereader/util/ImageCloser;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/camera/async/CountableBufferQueue;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    .line 76
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/camera/async/Observable;

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueueSize:Lcom/android/camera/async/ConcurrentState;

    aput-object v2, v1, v4

    const/4 v2, 0x1

    .line 77
    invoke-interface {p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getAvailableTicketCount()Lcom/android/camera/async/Observable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 76
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    .line 78
    iput-object p1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .line 79
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mMaxSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 81
    return-void
.end method

.method private shrinkToFitMaxSize()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->freeze()V

    .line 211
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueueSize:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mMaxSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->discardNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 215
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->unfreeze()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->unfreeze()V

    .line 217
    return-void
.end method

.method private tryAcquireLowPriorityTicket()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-interface {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public acquire(I)Ljava/util/Collection;
    .locals 2
    .param p1, "tickets"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool$NoCapacityAvailableException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 164
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->discardNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-interface {v0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->acquire(I)Ljava/util/Collection;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 167
    return-object v0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method public discardNext()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->discardNext()V

    .line 151
    return-void
.end method

.method public getAvailableTicketCount()Lcom/android/camera/async/Observable;
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

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    return-object v0
.end method

.method public getMaxCapability()I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mMaxSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method

.method public getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/async/CountableBufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method

.method public bridge synthetic getNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->getNext(JLjava/util/concurrent/TimeUnit;)Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->isClosed()Z

    move-result v0

    return v0
.end method

.method public peekNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    return-object v0
.end method

.method public bridge synthetic peekNext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->peekNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v0

    return-object v0
.end method

.method public setMaxSize(I)V
    .locals 3
    .param p1, "newMaxSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 194
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mMaxSize:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-interface {v2}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getMaxCapability()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 199
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->shrinkToFitMaxSize()V

    .line 200
    return-void

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0
.end method

.method public tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 184
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/CountableBufferQueue;->discardNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    throw v0

    .line 187
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    invoke-interface {v0}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->tryAcquire()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mTicketWaiterCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 187
    return-object v0
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 3
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 96
    .local v0, "ticket":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->freeze()V

    .line 98
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->tryAcquireLowPriorityTicket()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    move-result-object v0

    .line 99
    if-nez v0, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    invoke-virtual {v1}, Lcom/android/camera/async/CountableBufferQueue;->discardNext()V

    .line 104
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->tryAcquireLowPriorityTicket()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;

    move-result-object v0

    .line 106
    :cond_0
    if-eqz v0, :cond_1

    .line 107
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mQueue:Lcom/android/camera/async/CountableBufferQueue;

    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;

    invoke-direct {v2, p1, v0}, Lcom/android/camera/one/v2/sharedimagereader/util/TicketImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/Ticket;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/CountableBufferQueue;->update(Ljava/lang/Object;)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->shrinkToFitMaxSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->unfreeze()V

    .line 115
    return-void

    .line 109
    :cond_1
    :try_start_1
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->mAvailableTicketCount:Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/AvailableTicketCounter;->unfreeze()V

    throw v1
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 58
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->update(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    return-void
.end method
