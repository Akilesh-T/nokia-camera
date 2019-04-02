.class public Lcom/android/camera/video/VideoBurstTakerImpl;
.super Ljava/lang/Object;
.source "VideoBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstTaker;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mRecordController:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordLifetime:Lcom/android/camera/async/Lifetime;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/ConcurrentState;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "recordController":Lcom/android/camera/async/ConcurrentState;, "Lcom/android/camera/async/ConcurrentState<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoBurstTakerImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mLog:Lcom/android/camera/debug/Logger;

    .line 61
    iput-object p2, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/video/VideoBurstTakerImpl;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/VideoBurstTakerImpl;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordController:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method


# virtual methods
.method public startBurst(Lcom/android/camera/burst/BurstController;)V
    .locals 3
    .param p1, "burstController"    # Lcom/android/camera/burst/BurstController;

    .prologue
    .line 66
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 67
    iget-object v1, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Record cannot be started, while another is running."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 69
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 70
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    .line 71
    iget-object v1, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    invoke-interface {p1}, Lcom/android/camera/burst/BurstController;->getControllerLocalLifeTime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 73
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 75
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    new-instance v2, Lcom/android/camera/video/VideoBurstTakerImpl$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/video/VideoBurstTakerImpl$1;-><init>(Lcom/android/camera/video/VideoBurstTakerImpl;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/burst/BurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 92
    new-instance v1, Lcom/android/camera/video/VideoBurstTakerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/video/VideoBurstTakerImpl$2;-><init>(Lcom/android/camera/video/VideoBurstTakerImpl;Lcom/android/camera/burst/BurstController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 99
    return-void

    .line 67
    .end local v0    # "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopBurst()V
    .locals 2

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 104
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 105
    iget-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/video/VideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
