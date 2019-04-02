.class public Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;
.super Ljava/lang/Object;
.source "MetadataPoolImpl.java"

# interfaces
.implements Lcom/android/camera/async/Updatable;
.implements Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/Updatable",
        "<",
        "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
        ">;",
        "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;"
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final MAX_CACHE_SIZE:I

.field private final mLock:Ljava/lang/Object;

.field private final mMetadataFutures:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "MetadataPoolImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->MAX_CACHE_SIZE:I

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private getOrCreateFuture(J)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 5
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3}, Landroid/util/LongSparseArray;->append(JLjava/lang/Object;)V

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 67
    .local v0, "metadataFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    monitor-exit v2

    .line 68
    return-object v0

    .line 67
    .end local v0    # "metadataFuture":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shrinkToFitMaxSize()V
    .locals 7

    .prologue
    .line 72
    iget-object v4, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 73
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->getMapSize()I

    move-result v1

    const/16 v5, 0x1e

    if-le v1, v5, :cond_1

    .line 74
    iget-object v5, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    .line 76
    .local v2, "timestamp":J
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/SettableFuture;

    .line 77
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/util/concurrent/SettableFuture;->cancel(Z)Z

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 81
    monitor-exit v5

    goto :goto_0

    .end local v0    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v2    # "timestamp":J
    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 83
    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMapSize()I
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->mMetadataFutures:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->getOrCreateFuture(J)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 91
    .local v0, "future":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v1, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl$1;-><init>(Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;J)V

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 104
    invoke-static {v0}, Lcom/android/camera/async/Futures2;->nonCancellationPropagating(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V
    .locals 4
    .param p1, "metadata"    # Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 109
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v2}, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 110
    .local v1, "timestamp":Ljava/lang/Long;
    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->getOrCreateFuture(J)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v0

    .line 112
    .local v0, "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 113
    invoke-direct {p0}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->shrinkToFitMaxSize()V

    .line 117
    .end local v0    # "future":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v2, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "SENSOR_TIMESTAMP is null, this should not be!"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic update(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 39
    check-cast p1, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPoolImpl;->update(Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;)V

    return-void
.end method
