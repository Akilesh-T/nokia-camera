.class public Lcom/android/camera/video/DSVideoBurstTakerImpl;
.super Ljava/lang/Object;
.source "DSVideoBurstTakerImpl.java"

# interfaces
.implements Lcom/android/camera/burst/BurstTaker;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private mRecordLifetime:Lcom/android/camera/async/Lifetime;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRenderRecorder:Lcom/android/camera/video/RenderRecorder;


# direct methods
.method public constructor <init>(Lcom/android/camera/video/RenderRecorder;)V
    .locals 0
    .param p1, "renderRecorder"    # Lcom/android/camera/video/RenderRecorder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRenderRecorder:Lcom/android/camera/video/RenderRecorder;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/video/DSVideoBurstTakerImpl;)Lcom/android/camera/video/RenderRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/DSVideoBurstTakerImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRenderRecorder:Lcom/android/camera/video/RenderRecorder;

    return-object v0
.end method


# virtual methods
.method public startBurst(Lcom/android/camera/burst/BurstController;)V
    .locals 3
    .param p1, "burstController"    # Lcom/android/camera/burst/BurstController;

    .prologue
    .line 57
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 58
    iget-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Record cannot be started, while another is running."

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 60
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 61
    new-instance v1, Lcom/android/camera/async/Lifetime;

    invoke-direct {v1}, Lcom/android/camera/async/Lifetime;-><init>()V

    iput-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    .line 62
    iget-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    invoke-interface {p1}, Lcom/android/camera/burst/BurstController;->getControllerLocalLifeTime()Lcom/android/camera/async/Lifetime;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 64
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 66
    .local v0, "executorService":Ljava/util/concurrent/ExecutorService;
    iget-object v1, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    new-instance v2, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/camera/video/DSVideoBurstTakerImpl$1;-><init>(Lcom/android/camera/video/DSVideoBurstTakerImpl;Ljava/util/concurrent/ExecutorService;Lcom/android/camera/burst/BurstController;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 83
    new-instance v1, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/video/DSVideoBurstTakerImpl$2;-><init>(Lcom/android/camera/video/DSVideoBurstTakerImpl;Lcom/android/camera/burst/BurstController;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    return-void

    .line 58
    .end local v0    # "executorService":Ljava/util/concurrent/ExecutorService;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized stopBurst()V
    .locals 2

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V

    .line 95
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 96
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v0}, Lcom/android/camera/async/Lifetime;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/video/DSVideoBurstTakerImpl;->mRecordLifetime:Lcom/android/camera/async/Lifetime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
