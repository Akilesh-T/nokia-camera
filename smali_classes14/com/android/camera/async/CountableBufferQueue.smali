.class public Lcom/android/camera/async/CountableBufferQueue;
.super Ljava/lang/Object;
.source "CountableBufferQueue.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueueController;
.implements Lcom/android/camera/async/BufferQueue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueueController",
        "<TT;>;",
        "Lcom/android/camera/async/BufferQueue",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentBufferQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mCount:I

.field private final mCountLock:Ljava/lang/Object;

.field private final mSizeCallback:Lcom/android/camera/async/Updatable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    .local p1, "sizeCallback":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    new-instance v0, Lcom/android/camera/async/CountableBufferQueue$1;

    invoke-direct {v0}, Lcom/android/camera/async/CountableBufferQueue$1;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/camera/async/CountableBufferQueue;-><init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Updatable;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    .local p1, "sizeCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Integer;>;"
    .local p2, "processor":Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;, "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue;

    new-instance v1, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, v2}, Lcom/android/camera/async/CountableBufferQueue$DecrementingProcessor;-><init>(Lcom/android/camera/async/CountableBufferQueue;Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;Lcom/android/camera/async/CountableBufferQueue$1;)V

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentBufferQueue;-><init>(Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    iput-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mCountLock:Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 60
    iput-object p1, p0, Lcom/android/camera/async/CountableBufferQueue;->mSizeCallback:Lcom/android/camera/async/Updatable;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/CountableBufferQueue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/async/CountableBufferQueue;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/async/CountableBufferQueue;->decrementSize()V

    return-void
.end method

.method private decrementSize()V
    .locals 3

    .prologue
    .line 74
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v2, p0, Lcom/android/camera/async/CountableBufferQueue;->mCountLock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    iget v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 76
    iget v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 77
    .local v0, "count":I
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    iget-object v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mSizeCallback:Lcom/android/camera/async/Updatable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 79
    return-void

    .line 77
    .end local v0    # "count":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 128
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->close()V

    .line 129
    return-void
.end method

.method public discardNext()V
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->discardNext()V

    .line 104
    return-void
.end method

.method public getNext()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentBufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/android/camera/async/CountableBufferQueue;->decrementSize()V

    .line 85
    return-object v0
.end method

.method public getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/camera/async/ConcurrentBufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "result":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/android/camera/async/CountableBufferQueue;->decrementSize()V

    .line 93
    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->isClosed()Z

    move-result v0

    return v0
.end method

.method public peekNext()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public update(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lcom/android/camera/async/CountableBufferQueue;, "Lcom/android/camera/async/CountableBufferQueue<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/android/camera/async/CountableBufferQueue;->mCountLock:Ljava/lang/Object;

    monitor-enter v3

    .line 116
    :try_start_0
    iget v1, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 117
    .local v1, "preCount":I
    iget v2, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 118
    iget-object v2, p0, Lcom/android/camera/async/CountableBufferQueue;->mBufferQueue:Lcom/android/camera/async/ConcurrentBufferQueue;

    invoke-virtual {v2, p1}, Lcom/android/camera/async/ConcurrentBufferQueue;->update(Ljava/lang/Object;)V

    .line 119
    iget v0, p0, Lcom/android/camera/async/CountableBufferQueue;->mCount:I

    .line 120
    .local v0, "postCount":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    if-eq v1, v0, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/camera/async/CountableBufferQueue;->mSizeCallback:Lcom/android/camera/async/Updatable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 124
    :cond_0
    return-void

    .line 120
    .end local v0    # "postCount":I
    .end local v1    # "preCount":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
