.class public Lcom/android/camera/async/ConcurrentBufferQueue;
.super Ljava/lang/Object;
.source "ConcurrentBufferQueue.java"

# interfaces
.implements Lcom/android/camera/async/BufferQueue;
.implements Lcom/android/camera/async/BufferQueueController;
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/async/ConcurrentBufferQueue$Entry;,
        Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/BufferQueue",
        "<TT;>;",
        "Lcom/android/camera/async/BufferQueueController",
        "<TT;>;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mLock:Ljava/lang/Object;

.field private final mQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/camera/async/ConcurrentBufferQueue$Entry",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final mUnusedElementProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue$1;

    invoke-direct {v0}, Lcom/android/camera/async/ConcurrentBufferQueue$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/camera/async/ConcurrentBufferQueue;-><init>(Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    .local p1, "unusedElementProcessor":Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;, "Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mUnusedElementProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mLock:Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    return-void
.end method

.method private doWithNextEntry(Lcom/android/camera/async/ConcurrentBufferQueue$Entry;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentBufferQueue$Entry",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    .local p1, "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    invoke-virtual {p1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v0, Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;

    invoke-direct {v0}, Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;-><init>()V

    throw v0

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private makeClosingMarker()Lcom/android/camera/async/ConcurrentBufferQueue$Entry;
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    const/4 v2, 0x0

    .line 223
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1, v2}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;ZLcom/android/camera/async/ConcurrentBufferQueue$1;)V

    return-object v0
.end method

.method private makeEntry(Ljava/lang/Object;)Lcom/android/camera/async/ConcurrentBufferQueue$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/android/camera/async/ConcurrentBufferQueue$Entry;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;-><init>(Ljava/lang/Object;ZLcom/android/camera/async/ConcurrentBufferQueue$1;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 111
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v2, "remainingElements":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;>;"
    iget-object v4, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 116
    .local v0, "alreadyClosed":Z
    if-eqz v0, :cond_1

    .line 117
    monitor-exit v4

    .line 140
    :cond_0
    return-void

    .line 120
    :cond_1
    iget-object v3, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->drainTo(Ljava/util/Collection;)I

    .line 130
    :goto_0
    iget-object v3, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 131
    iget-object v3, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0}, Lcom/android/camera/async/ConcurrentBufferQueue;->makeClosingMarker()Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 133
    .end local v0    # "alreadyClosed":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "alreadyClosed":Z
    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    .line 136
    .local v1, "entry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mUnusedElementProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public discardNext()V
    .locals 4

    .prologue
    .line 198
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    .line 199
    .local v1, "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    iget-object v2, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 211
    .end local v1    # "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    :goto_0
    return-void

    .line 205
    .restart local v1    # "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    :cond_0
    iget-object v2, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mUnusedElementProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-virtual {v1}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v1    # "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/util/NoSuchElementException;
    goto :goto_0
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
    .line 169
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    .line 170
    .local v0, "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    invoke-direct {p0, v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->doWithNextEntry(Lcom/android/camera/async/ConcurrentBufferQueue$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
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
    .line 176
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    .line 177
    .local v0, "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    if-nez v0, :cond_0

    .line 178
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1

    .line 180
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/camera/async/ConcurrentBufferQueue;->doWithNextEntry(Lcom/android/camera/async/ConcurrentBufferQueue$Entry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 215
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    iget-object v0, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public peekNext()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    const/4 v1, 0x0

    .line 185
    iget-object v2, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    .line 186
    .local v0, "nextEntry":Lcom/android/camera/async/ConcurrentBufferQueue$Entry;, "Lcom/android/camera/async/ConcurrentBufferQueue$Entry<TT;>;"
    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object v1

    .line 188
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->isClosingMarker()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentBufferQueue$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
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
    .line 144
    .local p0, "this":Lcom/android/camera/async/ConcurrentBufferQueue;, "Lcom/android/camera/async/ConcurrentBufferQueue<TT;>;"
    .local p1, "element":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    .line 145
    .local v0, "closed":Z
    iget-object v2, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 147
    if-nez v0, :cond_0

    .line 148
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct {p0, p1}, Lcom/android/camera/async/ConcurrentBufferQueue;->makeEntry(Ljava/lang/Object;)Lcom/android/camera/async/ConcurrentBufferQueue$Entry;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v1, p0, Lcom/android/camera/async/ConcurrentBufferQueue;->mUnusedElementProcessor:Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;

    invoke-interface {v1, p1}, Lcom/android/camera/async/ConcurrentBufferQueue$UnusedElementProcessor;->process(Ljava/lang/Object;)V

    .line 154
    :cond_1
    return-void

    .line 150
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
