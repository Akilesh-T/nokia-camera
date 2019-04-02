.class public Lcom/android/camera/burst/BurstCaptureCommand;
.super Ljava/lang/Object;
.source "BurstCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/commands/CameraCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final BURST_TEMPLATE_TYPE:I = 0x4

.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mBurstController:Lcom/android/camera/burst/BurstController;

.field private final mBurstEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

.field private final mBurstInputSurface:Landroid/view/Surface;

.field private final mBurstLifetime:Lcom/android/camera/async/Lifetime;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

.field private final mMaxImageCount:I

.field private final mRestorePreviewCommand:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BurstCaptureCommand"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/burst/EvictionHandler;Lcom/android/camera/burst/BurstController;Ljava/lang/Runnable;I)V
    .locals 1
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "managedImageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;
    .param p4, "burstInputSurface"    # Landroid/view/Surface;
    .param p5, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "burstEvictionHandler"    # Lcom/android/camera/burst/EvictionHandler;
    .param p7, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p8, "restorePreviewCommand"    # Ljava/lang/Runnable;
    .param p9, "maxImageCount"    # I

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 102
    new-instance v0, Lcom/android/camera/one/v2/core/RequestTemplate;

    invoke-direct {v0, p2}, Lcom/android/camera/one/v2/core/RequestTemplate;-><init>(Lcom/android/camera/one/v2/core/RequestBuilder$Factory;)V

    iput-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 103
    iput-object p3, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 104
    iput-object p4, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstInputSurface:Landroid/view/Surface;

    .line 105
    iput-object p5, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    .line 106
    iput-object p6, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    .line 107
    iput-object p7, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    .line 108
    iput-object p8, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    .line 109
    iput p9, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mMaxImageCount:I

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/burst/BurstCaptureCommand;)Landroid/view/Surface;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstCaptureCommand;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstInputSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/burst/BurstCaptureCommand;)Lcom/android/camera/burst/EvictionHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/burst/BurstCaptureCommand;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    return-object v0
.end method

