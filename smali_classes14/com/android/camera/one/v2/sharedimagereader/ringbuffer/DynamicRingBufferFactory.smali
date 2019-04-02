.class public Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
.super Ljava/lang/Object;
.source "DynamicRingBufferFactory.java"


# instance fields
.field private final mOutputTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

.field private final mRingBufferInput:Lcom/android/camera/async/BufferQueueController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mRingBufferOutput:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p2, "rootTicketPool"    # Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, "maxRingBufferSize":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;

    invoke-direct {v0, p2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;)V

    .line 48
    .local v0, "ringBuffer":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;
    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 49
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory$1;-><init>(Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;Lcom/android/camera/async/Observable;)V

    .line 54
    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->sameThreadExecutor()Lcom/google/common/util/concurrent/ListeningExecutorService;

    move-result-object v2

    .line 49
    invoke-interface {p3, v1, v2}, Lcom/android/camera/async/Observable;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 55
    const/4 v2, 0x0

    invoke-interface {p3}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBuffer;->setMaxSize(I)V

    .line 57
    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mOutputTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    .line 58
    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mRingBufferInput:Lcom/android/camera/async/BufferQueueController;

    .line 59
    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mRingBufferOutput:Lcom/android/camera/async/BufferQueue;

    .line 60
    return-void
.end method


# virtual methods
.method public provideRingBufferInput()Lcom/android/camera/async/BufferQueueController;
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
    .line 67
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mRingBufferInput:Lcom/android/camera/async/BufferQueueController;

    return-object v0
.end method

.method public provideRingBufferOutput()Lcom/android/camera/async/BufferQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mRingBufferOutput:Lcom/android/camera/async/BufferQueue;

    return-object v0
.end method

.method public provideTicketPool()Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->mOutputTicketPool:Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;

    return-object v0
.end method
