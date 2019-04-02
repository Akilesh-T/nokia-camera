.class Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;
.super Ljava/lang/Object;
.source "ImageDistributorImpl.java"

# interfaces
.implements Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
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
            "Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mDispatchTable"
    .end annotation
.end field

.field private final mGlobalTimestampBufferQueue:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/camera/debug/Logger;


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/BufferQueue;)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "globalTimestampBufferQueue":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ImgDistributorImpl"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mLogger:Lcom/android/camera/debug/Logger;

    .line 89
    iput-object p2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mGlobalTimestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
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
    .line 228
    .local p1, "inputTimestampBufferQueue":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Ljava/lang/Long;>;"
    .local p2, "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 234
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v2, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;-><init>(Lcom/android/camera/async/BufferQueue;Lcom/android/camera/async/BufferQueueController;Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$1;)V

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 232
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 233
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 232
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
    .line 238
    iget-object v1, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 242
    :cond_0
    monitor-exit v1

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public distributeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    .locals 21
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v15

    .line 109
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 110
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 111
    monitor-exit v15

    .line 210
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 126
    .local v12, "timestamp":J
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mGlobalTimestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    invoke-interface {v14}, Lcom/android/camera/async/BufferQueue;->getNext()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v16

    cmp-long v14, v16, v12

    if-lez v14, :cond_1

    .line 138
    :goto_1
    :try_start_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v10, "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 144
    .local v2, "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :try_start_3
    new-instance v6, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    invoke-direct {v6, v14}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 146
    .local v6, "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 147
    :try_start_4
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;

    .line 150
    .local v3, "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueue;->isClosed()Z

    move-result v16

    if-nez v16, :cond_3

    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->imageStream:Lcom/android/camera/async/BufferQueueController;

    move-object/from16 v16, v0

    .line 151
    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueueController;->isClosed()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 152
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_4
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 155
    .local v7, "requestedImageTimestamp":Ljava/lang/Long;
    :goto_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v12

    if-gez v16, :cond_5

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mLogger:Lcom/android/camera/debug/Logger;

    move-object/from16 v16, v0

    const-string v17, "Image (%d) expected, but never received!  Instead, received (%d)!  This is likely a camera driver error."

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v7, v18, v19

    const/16 v19, 0x1

    .line 169
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    .line 167
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/RuntimeException;

    invoke-direct/range {v18 .. v18}, Ljava/lang/RuntimeException;-><init>()V

    invoke-interface/range {v16 .. v18}, Lcom/android/camera/debug/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueue;->discardNext()V

    .line 177
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueue;->peekNext()Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "requestedImageTimestamp":Ljava/lang/Long;
    check-cast v7, Ljava/lang/Long;

    .restart local v7    # "requestedImageTimestamp":Ljava/lang/Long;
    goto :goto_3

    .line 130
    .end local v2    # "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .end local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
    .end local v6    # "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .end local v7    # "requestedImageTimestamp":Ljava/lang/Long;
    .end local v10    # "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 132
    monitor-exit v15

    goto/16 :goto_0

    .line 209
    .end local v4    # "e":Ljava/lang/InterruptedException;
    .end local v12    # "timestamp":J
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    .line 146
    .restart local v2    # "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .restart local v10    # "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    .restart local v12    # "timestamp":J
    :catchall_1
    move-exception v14

    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v14

    .line 179
    .restart local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
    .restart local v6    # "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .restart local v7    # "requestedImageTimestamp":Ljava/lang/Long;
    :cond_5
    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    cmp-long v16, v16, v12

    if-nez v16, :cond_2

    .line 184
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->timestampBufferQueue:Lcom/android/camera/async/BufferQueue;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/camera/async/BufferQueue;->discardNext()V

    .line 185
    iget-object v0, v3, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;->imageStream:Lcom/android/camera/async/BufferQueueController;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 189
    .end local v3    # "dispatchRecord":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;
    .end local v7    # "requestedImageTimestamp":Ljava/lang/Long;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    move-object/from16 v16, v0

    monitor-enter v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 190
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl;->mDispatchTable:Ljava/util/Set;

    invoke-interface {v14, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 191
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 193
    :try_start_8
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 195
    .local v11, "streamsToReceiveImageSize":I
    if-nez v11, :cond_7

    .line 196
    invoke-interface/range {p1 .. p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 197
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0

    .line 191
    .end local v11    # "streamsToReceiveImageSize":I
    :catchall_2
    move-exception v14

    :try_start_9
    monitor-exit v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v14

    .line 200
    .restart local v11    # "streamsToReceiveImageSize":I
    :cond_7
    new-instance v8, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v11}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;I)V

    .line 202
    .local v8, "sharedImage":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/async/BufferQueueController;

    .line 206
    .local v5, "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v9, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;

    invoke-direct {v9, v8}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/SingleCloseImageProxy;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V

    .line 207
    .local v9, "singleCloseImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v5, v9}, Lcom/android/camera/async/BufferQueueController;->update(Ljava/lang/Object;)V

    goto :goto_4

    .line 209
    .end local v5    # "outputStream":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .end local v9    # "singleCloseImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_8
    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 133
    .end local v2    # "deadRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .end local v6    # "recordsToProcess":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageDistributorImpl$DispatchRecord;>;"
    .end local v8    # "sharedImage":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/RefCountedImageProxy;
    .end local v10    # "streamsToReceiveImage":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    .end local v11    # "streamsToReceiveImageSize":I
    :catch_1
    move-exception v14

    goto/16 :goto_1
.end method
