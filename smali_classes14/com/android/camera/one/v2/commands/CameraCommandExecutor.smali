.class public Lcom/android/camera/one/v2/commands/CameraCommandExecutor;
.super Ljava/lang/Object;
.source "CameraCommandExecutor.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;
    }
.end annotation


# instance fields
.field private mClosed:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mExecutorProvider:Lcom/android/camera/util/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLog:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/util/Provider;)V
    .locals 2
    .param p1, "loggerFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/util/Provider",
            "<",
            "Ljava/util/concurrent/ExecutorService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p2, "threadPoolExecutor":Lcom/android/camera/util/Provider;, "Lcom/android/camera/util/Provider<Ljava/util/concurrent/ExecutorService;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "CommandExecutor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLog:Lcom/android/camera/debug/Logger;

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLock:Ljava/lang/Object;

    .line 92
    iput-object p2, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutorProvider:Lcom/android/camera/util/Provider;

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mClosed:Z

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;)Lcom/android/camera/debug/Logger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/commands/CameraCommandExecutor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLog:Lcom/android/camera/debug/Logger;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 140
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mClosed:Z

    .line 142
    monitor-exit v1

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public execute(Lcom/android/camera/one/v2/commands/CameraCommand;)Ljava/util/concurrent/Future;
    .locals 3
    .param p1, "command"    # Lcom/android/camera/one/v2/commands/CameraCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/commands/CameraCommand;",
            ")",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mClosed:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutorProvider:Lcom/android/camera/util/Provider;

    invoke-interface {v0}, Lcom/android/camera/util/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/commands/CameraCommandExecutor$CommandRunnable;-><init>(Lcom/android/camera/one/v2/commands/CameraCommandExecutor;Lcom/android/camera/one/v2/commands/CameraCommand;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 125
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/commands/CameraCommandExecutor;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
