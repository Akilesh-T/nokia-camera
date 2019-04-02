.class public Lcom/android/camera/util/ConcurrentSharedRingBuffer;
.super Ljava/lang/Object;
.source "ConcurrentSharedRingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;,
        Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;,
        Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;,
        Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;,
        Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCapacitySemaphore:Ljava/util/concurrent/Semaphore;

.field private mClosed:Z

.field private mElements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

.field private mPinStateHandler:Landroid/os/Handler;

.field private mPinStateListener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

.field private final mSwapLock:Ljava/lang/Object;

.field private mUnpinnedElements:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CncrrntShrdRingBuf"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mSwapLock:Ljava/lang/Object;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    .line 176
    iput-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateHandler:Landroid/os/Handler;

    .line 177
    iput-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateListener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    .line 185
    if-gtz p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capacity must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    .line 190
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    .line 191
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, p1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mCapacitySemaphore:Ljava/util/concurrent/Semaphore;

    .line 195
    new-instance v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    .line 196
    return-void
.end method

.method private notifyPinStateChange(Z)V
    .locals 4
    .param p1, "pinsAvailable"    # Z

    .prologue
    .line 622
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 625
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateListener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    .line 626
    .local v0, "listener":Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$1;-><init>(Lcom/android/camera/util/ConcurrentSharedRingBuffer;Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    .end local v0    # "listener":Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;
    :cond_0
    monitor-exit v2

    .line 634
    return-void

    .line 633
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close(Lcom/android/camera/util/Task;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Task",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 495
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    .local p1, "task":Lcom/android/camera/util/Task;, "Lcom/android/camera/util/Task<TE;>;"
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mSwapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 496
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    .line 498
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    iget-object v5, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    sub-int v1, v2, v5

    .line 499
    .local v1, "numPinnedElements":I
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 502
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->notifyPinStateChange(Z)V

    .line 505
    if-lez v1, :cond_0

    .line 506
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v2, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->acquire(I)V

    .line 509
    :cond_0
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .line 510
    .local v0, "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    invoke-static {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$000(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/android/camera/util/Task;->run(Ljava/lang/Object;)V

    .line 512
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mCapacitySemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 499
    .end local v0    # "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    .end local v1    # "numPinnedElements":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    .line 500
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 515
    .restart local v1    # "numPinnedElements":I
    :cond_1
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 517
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->clear()V

    .line 518
    return-void
.end method

.method public release(J)V
    .locals 5
    .param p1, "key"    # J

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    const/4 v4, 0x1

    .line 381
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .line 386
    .local v0, "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    if-nez v0, :cond_0

    .line 387
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No entry found for the given key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 409
    .end local v0    # "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 391
    .restart local v0    # "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Calling release() with unpinned element."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    invoke-static {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$210(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)I

    .line 398
    invoke-static {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 400
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->release()V

    .line 405
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->availablePermits()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 406
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->notifyPinStateChange(Z)V

    .line 409
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    return-void
.end method

.method public releaseAll()V
    .locals 8

    .prologue
    .line 606
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mSwapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 607
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 608
    :try_start_1
    iget-boolean v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    .line 609
    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-ne v1, v4, :cond_1

    .line 610
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 619
    :goto_0
    return-void

    .line 612
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 613
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    invoke-static {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 614
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    goto :goto_1

    .line 617
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 618
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 617
    :cond_3
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 618
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public releaseIfPinned(J)V
    .locals 5
    .param p1, "key"    # J

    .prologue
    .line 587
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 588
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .line 590
    .local v0, "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    if-nez v0, :cond_0

    .line 591
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    .end local v0    # "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 594
    .restart local v0    # "element":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 595
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    .line 597
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    return-void
.end method

.method public reopenBuffer(I)V
    .locals 4
    .param p1, "unpinnedReservedSlotCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 557
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mCapacitySemaphore:Ljava/util/concurrent/Semaphore;

    .line 558
    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid unpinned reserved slot count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mSwapLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 566
    :try_start_1
    iget-boolean v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-nez v0, :cond_2

    .line 567
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Attempt to reopen the buffer when it is not closed."

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 575
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 571
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->drainPermits()I

    .line 572
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v0, p1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->reducePermits(I)V

    .line 573
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    .line 574
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 575
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 576
    return-void
.end method

.method public setListener(Landroid/os/Handler;Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    .prologue
    .line 206
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iput-object p1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateHandler:Landroid/os/Handler;

    .line 208
    iput-object p2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinStateListener:Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;

    .line 209
    monitor-exit v1

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public swapLeast(JLcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;)Z
    .locals 15
    .param p1, "newKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask",
            "<TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    .local p3, "swapper":Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask<TE;>;"
    iget-object v10, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mSwapLock:Ljava/lang/Object;

    monitor-enter v10

    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "existingElement":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :try_start_0
    iget-object v11, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :try_start_1
    iget-boolean v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v9, :cond_0

    .line 235
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 319
    :goto_0
    return v9

    .line 237
    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    move-object v2, v0

    .line 238
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 240
    if-eqz v2, :cond_1

    .line 241
    :try_start_4
    invoke-virtual {v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->getElement()Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;->update(Ljava/lang/Object;)V

    .line 242
    const/4 v9, 0x1

    monitor-exit v10

    goto :goto_0

    .line 321
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v9

    .line 238
    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v9

    .line 245
    :cond_1
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mCapacitySemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 247
    new-instance v3, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    invoke-interface/range {p3 .. p3}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;->create()Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v3, v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;-><init>(Ljava/lang/Object;)V

    .line 249
    .local v3, "p":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    iget-object v11, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 250
    :try_start_7
    iget-boolean v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v9, :cond_2

    .line 251
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 256
    :cond_2
    :try_start_9
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->release()V

    .line 259
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->availablePermits()I

    move-result v9

    const/4 v12, 0x1

    if-ne v9, v12, :cond_3

    .line 260
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->notifyPinStateChange(Z)V

    .line 262
    :cond_3
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 264
    const/4 v9, 0x1

    :try_start_a
    monitor-exit v10
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 262
    :catchall_2
    move-exception v9

    :try_start_b
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v9

    .line 271
    .end local v3    # "p":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    :cond_4
    iget-object v11, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 272
    :try_start_d
    iget-boolean v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v9, :cond_5

    .line 273
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    monitor-exit v10
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_0

    .line 275
    :cond_5
    const/4 v8, 0x0

    .line 276
    .local v8, "toSwapEntry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :try_start_f
    invoke-interface/range {p3 .. p3}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;->getSwapKey()J

    move-result-wide v6

    .line 278
    .local v6, "swapKey":J
    cmp-long v9, v6, p1

    if-nez v9, :cond_6

    .line 279
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_0

    .line 282
    :cond_6
    :try_start_11
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 283
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v12, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 294
    :cond_7
    :goto_1
    if-nez v8, :cond_9

    .line 296
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :try_start_12
    monitor-exit v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 288
    :cond_8
    :try_start_13
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;

    move-result-object v4

    .line 289
    .local v4, "swapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    if-eqz v4, :cond_7

    .line 290
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    goto :goto_1

    .line 299
    .end local v4    # "swapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :cond_9
    iget-object v5, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    .line 304
    .local v5, "toSwap":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    iget-object v12, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v9, v12}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    monitor-exit v11
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 308
    :try_start_14
    invoke-static {v5}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$000(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;->swap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$002(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 310
    :try_start_15
    iget-object v11, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 311
    :try_start_16
    iget-boolean v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v9, :cond_a

    .line 312
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_0

    .line 305
    .end local v5    # "toSwap":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    .end local v6    # "swapKey":J
    .end local v8    # "toSwapEntry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :catchall_3
    move-exception v9

    :try_start_18
    monitor-exit v11
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    throw v9
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 315
    .restart local v5    # "toSwap":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    .restart local v6    # "swapKey":J
    .restart local v8    # "toSwapEntry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :cond_a
    :try_start_1a
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v9, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v9, v12, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v11
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 319
    const/4 v9, 0x1

    :try_start_1b
    monitor-exit v10
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto/16 :goto_0

    .line 317
    :catchall_4
    move-exception v9

    :try_start_1c
    monitor-exit v11
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :try_start_1d
    throw v9

    .line 310
    :catchall_5
    move-exception v9

    iget-object v11, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 311
    :try_start_1e
    iget-boolean v12, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v12, :cond_b

    .line 312
    const/4 v9, 0x0

    monitor-exit v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6

    :try_start_1f
    monitor-exit v10
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    goto/16 :goto_0

    .line 315
    :cond_b
    :try_start_20
    iget-object v12, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    iget-object v12, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    monitor-exit v11
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_6

    :try_start_21
    throw v9
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    :catchall_6
    move-exception v9

    :try_start_22
    monitor-exit v11
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_6

    :try_start_23
    throw v9
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0
.end method

.method public tryGetPinned(J)Landroid/util/Pair;
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    const/4 v2, 0x0

    .line 527
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 528
    :try_start_0
    iget-boolean v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v1, :cond_0

    .line 529
    monitor-exit v3

    move-object v1, v2

    .line 541
    :goto_0
    return-object v1

    .line 531
    :cond_0
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 532
    .local v0, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, p1

    if-nez v1, :cond_1

    .line 533
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    invoke-static {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 534
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    invoke-virtual {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->getElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    monitor-exit v3

    goto :goto_0

    .line 540
    .end local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 536
    .restart local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :cond_2
    :try_start_1
    monitor-exit v3

    move-object v1, v2

    goto :goto_0

    .line 540
    .end local v0    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;>;"
    :cond_3
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    .line 541
    goto :goto_0
.end method

.method public tryPin(J)Landroid/util/Pair;
    .locals 9
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, "acquiredLastPin":Z
    const/4 v2, 0x0

    .line 337
    .local v2, "entry":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable<TE;>;"
    iget-object v6, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 338
    :try_start_0
    iget-boolean v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v3, :cond_0

    .line 339
    monitor-exit v6

    move-object v3, v5

    .line 377
    :goto_0
    return-object v3

    .line 342
    :cond_0
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;

    move-object v2, v0

    .line 348
    if-nez v2, :cond_2

    .line 349
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 352
    :cond_2
    invoke-static {v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$100(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 355
    invoke-static {v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$208(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)I

    .line 368
    :goto_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    if-eqz v1, :cond_3

    .line 374
    invoke-direct {p0, v4}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->notifyPinStateChange(Z)V

    .line 377
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->getElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    goto :goto_0

    .line 359
    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v3}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->tryAcquire()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 360
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mUnpinnedElements:Ljava/util/TreeMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    invoke-static {v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;->access$208(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Pinnable;)I

    .line 363
    iget-object v3, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mPinSemaphore:Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;

    invoke-virtual {v3}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$NegativePermitsSemaphore;->availablePermits()I

    move-result v3

    if-gtz v3, :cond_5

    const/4 v1, 0x1

    :goto_2
    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    .line 365
    :cond_6
    monitor-exit v6

    move-object v3, v5

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public tryPinGreatest()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    const/4 v0, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_0
    iget-boolean v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v2, :cond_0

    .line 425
    monitor-exit v1

    .line 432
    :goto_0
    return-object v0

    .line 428
    :cond_0
    iget-object v2, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    monitor-exit v1

    goto :goto_0

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 432
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->tryPin(J)Landroid/util/Pair;

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public tryPinGreatestSelected(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector",
            "<TE;>;)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "TE;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/camera/util/ConcurrentSharedRingBuffer;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer<TE;>;"
    .local p1, "selector":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector<TE;>;"
    const/4 v5, 0x0

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 446
    :try_start_0
    iget-boolean v4, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mClosed:Z

    if-eqz v4, :cond_1

    .line 447
    monitor-exit v6

    move-object v2, v5

    .line 481
    :cond_0
    :goto_0
    return-object v2

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 451
    monitor-exit v6

    move-object v2, v5

    goto :goto_0

    .line 454
    :cond_2
    iget-object v4, p0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->mElements:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 455
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 462
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_4

    .line 463
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->tryPin(J)Landroid/util/Pair;

    move-result-object v2

    .line 464
    .local v2, "pinnedCandidate":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;TE;>;"
    if-eqz v2, :cond_3

    .line 465
    const/4 v3, 0x0

    .line 468
    .local v3, "selected":Z
    :try_start_1
    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {p1, v4}, Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;->select(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 472
    if-nez v3, :cond_0

    .line 475
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    .line 462
    .end local v3    # "selected":Z
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 455
    .end local v0    # "i":I
    .end local v2    # "pinnedCandidate":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;TE;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 472
    .restart local v0    # "i":I
    .restart local v2    # "pinnedCandidate":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;TE;>;"
    .restart local v3    # "selected":Z
    :catchall_1
    move-exception v4

    move-object v5, v4

    if-nez v3, :cond_0

    .line 475
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    throw v5

    .end local v2    # "pinnedCandidate":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;TE;>;"
    .end local v3    # "selected":Z
    :cond_4
    move-object v2, v5

    .line 481
    goto :goto_0
.end method
