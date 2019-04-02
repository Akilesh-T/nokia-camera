.class public Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;
.super Ljava/lang/Object;
.source "ZslImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mCaptureRawSetting:Lcom/android/camera/async/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

.field private final mLog:Lcom/android/camera/debug/Logger;

.field private final mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

.field private final mMaxLookBackNanos:J

.field private final mMetadataFilter:Lcom/google/common/base/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private final mReprocessTaskSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;

.field private final mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

.field private final mZslRingBuffer:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/debug/Logger$Factory;Lcom/android/camera/async/BufferQueue;Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;Ljava/lang/Runnable;Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;Lcom/android/camera/one/v2/photo/ImageCaptureCommand;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/google/common/base/Predicate;Lcom/android/camera/async/Observable;J)V
    .locals 2
    .param p1, "logFactory"    # Lcom/android/camera/debug/Logger$Factory;
    .param p3, "zslMetadataPool"    # Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;
    .param p4, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p5, "manualAutoFocus"    # Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;
    .param p6, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p7, "imageReprocessor"    # Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;
    .param p8, "fallbackCommand"    # Lcom/android/camera/one/v2/photo/ImageCaptureCommand;
    .param p9, "rootRequestBuilder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p12, "maxLookBackNanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/debug/Logger$Factory;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;",
            "Lcom/android/camera/one/v2/core/FrameServer;",
            "Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;",
            "Ljava/lang/Runnable;",
            "Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;",
            "Lcom/android/camera/one/v2/photo/ImageCaptureCommand;",
            "Lcom/android/camera/one/v2/core/RequestBuilder$Factory;",
            "Lcom/google/common/base/Predicate",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/android/camera/async/Observable",
            "<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "zslRingBuffer":Lcom/android/camera/async/BufferQueue;, "Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p10, "metadataFilter":Lcom/google/common/base/Predicate;, "Lcom/google/common/base/Predicate<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p11, "captureRawSetting":Lcom/android/camera/async/Observable;, "Lcom/android/camera/async/Observable<Ljava/lang/Boolean;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    .line 95
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZSLImgCaptureCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/android/camera/debug/Logger$Factory;->create(Lcom/android/camera/debug/Log$Tag;)Lcom/android/camera/debug/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mLog:Lcom/android/camera/debug/Logger;

    .line 96
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 97
    iput-object p4, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 98
    iput-object p5, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    .line 99
    iput-object p6, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 100
    iput-object p7, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    .line 101
    iput-object p8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    .line 102
    iput-object p10, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mMetadataFilter:Lcom/google/common/base/Predicate;

    .line 103
    iput-wide p12, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mMaxLookBackNanos:J

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    .line 105
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    sget-object v1, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;->COMPRESS_TO_JEPG:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor$ReprocessTaskFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    iput-object p11, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    .line 107
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 108
    return-void
.end method

