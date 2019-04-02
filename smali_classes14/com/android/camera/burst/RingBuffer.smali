.class public Lcom/android/camera/burst/RingBuffer;
.super Ljava/lang/Object;
.source "RingBuffer.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/async/SafeCloseable;"
    }
.end annotation


# instance fields
.field private final mEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

.field private final mImages:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mMaxCapacity:I


# direct methods
.method public constructor <init>(ILcom/android/camera/burst/EvictionHandler;)V
    .locals 1
    .param p1, "maxCapacity"    # I
    .param p2, "evictionHandler"    # Lcom/android/camera/burst/EvictionHandler;

    .prologue
    .line 43
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    .line 44
    iput p1, p0, Lcom/android/camera/burst/RingBuffer;->mMaxCapacity:I

    .line 45
    iput-object p2, p0, Lcom/android/camera/burst/RingBuffer;->mEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    .line 46
    return-void
.end method

.method private declared-synchronized addImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    .local p1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;, "TT;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeAndCloseImage(J)V
    .locals 1
    .param p1, "timestampNs"    # J

    .prologue
    .line 94
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 95
    iget-object v0, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAndRemoveAllImages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 75
    .local v0, "allImages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 76
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-object v0

    .line 74
    .end local v0    # "allImages":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized insertImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<TT;>;"
    .local p1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;, "TT;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 55
    .local v2, "timestamp":J
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 61
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/burst/RingBuffer;->addImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 62
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->mEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    invoke-interface {v4, v2, v3}, Lcom/android/camera/burst/EvictionHandler;->onFrameInserted(J)V

    .line 63
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v4

    iget v5, p0, Lcom/android/camera/burst/RingBuffer;->mMaxCapacity:I

    if-le v4, v5, :cond_0

    .line 64
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->mEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    invoke-interface {v4}, Lcom/android/camera/burst/EvictionHandler;->selectFrameToDrop()J

    move-result-wide v0

    .line 65
    .local v0, "selectFrameToDrop":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/burst/RingBuffer;->removeAndCloseImage(J)V

    .line 66
    iget-object v4, p0, Lcom/android/camera/burst/RingBuffer;->mEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    invoke-interface {v4, v0, v1}, Lcom/android/camera/burst/EvictionHandler;->onFrameDropped(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 54
    .end local v0    # "selectFrameToDrop":J
    .end local v2    # "timestamp":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
