.class public Lcom/android/camera/video/PersistentInputSurface;
.super Ljava/lang/Object;
.source "PersistentInputSurface.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mInitSurfaceFeature:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentInputSurface:Landroid/view/Surface;

.field private final mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PersistentInputSurface"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/video/PersistentInputSurface;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V
    .locals 3
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "camcorderProfile"    # Landroid/media/CamcorderProfile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 38
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mPersistentInputSurface:Landroid/view/Surface;

    .line 39
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mInitSurfaceFeature:Lcom/google/common/util/concurrent/SettableFuture;

    .line 40
    new-instance v0, Lcom/android/camera/video/PersistentInputSurface$1;

    invoke-direct {v0, p0}, Lcom/android/camera/video/PersistentInputSurface$1;-><init>(Lcom/android/camera/video/PersistentInputSurface;)V

    invoke-virtual {p1, v0}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 51
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mPersistentInputSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/camera/video/PersistentInputSurface$2;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/video/PersistentInputSurface$2;-><init>(Lcom/android/camera/video/PersistentInputSurface;Landroid/media/CamcorderProfile;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/android/camera/video/PersistentInputSurface;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "mPersistentInputSurface ==null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mInitSurfaceFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/camera/video/PersistentInputSurface;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/PersistentInputSurface;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/video/PersistentInputSurface;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/PersistentInputSurface;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mPersistentInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/camera/video/PersistentInputSurface;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/video/PersistentInputSurface;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/video/PersistentInputSurface;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/camera/video/PersistentInputSurface;->mInitSurfaceFeature:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method


# virtual methods
.method public getSurface()Landroid/view/Surface;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v3, p0, Lcom/android/camera/video/PersistentInputSurface;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/video/PersistentInputSurface;->mRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v3

    move-object v1, v2

    .line 101
    :goto_0
    return-object v1

    .line 93
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/video/PersistentInputSurface;->mInitSurfaceFeature:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 96
    iget-object v1, p0, Lcom/android/camera/video/PersistentInputSurface;->mPersistentInputSurface:Landroid/view/Surface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v1, v2

    .line 101
    goto :goto_0
.end method