.method private filterImagesWithinMaxLookBack(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 140
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 152
    :cond_0
    return-object v0

    .line 142
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v0, "filtered":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v2

    .line 144
    .local v2, "mostRecentTimestamp":J
    iget-wide v6, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mMaxLookBackNanos:J

    sub-long v4, v2, v6

    .line 145
    .local v4, "timestampThreshold":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 146
    .local v1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-lez v7, :cond_2

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    :cond_2
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_0
.end method

.method private getAllAvailableImages()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v2, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mZslRingBuffer:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    return-object v2

    .line 127
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 131
    .local v1, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_1

    .line 133
    .end local v1    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_0
    throw v0
.end method

.method private tryGetZslImage()Landroid/support/v4/util/Pair;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/Pair",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/android/camera/async/BufferQueue$BufferQueueClosedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 158
    sget-boolean v8, Lcom/android/camera/product_utils/ProductUtil;->USE_DEVICE_OPERATED_ZSL:Z

    if-eqz v8, :cond_0

    move-object v8, v9

    .line 196
    :goto_0
    return-object v8

    .line 159
    :cond_0
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mCaptureRawSetting:Lcom/android/camera/async/Observable;

    invoke-interface {v8}, Lcom/android/camera/async/Observable;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 161
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mLog:Lcom/android/camera/debug/Logger;

    const-string v10, "raw capture enabled, not use zsl image."

    invoke-interface {v8, v10}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    move-object v8, v9

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->getAllAvailableImages()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->filterImagesWithinMaxLookBack(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 165
    .local v5, "images":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    const/4 v4, 0x0

    .line 166
    .local v4, "imageToSave":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const/4 v6, 0x0

    .line 168
    .local v6, "metadata":Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 169
    .local v3, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mZslMetadataPool:Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;

    .line 170
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getTimestamp()J

    move-result-wide v12

    invoke-interface {v8, v12, v13}, Lcom/android/camera/one/v2/sharedimagereader/metadatasynchronizer/MetadataPool;->removeMetadataFuture(J)Lcom/google/common/util/concurrent/ListenableFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 172
    .local v7, "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_1
    iget-object v8, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mMetadataFilter:Lcom/google/common/base/Predicate;

    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 173
    move-object v4, v3

    .line 174
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;

    move-object v6, v0
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 187
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v7    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 188
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eq v3, v4, :cond_4

    .line 189
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_2

    .line 181
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5

    .line 183
    :try_start_2
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 185
    :cond_5
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 188
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    if-eq v3, v4, :cond_6

    .line 189
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto :goto_3

    .line 191
    .end local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_7
    throw v8

    .line 193
    :cond_8
    if-nez v4, :cond_9

    move-object v8, v9

    .line 194
    goto/16 :goto_0

    .line 196
    :cond_9
    new-instance v8, Landroid/support/v4/util/Pair;

    invoke-direct {v8, v4, v6}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 176
    .restart local v3    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v7    # "metadataFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_1
    move-exception v8

    goto :goto_1

    :catch_2
    move-exception v8

    goto :goto_1
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 12
    .param p2, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 204
    .local p1, "imageExposeCallback":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "ZslImageCaptureCommand"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 205
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    const/4 v11, 0x1

    .line 207
    .local v11, "mustCloseImageSaver":Z
    const/4 v10, 0x0

    .line 210
    .local v10, "isFocusing":Z
    :try_start_0
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 211
    invoke-direct {p0}, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->tryGetZslImage()Landroid/support/v4/util/Pair;

    move-result-object v9

    .line 212
    .local v9, "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const-string v0, "tryGetZslImage"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 213
    if-eqz v9, :cond_4

    .line 214
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mLog:Lcom/android/camera/debug/Logger;

    const-string v1, "ZSL image available"

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 215
    const-string v0, "ZSL image available"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->onShutter()Z

    move-result v10

    .line 218
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFocusing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->v(Ljava/lang/String;)V

    .line 220
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/camera/async/Updatable;->update(Ljava/lang/Object;)V

    .line 221
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 222
    iget-object v0, v9, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 223
    .local v4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const-string v0, "metadata get"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mImageReprocessor:Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mReprocessTaskSet:Ljava/util/Set;

    iget-object v3, v9, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    const/4 v7, 0x0

    move-object v6, p2

    invoke-interface/range {v0 .. v8}, Lcom/android/camera/one/v2/sharedimagereader/reprocessor/ImageReprocessor;->tryReprocessImage(Lcom/android/camera/one/v2/core/FrameServer$Session;Ljava/util/Set;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Lcom/android/camera/one/v2/imagesaver/ImageSaver;ZLcom/android/camera/stats/profiler/Profile;)Z
    :try_end_0
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 225
    const/4 v11, 0x0

    .line 241
    .end local v4    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :goto_0
    if-eqz v11, :cond_0

    .line 242
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 243
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 244
    const-string v0, "ImageSaver close"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 247
    :cond_0
    if-eqz v10, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 252
    .end local v9    # "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_1
    :goto_1
    return-void

    .line 227
    .restart local v4    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .restart local v9    # "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_2
    :try_start_1
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 228
    iget-object v0, v9, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    const/4 v1, 0x1

    invoke-interface {p2, v0, v4, v1}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    .line 229
    const-string v0, "add Image to ImageSaver"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 237
    .end local v4    # "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v9    # "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_0
    move-exception v0

    .line 241
    if-eqz v11, :cond_3

    .line 242
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 243
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 244
    const-string v0, "ImageSaver close"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 247
    :cond_3
    if-eqz v10, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v0}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 249
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 232
    .restart local v9    # "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mLog:Lcom/android/camera/debug/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No ZSL image available, using fallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/debug/Logger;->i(Ljava/lang/String;)V

    .line 233
    const-string v0, "No ZSL image"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 234
    const/4 v11, 0x0

    .line 235
    iget-object v0, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mFallbackCommand:Lcom/android/camera/one/v2/photo/ImageCaptureCommand;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/one/v2/photo/ImageCaptureCommand;->run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    :try_end_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 241
    .end local v9    # "image":Landroid/support/v4/util/Pair;, "Landroid/support/v4/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_5

    .line 242
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 243
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 244
    const-string v1, "ImageSaver close"

    invoke-interface {v8, v1}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 247
    :cond_5
    if-eqz v10, :cond_6

    .line 248
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mManualAutoFocus:Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;

    invoke-interface {v1}, Lcom/android/camera/one/v2/autofocus/ManualAutoFocus;->resetFocusAndMeterArea()V

    .line 249
    iget-object v1, p0, Lcom/android/camera/one/v2/photo/zsl/ZslImageCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_6
    throw v0
.end method
