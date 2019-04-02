.class Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laifeng/sopcastsdk/utils/WeakHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChainedRef"
.end annotation


# instance fields
.field lock:Ljava/util/concurrent/locks/Lock;

.field next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

.field prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

.field final runnable:Ljava/lang/Runnable;

.field final wrapper:Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "lock"    # Ljava/util/concurrent/locks/Lock;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 429
    iput-object p2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    .line 430
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    .line 431
    new-instance v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->wrapper:Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    .line 432
    return-void
.end method


# virtual methods
.method public insertAfter(Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;)V
    .locals 2
    .param p1, "candidate"    # Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iput-object p1, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iput-object v0, p1, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 459
    iput-object p1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 460
    iput-object p0, p1, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 464
    return-void

    .line 462
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove()Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    if-eqz v0, :cond_1

    .line 441
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    iput-object v1, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 443
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->prev:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 444
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 448
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->wrapper:Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;

    return-object v0

    .line 446
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public remove(Ljava/lang/Runnable;)Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Runnable;

    .prologue
    .line 467
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;

    .line 470
    .local v0, "curr":Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    :goto_0
    if-eqz v0, :cond_1

    .line 471
    iget-object v1, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->runnable:Ljava/lang/Runnable;

    if-ne v1, p1, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->remove()Lcom/laifeng/sopcastsdk/utils/WeakHandler$WeakRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 479
    :goto_1
    return-object v1

    .line 474
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->next:Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 479
    const/4 v1, 0x0

    goto :goto_1

    .line 477
    .end local v0    # "curr":Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/laifeng/sopcastsdk/utils/WeakHandler$ChainedRef;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
