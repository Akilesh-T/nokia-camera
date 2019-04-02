.class Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;
.super Ljava/lang/Object;
.source "ReprocessImgDistriImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;
    }
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mDispatchTable:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mDispatchTable"
    .end annotation
.end field

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "RepImgDistriImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mLogger:Lcom/android/camera/debug/Logger;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 78
    return-void
.end method


# virtual methods
.method public addRoute(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/camera/async/BufferQueueController",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "inputTimestampBufferQueue":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    .local p2, "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 199
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$1;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 198
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 197
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 203
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 207
    :cond_0
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public distributeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 20
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 94
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v14

    .line 95
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 96
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 97
    monitor-exit v14

    .line 175
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v12

    .line 102
    .local v12, "timestamp":J
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v9, "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 108
    .local v2, "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    monitor-enter v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    new-instance v5, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    invoke-direct {v5, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v5, "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    :try_start_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;

    .line 115
    .local v3, "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v15}, Lcom/android/camera/async/BufferQueue;->isClosed()Z

    move-result v15

    if-nez v15, :cond_2

    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->imageStream:Lcom/android/camera/async/BufferQueueController;

    .line 116
    invoke-interface {v15}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 117
    :cond_2
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_3
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v15}, Lcom/android/camera/async/BufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 120
    .local v6, "requestedImageTimestamp":Ljava/lang/Long;
    :goto_2
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v15, v16, v12

    if-gez v15, :cond_4

    .line 132
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mLogger:Lcom/android/camera/debug/Logger;

    const-string v16, "Image (%d) expected, but never received!  Instead, received (%d)!  This is likely a camera driver error."

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    const/16 v18, 0x1

    .line 134
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    .line 132
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    new-instance v17, Ljava/lang/RuntimeException;

    invoke-direct/range {v17 .. v17}, Ljava/lang/RuntimeException;-><init>()V

    invoke-interface/range {v15 .. v17}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v15}, Lcom/android/camera/async/BufferQueue;->discardNext()V

    .line 142
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v15}, Lcom/android/camera/async/BufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "requestedImageTimestamp":Ljava/lang/Long;
    check-cast v6, Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local v6    # "requestedImageTimestamp":Ljava/lang/Long;
    goto :goto_2

    .line 110
    .end local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;
    .end local v5    # "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    .end local v6    # "requestedImageTimestamp":Ljava/lang/Long;
    :catchall_0
    move-exception v11

    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v11

    .line 174
    .end local v2    # "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    .end local v9    # "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    .end local v12    # "timestamp":J
    :catchall_1
    move-exception v11

    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 144
    .restart local v2    # "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    .restart local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;
    .restart local v5    # "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;>;"
    .restart local v6    # "requestedImageTimestamp":Ljava/lang/Long;
    .restart local v9    # "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    .restart local v12    # "timestamp":J
    :cond_4
    if-eqz v6, :cond_1

    .line 147
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v15, v16, v12

    if-nez v15, :cond_1

    .line 149
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v15}, Lcom/android/camera/async/BufferQueue;->discardNext()V

    .line 150
    iget-object v15, v3, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;->imageStream:Lcom/android/camera/async/BufferQueueController;

    invoke-interface {v9, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 154
    .end local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl$DispatchRecord;
    .end local v6    # "requestedImageTimestamp":Ljava/lang/Long;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    monitor-enter v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 155
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ReprocessImgDistriImpl;->mDispatchTable:Ljava/util/Set;

    invoke-interface {v11, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 156
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 158
    :try_start_7
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 160
    .local v10, "streamsToReceiveImageSize":I
    if-nez v10, :cond_6

    .line 161
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 162
    monitor-exit v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_0

    .line 156
    .end local v10    # "streamsToReceiveImageSize":I
    :catchall_2
    move-exception v11

    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v11

    .line 165
    .restart local v10    # "streamsToReceiveImageSize":I
    :cond_6
    new-instance v7, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v10}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)V

    .line 167
    .local v7, "sharedImage":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/async/BufferQueueController;

    .line 171
    .local v4, "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v8, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v8, v7}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 172
    .local v8, "singleCloseImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v4, v8}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    goto :goto_3

    .line 174
    .end local v4    # "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .end local v8    # "singleCloseImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_7
    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0
.end method
