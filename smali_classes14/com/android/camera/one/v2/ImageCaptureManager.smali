.class public Lcom/android/camera/one/v2/ImageCaptureManager;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "ImageCaptureManager.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;,
        Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;,
        Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;,
        Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;,
        Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;
    }
.end annotation


# static fields
.field private static final DEBUG_INTERFRAME_STALL_WARNING:J = 0x5L

.field private static final DEBUG_MAX_IMAGE_CALLBACK_DUR:J = 0x19L

.field private static final DEBUG_PRINT_OPEN_IMAGE_COUNT:Z

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/ConcurrentSharedRingBuffer",
            "<",
            "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugLastOnCaptureCompletedMillis:J

.field private mDebugStalledFrameCount:J

.field private final mImageCaptureListenerExecutor:Ljava/util/concurrent/Executor;

.field private final mListenerHandler:Landroid/os/Handler;

.field private final mMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMetadataChangeListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPendingImageCaptureCallback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

.field private mPendingImageCaptureConstraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 233
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZSLImageListener"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/ImageCaptureManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(ILandroid/os/Handler;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "maxImages"    # I
    .param p2, "listenerHandler"    # Landroid/os/Handler;
    .param p3, "imageCaptureListenerExecutor"    # Ljava/util/concurrent/Executor;

    .prologue
    const-wide/16 v0, 0x0

    .line 330
    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 259
    iput-wide v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugLastOnCaptureCompletedMillis:J

    .line 264
    iput-wide v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugStalledFrameCount:J

    .line 274
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 309
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadata:Ljava/util/Map;

    .line 316
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    .line 334
    new-instance v0, Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    add-int/lit8 v1, p1, -0x2

    invoke-direct {v0, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    .line 337
    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mListenerHandler:Landroid/os/Handler;

    .line 338
    iput-object p3, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mImageCaptureListenerExecutor:Ljava/util/concurrent/Executor;

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/ImageCaptureManager;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/ImageCaptureManager;)Lcom/android/camera/util/ConcurrentSharedRingBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/ImageCaptureManager;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    return-object v0
.end method

