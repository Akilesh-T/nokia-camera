.class public Lcom/android/camera/async/ResettingDelayedExecutor;
.super Ljava/lang/Object;
.source "ResettingDelayedExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lcom/android/camera/async/SafeCloseable;


# instance fields
.field private mClosed:Z

.field private final mDelay:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDelayUnit:Ljava/util/concurrent/TimeUnit;

.field private final mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private mLatestRunnable:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/android/camera/async/ConcurrentState;Ljava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p3, "delayUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "delay":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 46
    iput-object p2, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mDelay:Lcom/android/camera/async/ConcurrentState;

    .line 47
    iput-object p3, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mDelayUnit:Ljava/util/concurrent/TimeUnit;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/ResettingDelayedExecutor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/async/ResettingDelayedExecutor;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/async/ResettingDelayedExecutor;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/async/ResettingDelayedExecutor;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 93
    monitor-exit v1

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    .line 98
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 99
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 73
    monitor-exit v1

    .line 87
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/async/ResettingDelayedExecutor;->reset()Z

    .line 76
    iget-object v2, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/android/camera/async/ResettingDelayedExecutor$1;

    invoke-direct {v3, p0, p1}, Lcom/android/camera/async/ResettingDelayedExecutor$1;-><init>(Lcom/android/camera/async/ResettingDelayedExecutor;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mDelay:Lcom/android/camera/async/ConcurrentState;

    .line 84
    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mDelayUnit:Ljava/util/concurrent/TimeUnit;

    .line 76
    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    .line 85
    iput-object p1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    .line 86
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reScheduleTask()V
    .locals 2

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 105
    monitor-exit v1

    .line 110
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    monitor-exit v1

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/camera/async/ResettingDelayedExecutor;->execute(Ljava/lang/Runnable;)V

    .line 109
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public reset()Z
    .locals 4

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "isFocusing":Z
    iget-object v2, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 60
    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunRequest:Ljava/util/concurrent/ScheduledFuture;

    .line 64
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/async/ResettingDelayedExecutor;->mLatestRunnable:Ljava/lang/Runnable;

    .line 65
    monitor-exit v2

    .line 66
    return v0

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
