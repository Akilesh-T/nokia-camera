.class public Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;
.super Ljava/lang/Object;
.source "LockableImageBuffer.java"

# interfaces
.implements Lcom/android/camera/async/SafeCloseable;


# static fields
.field public static final MAX_CAPACITY:I = 0x8

.field public static final MIN_CAPACITY:I = 0x3


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImages:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<[B>;"
        }
    .end annotation
.end field

.field private final mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxCapacity:I

.field private final mSlaveImages:Landroid/support/v4/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxCapacity"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    .line 24
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;

    .line 25
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;

    .line 26
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;

    .line 29
    const/16 v0, 0x8

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mMaxCapacity:I

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    return-void
.end method


# virtual methods
.method public declared-synchronized addImage(I[B)V
    .locals 1
    .param p1, "frameNum"    # I
    .param p2, "data"    # [B

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p0, v0, p1, p2}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->addImage(Lcom/android/camera/one/CameraType;I[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addImage(Lcom/android/camera/one/CameraType;I[B)V
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "frameNum"    # I
    .param p3, "data"    # [B

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    const/4 v2, 0x0

    .line 50
    .local v2, "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    const/4 v4, 0x0

    .line 51
    .local v4, "lockFrameNumList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :try_start_1
    sget-object v5, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v5, :cond_3

    .line 52
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    .line 53
    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;

    .line 59
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 60
    int-to-long v6, p2

    invoke-virtual {v2, v6, v7, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 61
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    iget v6, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mMaxCapacity:I

    if-le v5, v6, :cond_0

    .line 62
    invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 63
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_2
    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 64
    invoke-virtual {v2, v3}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v0

    .line 65
    .local v0, "frame_num":J
    invoke-virtual {v4, v0, v1}, Landroid/support/v4/util/LongSparseArray;->indexOfKey(J)I

    move-result v5

    if-gez v5, :cond_4

    .line 66
    invoke-virtual {v2, v3}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    .end local v0    # "frame_num":J
    .end local v2    # "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    .end local v3    # "index":I
    .end local v4    # "lockFrameNumList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 54
    .restart local v2    # "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    .restart local v4    # "lockFrameNumList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :cond_3
    :try_start_2
    sget-object v5, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v5, :cond_2

    .line 55
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;

    .line 56
    iget-object v4, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;

    goto :goto_1

    .line 63
    .restart local v0    # "frame_num":J
    .restart local v3    # "index":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 71
    .end local v0    # "frame_num":J
    .end local v3    # "index":I
    :cond_5
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    :goto_0
    monitor-exit p0

    return-void

    .line 36
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 37
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 38
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 39
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage()[B
    .locals 1

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p0, v0}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage(Lcom/android/camera/one/CameraType;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(I)[B
    .locals 1
    .param p1, "frameNum"    # I

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage(Lcom/android/camera/one/CameraType;I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImage(Lcom/android/camera/one/CameraType;)[B
    .locals 4
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;

    .prologue
    const/4 v1, 0x0

    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 110
    .local v0, "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    :try_start_1
    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v2, :cond_3

    .line 111
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    .line 115
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LongSparseArray;->keyAt(I)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {p0, v1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->getImage(I)[B

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_3
    sget-object v2, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v2, :cond_2

    .line 113
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 108
    .end local v0    # "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getImage(Lcom/android/camera/one/CameraType;I)[B
    .locals 4
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "frameNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 84
    :cond_1
    const/4 v1, 0x0

    .line 86
    .local v1, "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    :try_start_1
    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v2, :cond_3

    .line 87
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    .line 91
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 93
    .local v0, "data":[B
    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/LongSparseArray;->remove(J)V

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->unLock(Lcom/android/camera/one/CameraType;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "data":[B
    .end local v1    # "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 88
    .restart local v1    # "imageList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<[B>;"
    :cond_3
    :try_start_2
    sget-object v2, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v2, :cond_2

    .line 89
    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized lockFrameNum(I)V
    .locals 1
    .param p1, "frameNum"    # I

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->lockFrameNum(Lcom/android/camera/one/CameraType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lockFrameNum(Lcom/android/camera/one/CameraType;I)V
    .locals 4
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "frameNum"    # I

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    .line 125
    .local v0, "lockFrameNumList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v1, :cond_2

    .line 126
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;

    .line 131
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 132
    int-to-long v2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_1
    monitor-exit p0

    return-void

    .line 127
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized size()I
    .locals 2

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mSlaveImages:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/support/v4/util/LongSparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unLock(I)V
    .locals 1
    .param p1, "frameNum"    # I

    .prologue
    .line 137
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p0, v0, p1}, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->unLock(Lcom/android/camera/one/CameraType;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    monitor-exit p0

    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unLock(Lcom/android/camera/one/CameraType;I)V
    .locals 4
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "frameNum"    # I

    .prologue
    .line 141
    monitor-enter p0

    const/4 v0, 0x0

    .line 142
    .local v0, "lockFrameNumList":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    if-ne p1, v1, :cond_2

    .line 143
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockFrameNumList:Landroid/support/v4/util/LongSparseArray;

    .line 148
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 149
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/util/LongSparseArray;->remove(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    monitor-exit p0

    return-void

    .line 144
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/camera/one/CameraType;->MONO:Lcom/android/camera/one/CameraType;

    if-ne p1, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/thirdparty/arcsoft/engine/LockableImageBuffer;->mLockSlaveFrameNumList:Landroid/support/v4/util/LongSparseArray;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