.method private clearCapturedImageBuffer(I)V
    .locals 2
    .param p1, "unpinnedReservedSlots"    # I

    .prologue
    .line 749
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    invoke-virtual {v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->releaseAll()V

    .line 750
    invoke-direct {p0}, Lcom/android/camera/one/v2/ImageCaptureManager;->closeBuffer()V

    .line 752
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->reopenBuffer(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :goto_0
    return-void

    .line 753
    :catch_0
    move-exception v0

    .line 754
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private closeBuffer()V
    .locals 3

    .prologue
    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    new-instance v2, Lcom/android/camera/one/v2/ImageCaptureManager$8;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/ImageCaptureManager$8;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->close(Lcom/android/camera/util/Task;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    return-void

    .line 769
    :catch_0
    move-exception v0

    .line 770
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private doImageSwap(Landroid/media/Image;)Z
    .locals 4
    .param p1, "newImage"    # Landroid/media/Image;

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v2

    new-instance v1, Lcom/android/camera/one/v2/ImageCaptureManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$4;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Landroid/media/Image;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->swapLeast(JLcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;)Z

    move-result v0

    return v0
.end method

.method private doMetaDataSwap(Landroid/hardware/camera2/TotalCaptureResult;J)Z
    .locals 2
    .param p1, "newMetadata"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "timestamp"    # J

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    new-instance v1, Lcom/android/camera/one/v2/ImageCaptureManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$3;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Landroid/hardware/camera2/TotalCaptureResult;)V

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->swapLeast(JLcom/android/camera/util/ConcurrentSharedRingBuffer$SwapTask;)Z

    move-result v0

    return v0
.end method

.method private tryExecuteCaptureOrRelease(Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)Z
    .locals 6
    .param p2, "callback"    # Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;",
            ">;",
            "Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "toCapture":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    const/4 v2, 0x0

    .line 696
    if-nez p1, :cond_0

    move v1, v2

    .line 718
    :goto_0
    return v1

    .line 700
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mImageCaptureListenerExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/android/camera/one/v2/ImageCaptureManager$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/camera/one/v2/ImageCaptureManager$7;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    const/4 v1, 0x1

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 714
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    move v1, v2

    .line 715
    goto :goto_0
.end method

.method private tryExecutePendingCaptureRequest(J)V
    .locals 9
    .param p1, "newImageTimestamp"    # J

    .prologue
    const/4 v6, 0x0

    .line 591
    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureCallback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    if-eqz v4, :cond_0

    .line 592
    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    invoke-virtual {v4, p1, p2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->tryPin(J)Landroid/util/Pair;

    move-result-object v3

    .line 594
    .local v3, "pinnedImage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    if-eqz v3, :cond_0

    .line 595
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    .line 597
    .local v2, "image":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    invoke-virtual {v2}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->isComplete()Z

    move-result v4

    if-nez v4, :cond_1

    .line 598
    iget-object v5, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    .line 626
    .end local v2    # "image":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    .end local v3    # "pinnedImage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    :cond_0
    :goto_0
    return-void

    .line 603
    .restart local v2    # "image":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;
    .restart local v3    # "pinnedImage":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 605
    .local v0, "captureResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureConstraints:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 606
    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureConstraints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;

    .line 607
    .local v1, "constraint":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;
    invoke-interface {v1, v0}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;->satisfiesConstraint(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 608
    iget-object v5, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->release(J)V

    goto :goto_0

    .line 617
    .end local v1    # "constraint":Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;
    :cond_3
    iget-object v4, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureCallback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    invoke-direct {p0, v3, v4}, Lcom/android/camera/one/v2/ImageCaptureManager;->tryExecuteCaptureOrRelease(Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 621
    iput-object v6, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureCallback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    .line 622
    iput-object v6, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureConstraints:Ljava/util/List;

    goto :goto_0
.end method

.method private updateMetadataChangeListeners(Landroid/hardware/camera2/CaptureResult;)V
    .locals 14
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v8

    .line 430
    .local v8, "frameNumber":J
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureResult$Key;

    .line 431
    .local v3, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<*>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadata:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    .line 432
    .local v10, "oldEntry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    if-eqz v10, :cond_1

    iget-object v4, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 434
    .local v4, "oldValue":Ljava/lang/Object;
    :goto_0
    if-eqz v10, :cond_2

    iget-object v0, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 435
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    const/4 v7, 0x1

    .line 436
    .local v7, "newerValueAlreadyExists":Z
    :goto_1
    if-nez v7, :cond_0

    .line 440
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 441
    .local v5, "newValue":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadata:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v1, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    if-eq v4, v5, :cond_0

    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;

    .line 451
    .local v2, "listener":Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;
    iget-object v13, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mListenerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/camera/one/v2/ImageCaptureManager$2;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/one/v2/ImageCaptureManager$2;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;Ljava/lang/Object;Landroid/hardware/camera2/CaptureResult;)V

    invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 432
    .end local v2    # "listener":Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;
    .end local v4    # "oldValue":Ljava/lang/Object;
    .end local v5    # "newValue":Ljava/lang/Object;
    .end local v7    # "newerValueAlreadyExists":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 435
    .restart local v4    # "oldValue":Ljava/lang/Object;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 460
    .end local v3    # "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<*>;"
    .end local v4    # "oldValue":Ljava/lang/Object;
    .end local v10    # "oldEntry":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public addMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)V
    .locals 2
    .param p2, "listener"    # Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;",
            "Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 362
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 367
    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 366
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method public captureNextImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)V
    .locals 0
    .param p1, "onImageCaptured"    # Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 580
    .local p2, "constraints":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;>;"
    iput-object p1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureCallback:Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;

    .line 581
    iput-object p2, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mPendingImageCaptureConstraints:Ljava/util/List;

    .line 582
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/android/camera/one/v2/ImageCaptureManager;->closeBuffer()V

    .line 565
    return-void
.end method

.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 12
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .prologue
    .line 399
    sget-object v3, Landroid/hardware/camera2/TotalCaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 401
    .local v4, "timestamp":J
    invoke-direct {p0, p3}, Lcom/android/camera/one/v2/ImageCaptureManager;->updateMetadataChangeListeners(Landroid/hardware/camera2/CaptureResult;)V

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 405
    .local v0, "now":J
    iget-wide v6, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugLastOnCaptureCompletedMillis:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x5

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 406
    sget-object v3, Lcom/android/camera/one/v2/ImageCaptureManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Camera thread has stalled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugStalledFrameCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugStalledFrameCount:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " frames at # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 407
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 406
    invoke-static {v3, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 411
    :goto_0
    iput-wide v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugLastOnCaptureCompletedMillis:J

    .line 416
    invoke-direct {p0, p3, v4, v5}, Lcom/android/camera/one/v2/ImageCaptureManager;->doMetaDataSwap(Landroid/hardware/camera2/TotalCaptureResult;J)Z

    move-result v2

    .line 417
    .local v2, "swapSuccess":Z
    if-nez v2, :cond_0

    .line 419
    sget-object v3, Lcom/android/camera/one/v2/ImageCaptureManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Unable to add new image metadata to ring-buffer."

    invoke-static {v3, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 422
    :cond_0
    invoke-direct {p0, v4, v5}, Lcom/android/camera/one/v2/ImageCaptureManager;->tryExecutePendingCaptureRequest(J)V

    .line 423
    return-void

    .line 409
    .end local v2    # "swapSuccess":Z
    :cond_1
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mDebugStalledFrameCount:J

    goto :goto_0
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "partialResult"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 393
    invoke-direct {p0, p3}, Lcom/android/camera/one/v2/ImageCaptureManager;->updateMetadataChangeListeners(Landroid/hardware/camera2/CaptureResult;)V

    .line 394
    return-void
.end method

.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 14
    .param p1, "reader"    # Landroid/media/ImageReader;

    .prologue
    .line 523
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    .line 525
    .local v4, "startTime":J
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2

    .line 527
    .local v2, "img":Landroid/media/Image;
    if-eqz v2, :cond_1

    .line 528
    iget-object v7, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    .line 533
    .local v3, "numOpenImages":I
    invoke-virtual {v2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v8

    .line 535
    .local v8, "timestamp":J
    invoke-direct {p0, v2}, Lcom/android/camera/one/v2/ImageCaptureManager;->doImageSwap(Landroid/media/Image;)Z

    move-result v6

    .line 536
    .local v6, "swapSuccess":Z
    if-nez v6, :cond_0

    .line 540
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 541
    iget-object v7, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mNumOpenImages:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 547
    :cond_0
    invoke-direct {p0, v8, v9}, Lcom/android/camera/one/v2/ImageCaptureManager;->tryExecutePendingCaptureRequest(J)V

    .line 549
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 550
    .local v0, "endTime":J
    sub-long v10, v0, v4

    .line 551
    .local v10, "totTime":J
    const-wide/16 v12, 0x19

    cmp-long v7, v10, v12

    if-lez v7, :cond_1

    .line 554
    sget-object v7, Lcom/android/camera/one/v2/ImageCaptureManager;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onImageAvailable() took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 557
    .end local v0    # "endTime":J
    .end local v3    # "numOpenImages":I
    .end local v6    # "swapSuccess":Z
    .end local v8    # "timestamp":J
    .end local v10    # "totTime":J
    :cond_1
    return-void
.end method

.method public removeMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)Z
    .locals 1
    .param p2, "listener"    # Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<TT;>;",
            "Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "key":Landroid/hardware/camera2/CaptureResult$Key;, "Landroid/hardware/camera2/CaptureResult$Key<TT;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    const/4 v0, 0x0

    .line 386
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mMetadataChangeListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCaptureReadyListener(Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    iget-object v1, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mListenerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/one/v2/ImageCaptureManager$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/ImageCaptureManager$1;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->setListener(Landroid/os/Handler;Lcom/android/camera/util/ConcurrentSharedRingBuffer$PinStateListener;)V

    .line 352
    return-void
.end method

.method public tryCaptureExistingImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)Z
    .locals 3
    .param p1, "onImageCaptured"    # Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 639
    .local p2, "constraints":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 641
    :cond_0
    new-instance v0, Lcom/android/camera/one/v2/ImageCaptureManager$5;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/ImageCaptureManager$5;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;)V

    .line 678
    .local v0, "selector":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    invoke-virtual {v2, v0}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->tryPinGreatestSelected(Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;)Landroid/util/Pair;

    move-result-object v1

    .line 681
    .local v1, "toCapture":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/camera/one/v2/ImageCaptureManager;->tryExecuteCaptureOrRelease(Landroid/util/Pair;Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;)Z

    move-result v2

    return v2

    .line 651
    .end local v0    # "selector":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    .end local v1    # "toCapture":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    :cond_1
    new-instance v0, Lcom/android/camera/one/v2/ImageCaptureManager$6;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/one/v2/ImageCaptureManager$6;-><init>(Lcom/android/camera/one/v2/ImageCaptureManager;Ljava/util/List;)V

    .restart local v0    # "selector":Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector;, "Lcom/android/camera/util/ConcurrentSharedRingBuffer$Selector<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    goto :goto_0
.end method

.method public tryCapturePinnedImage(J)Landroid/util/Pair;
    .locals 5
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v3, p0, Lcom/android/camera/one/v2/ImageCaptureManager;->mCapturedImageBuffer:Lcom/android/camera/util/ConcurrentSharedRingBuffer;

    .line 731
    invoke-virtual {v3, p1, p2}, Lcom/android/camera/util/ConcurrentSharedRingBuffer;->tryGetPinned(J)Landroid/util/Pair;

    move-result-object v2

    .line 732
    .local v2, "toCapture":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;>;"
    const/4 v1, 0x0

    .line 733
    .local v1, "pinnedImage":Landroid/media/Image;
    const/4 v0, 0x0

    .line 735
    .local v0, "imageCaptureResult":Landroid/hardware/camera2/TotalCaptureResult;
    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 736
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetImage()Landroid/media/Image;

    move-result-object v1

    .line 737
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;

    invoke-virtual {v3}, Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImage;->tryGetMetadata()Landroid/hardware/camera2/TotalCaptureResult;

    move-result-object v0

    .line 739
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method