.method private static checkAndApplyNexus5FrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestBuilder;)V
    .locals 3
    .param p0, "request"    # Lcom/android/camera/one/v2/core/RequestBuilder;

    .prologue
    .line 193
    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v1, :cond_0

    .line 195
    new-instance v0, Landroid/util/Range;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 196
    .local v0, "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 198
    .end local v0    # "frameRateBackOff":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v1, "capturedImages":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v9}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v8

    .local v8, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v12, 0x0

    .line 120
    :try_start_1
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mMaxImageCount:I

    add-int/lit8 v7, v9, -0x1

    .line 121
    .local v7, "ringBufferSize":I
    new-instance v6, Lcom/android/camera/burst/RingBuffer;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstEvictionHandler:Lcom/android/camera/burst/EvictionHandler;

    invoke-direct {v6, v7, v9}, Lcom/android/camera/burst/RingBuffer;-><init>(ILcom/android/camera/burst/EvictionHandler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .local v6, "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    const/4 v11, 0x0

    .line 123
    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mManagedImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mMaxImageCount:I

    .line 124
    invoke-virtual {v9, v10}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 123
    .local v3, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v10, 0x0

    .line 125
    :try_start_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstLifetime:Lcom/android/camera/async/Lifetime;

    invoke-virtual {v9, v3}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 128
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v13, 0x4

    .line 129
    invoke-interface {v9, v13}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 130
    .local v5, "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v13, 0x3

    .line 131
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 130
    invoke-virtual {v5, v9, v13}, Lcom/android/camera/one/v2/core/RequestBuilder;->setParam(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 132
    invoke-static {v5}, Lcom/android/camera/burst/BurstCaptureCommand;->checkAndApplyNexus5FrameRateWorkaround(Lcom/android/camera/one/v2/core/RequestBuilder;)V

    .line 134
    invoke-virtual {v5, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 136
    new-instance v9, Lcom/android/camera/burst/BurstCaptureCommand$1;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/burst/BurstCaptureCommand$1;-><init>(Lcom/android/camera/burst/BurstCaptureCommand;)V

    invoke-virtual {v5, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 147
    new-instance v9, Lcom/android/camera/burst/BurstCaptureCommand$2;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/android/camera/burst/BurstCaptureCommand$2;-><init>(Lcom/android/camera/burst/BurstCaptureCommand;)V

    invoke-virtual {v5, v9}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 154
    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/camera/one/v2/core/Request;

    const/4 v13, 0x0

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v14

    aput-object v14, v9, v13

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget-object v13, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v8, v9, v13}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_9

    .line 158
    :goto_0
    :try_start_4
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->isClosed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 160
    new-instance v4, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v4}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 161
    .local v4, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v5, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 163
    new-instance v9, Lcom/android/camera/one/v2/imagesaver/MetadataImage;

    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v13

    .line 164
    invoke-virtual {v4}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v13, v14, v15, v0}, Lcom/android/camera/one/v2/imagesaver/MetadataImage;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V

    .line 163
    invoke-virtual {v6, v9}, Lcom/android/camera/burst/RingBuffer;->insertImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)V
    :try_end_4
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_9

    goto :goto_0

    .line 166
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    :catch_0
    move-exception v9

    .line 169
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v10, :cond_6

    :try_start_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 172
    :cond_1
    :goto_1
    :try_start_6
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->getAndRemoveAllImages()Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    move-result-object v1

    .line 174
    if-eqz v6, :cond_2

    if-eqz v11, :cond_9

    :try_start_7
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 175
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    if-eqz v12, :cond_b

    :try_start_8
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 181
    :cond_3
    :goto_3
    :try_start_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v9, v1}, Lcom/android/camera/burst/BurstController;->processBurstResults(Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 184
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 187
    return-void

    .line 169
    :catch_1
    move-exception v9

    :try_start_a
    invoke-virtual {v10, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 172
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catchall_0
    move-exception v9

    :try_start_b
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->getAndRemoveAllImages()Ljava/util/List;

    move-result-object v1

    throw v9
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 121
    :catch_2
    move-exception v9

    :try_start_c
    throw v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 174
    :catchall_1
    move-exception v10

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    :goto_4
    if-eqz v6, :cond_4

    if-eqz v10, :cond_a

    :try_start_d
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :cond_4
    :goto_5
    :try_start_e
    throw v9
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 116
    .end local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .end local v7    # "ringBufferSize":I
    :catch_3
    move-exception v9

    :try_start_f
    throw v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 175
    :catchall_2
    move-exception v10

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    :goto_6
    if-eqz v8, :cond_5

    if-eqz v10, :cond_c

    :try_start_10
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_5
    :goto_7
    :try_start_11
    throw v9
    :try_end_11
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .end local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_4
    move-exception v2

    .line 176
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_12
    sget-object v9, Lcom/android/camera/burst/BurstCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TimeoutException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timeout when running command : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 179
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_3
    move-exception v9

    .line 181
    :try_start_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mBurstController:Lcom/android/camera/burst/BurstController;

    invoke-interface {v10, v1}, Lcom/android/camera/burst/BurstController;->processBurstResults(Ljava/util/List;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 184
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    throw v9

    .line 169
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .restart local v7    # "ringBufferSize":I
    .restart local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :cond_6
    :try_start_14
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 123
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_5
    move-exception v9

    :try_start_15
    throw v9
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 169
    :catchall_4
    move-exception v10

    move-object/from16 v17, v10

    move-object v10, v9

    move-object/from16 v9, v17

    :goto_8
    if-eqz v3, :cond_7

    if-eqz v10, :cond_8

    :try_start_16
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    :cond_7
    :goto_9
    :try_start_17
    throw v9

    :catch_6
    move-exception v13

    invoke-virtual {v10, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_9

    :cond_8
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_9

    .line 174
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_7
    move-exception v9

    :try_start_18
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 175
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .end local v7    # "ringBufferSize":I
    :catchall_5
    move-exception v9

    move-object v10, v12

    goto :goto_6

    .line 174
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .restart local v7    # "ringBufferSize":I
    :cond_9
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V

    goto/16 :goto_2

    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_8
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v6}, Lcom/android/camera/burst/RingBuffer;->close()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto/16 :goto_5

    .line 175
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_9
    move-exception v9

    :try_start_19
    invoke-virtual {v12, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :cond_b
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto/16 :goto_3

    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .end local v7    # "ringBufferSize":I
    :catch_a
    move-exception v11

    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_c
    invoke-interface {v8}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_19
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_19 .. :try_end_19} :catch_4
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    goto/16 :goto_7

    .line 184
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .restart local v7    # "ringBufferSize":I
    :catchall_6
    move-exception v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    throw v9

    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .end local v7    # "ringBufferSize":I
    .end local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_7
    move-exception v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/burst/BurstCaptureCommand;->mRestorePreviewCommand:Ljava/lang/Runnable;

    invoke-interface {v10}, Ljava/lang/Runnable;->run()V

    throw v9

    .line 174
    .restart local v6    # "ringBuffer":Lcom/android/camera/burst/RingBuffer;, "Lcom/android/camera/burst/RingBuffer<Lcom/android/camera/one/v2/imagesaver/MetadataImage;>;"
    .restart local v7    # "ringBufferSize":I
    .restart local v8    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catchall_8
    move-exception v9

    move-object v10, v11

    goto/16 :goto_4

    .line 169
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_9
    move-exception v9

    goto :goto_8
.end method
