.class public Lcom/android/camera/async/Listenable;
.super Ljava/lang/Object;
.source "Listenable.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private mClosed:Z

.field private mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

.field private mExistingCallbackRunnable:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mState:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/async/ConcurrentState;Lcom/android/camera/async/MainThread;)V
    .locals 1
    .param p2, "mainThread"    # Lcom/android/camera/async/MainThread;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<TT;>;",
            "Lcom/android/camera/async/MainThread;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<TT;>;"
    .local p1, "state":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/camera/async/Listenable;->mState:Lcom/android/camera/async/ConcurrentState;

    .line 35
    iput-object p2, p0, Lcom/android/camera/async/Listenable;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/async/Listenable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/async/Listenable;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/async/Listenable;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/async/Listenable;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mState:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 94
    .local p0, "this":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/Listenable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    if-eqz v0, :cond_0

    .line 96
    monitor-exit v1

    .line 105
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    .line 104
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 112
    .local p0, "this":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/Listenable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/async/Listenable;->clear()V

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    .line 115
    monitor-exit v1

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCallback(Lcom/android/camera/util/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/util/Callback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<TT;>;"
    .local p1, "callback":Lcom/android/camera/util/Callback;, "Lcom/android/camera/util/Callback<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/Listenable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    if-eqz v0, :cond_0

    .line 65
    monitor-exit v1

    .line 88
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    .line 74
    :cond_1
    if-nez p1, :cond_2

    monitor-exit v1

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 76
    :cond_2
    :try_start_1
    new-instance v0, Lcom/android/camera/async/Listenable$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/async/Listenable$1;-><init>(Lcom/android/camera/async/Listenable;Lcom/android/camera/util/Callback;)V

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    .line 86
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mState:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/camera/async/Listenable;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 87
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setState(Lcom/android/camera/async/ConcurrentState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/ConcurrentState",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/android/camera/async/Listenable;, "Lcom/android/camera/async/Listenable<TT;>;"
    .local p1, "state":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<TT;>;"
    iget-object v1, p0, Lcom/android/camera/async/Listenable;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/async/Listenable;->mClosed:Z

    if-eqz v0, :cond_0

    .line 44
    monitor-exit v1

    .line 57
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/camera/async/Listenable;->mState:Lcom/android/camera/async/ConcurrentState;

    .line 48
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    invoke-interface {v0}, Lcom/android/camera/async/SafeCloseable;->close()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/camera/async/Listenable;->mState:Lcom/android/camera/async/ConcurrentState;

    iget-object v2, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackRunnable:Ljava/lang/Runnable;

    iget-object v3, p0, Lcom/android/camera/async/Listenable;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/async/ConcurrentState;->addCallback(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lcom/android/camera/async/SafeCloseable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/async/Listenable;->mExistingCallbackHandle:Lcom/android/camera/async/SafeCloseable;

    .line 56
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
