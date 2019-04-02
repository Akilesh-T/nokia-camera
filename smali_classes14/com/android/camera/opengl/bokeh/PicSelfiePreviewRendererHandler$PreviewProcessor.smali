.class Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;
.super Landroid/os/Handler;
.source "PicSelfiePreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewProcessor"
.end annotation


# instance fields
.field private mBokehLevel:Ljava/lang/Integer;

.field private mIinited:Z

.field private final mMainBufferQueue:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field private final mVUBufferSize:I

.field private final mYBufferSize:I

.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V
    .locals 9
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 302
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    .line 303
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mBokehLevel:Ljava/lang/Integer;

    .line 305
    int-to-double v0, p4

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v7, v0, 0x40

    .line 307
    .local v7, "aligned64_width":I
    mul-int v0, v7, p5

    iput v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    .line 308
    iget v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    .line 310
    sget-object v2, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const/16 v5, 0x23

    invoke-static {}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$600()I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;

    move-result-object v8

    .line 311
    .local v8, "mainPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 312
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/BufferQueue;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 313
    return-void
.end method

.method private generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;
    .locals 8
    .param p1, "lifetime"    # Lcom/android/camera/async/Lifetime;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "format"    # I
    .param p6, "maxImageCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Lifetime;",
            "Lcom/android/camera/opengl/ImageSource;",
            "IIII)",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;",
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v5, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 429
    invoke-static {p3, p4, p5, p6}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v6

    .line 430
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v5}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 431
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    new-instance v5, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor$1;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor$1;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    invoke-virtual {p1, v5}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 438
    new-instance v4, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 439
    .local v4, "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    invoke-virtual {p1, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 441
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    new-instance v5, Lcom/android/camera/async/Lifetime;

    invoke-direct {v5, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/ConcurrentState;

    .line 442
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getMaxCapability()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v5, v4, v6}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V

    .line 443
    .local v2, "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferInput()Lcom/android/camera/async/BufferQueueController;

    move-result-object v3

    .line 445
    .local v3, "ringBufferInput":Lcom/android/camera/async/BufferQueueController;, "Lcom/android/camera/async/BufferQueueController<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    new-instance v5, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v5}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input Handler - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xa

    invoke-virtual {v5, p1, v6, v7}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    .line 446
    .local v1, "inputHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor$2;

    invoke-direct {v5, p0, v0, p2, v3}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor$2;-><init>(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/ImageSource;Lcom/android/camera/async/BufferQueueController;)V

    invoke-interface {v0, v5, v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 468
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferOutput()Lcom/android/camera/async/BufferQueue;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private init()V
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 335
    return-void
.end method

.method private onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V
    .locals 18
    .param p1, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
    .param p2, "timestamp"    # J

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mIinited:Z

    if-nez v11, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$700(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v12

    monitor-enter v12

    .line 340
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$700(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v11

    if-eqz v11, :cond_2

    monitor-exit v12

    goto :goto_0

    .line 341
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    :cond_2
    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 342
    sget-object v11, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$3;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 344
    :pswitch_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v12, 0x0

    sget-object v14, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v11, v12, v13, v14}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .local v7, "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const/4 v12, 0x0

    .line 345
    if-eqz v7, :cond_a

    .line 346
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$300(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;

    move-result-object v13

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 347
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/4 v15, 0x1

    invoke-interface {v11, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 348
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 346
    invoke-virtual {v13, v14, v15, v11}, Lcom/android/camera/opengl/effect/beauty/BeautyEffectEngine;->detectFace(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    .line 350
    invoke-static {}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->isSupported()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 352
    const/4 v2, 0x0

    .line 353
    .local v2, "bokehAngle":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$400(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/app/AppController;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    .line 354
    .local v4, "deviceAngle":I
    if-nez v4, :cond_4

    .line 355
    const/16 v2, 0x5a

    .line 366
    :cond_3
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 367
    .local v3, "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    if-eqz v11, :cond_9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    array-length v11, v11

    if-lez v11, :cond_9

    .line 368
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    array-length v11, v11

    if-ge v6, v11, :cond_9

    .line 369
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 370
    .local v9, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v14}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    cmpl-float v11, v11, v13

    if-lez v11, :cond_7

    .line 371
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    iput v11, v9, Landroid/graphics/Rect;->left:I

    .line 372
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 373
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v11, v13

    .line 374
    .local v10, "scale":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->top:I

    .line 375
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    .line 384
    :goto_3
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 356
    .end local v3    # "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v6    # "i":I
    .end local v9    # "r":Landroid/graphics/Rect;
    .end local v10    # "scale":F
    :cond_4
    const/16 v11, 0xb4

    if-ne v4, v11, :cond_5

    .line 357
    const/16 v2, 0x10e

    goto/16 :goto_1

    .line 358
    :cond_5
    const/16 v11, 0x10e

    if-ne v4, v11, :cond_6

    .line 359
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 360
    :cond_6
    const/16 v11, 0x5a

    if-ne v4, v11, :cond_3

    .line 361
    const/16 v2, 0xb4

    goto/16 :goto_1

    .line 377
    .restart local v3    # "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v6    # "i":I
    .restart local v9    # "r":Landroid/graphics/Rect;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v11

    int-to-float v11, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float v10, v11, v13

    .line 378
    .restart local v10    # "scale":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->left:I

    .line 379
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->right:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    .line 380
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    iput v11, v9, Landroid/graphics/Rect;->top:I

    .line 381
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$800(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)[Landroid/hardware/camera2/params/Face;

    move-result-object v11

    aget-object v11, v11, v6

    invoke-virtual {v11}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    mul-int/lit16 v11, v11, 0x7d0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v13}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$900(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/2addr v11, v13

    add-int/lit16 v11, v11, -0x3e8

    iput v11, v9, Landroid/graphics/Rect;->bottom:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_3

    .line 344
    .end local v2    # "bokehAngle":I
    .end local v3    # "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "deviceAngle":I
    .end local v6    # "i":I
    .end local v9    # "r":Landroid/graphics/Rect;
    .end local v10    # "scale":F
    :catch_0
    move-exception v11

    :try_start_4
    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 411
    :catchall_1
    move-exception v12

    move-object/from16 v17, v12

    move-object v12, v11

    move-object/from16 v11, v17

    :goto_4
    if-eqz v7, :cond_8

    if-eqz v12, :cond_d

    :try_start_5
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_8
    :goto_5
    :try_start_6
    throw v11
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v7    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_1
    move-exception v11

    goto/16 :goto_0

    .line 390
    .restart local v2    # "bokehAngle":I
    .restart local v3    # "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .restart local v4    # "deviceAngle":I
    .restart local v7    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_9
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mBokehLevel:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->setBokehLevel(I)V

    .line 391
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1000(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/imagelab/EverPicSelfieVideo;

    move-result-object v11

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v13

    invoke-virtual {v11, v13, v2, v3}, Lcom/thirdparty/imagelab/EverPicSelfieVideo;->processImage(Landroid/media/Image;ILjava/util/ArrayList;)I

    .line 398
    .end local v2    # "bokehAngle":I
    .end local v3    # "detectFaces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    .end local v4    # "deviceAngle":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 399
    const/4 v11, 0x2

    new-array v8, v11, [Ljava/nio/ByteBuffer;

    .line 400
    .local v8, "planeBuf":[Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    aput-object v13, v8, v11

    .line 401
    const/4 v11, 0x0

    aget-object v13, v8, v11

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x0

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 402
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    aput-object v13, v8, v11

    .line 405
    const/4 v11, 0x1

    aget-object v13, v8, v11

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x2

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 406
    const/4 v11, 0x1

    aget-object v13, v8, v11

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v11

    const/4 v14, 0x1

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v13, v11}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 407
    const/4 v11, 0x1

    aget-object v11, v8, v11

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1200(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;

    move-result-object v11

    const/4 v13, 0x5

    const/16 v14, 0x11

    array-length v15, v8

    invoke-virtual {v11, v13, v14, v15, v8}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 411
    .end local v8    # "planeBuf":[Ljava/nio/ByteBuffer;
    :cond_a
    if-eqz v7, :cond_0

    if-eqz v12, :cond_c

    :try_start_8
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v11

    :try_start_9
    invoke-virtual {v12, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 413
    .end local v7    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_3
    move-exception v5

    .line 414
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1300()Lcom/android/camera/debug/Log$Tag;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Get main image error : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 394
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mBokehLevel:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v11, v13}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->setBokehLevel(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;

    invoke-static {v11}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;->access$1100(Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;

    move-result-object v11

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/thirdparty/arcsoft/ArcsoftPicSelfieVideo;->processImage(Landroid/media/Image;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_6

    .line 411
    :catchall_2
    move-exception v11

    goto/16 :goto_4

    :cond_c
    :try_start_b
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    goto/16 :goto_0

    :catch_4
    move-exception v13

    invoke-virtual {v12, v13}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_d
    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_b
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 342
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release()V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 424
    return-void
.end method

.method private setBokehLevel(I)V
    .locals 1
    .param p1, "bokehLevel"    # I

    .prologue
    .line 480
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mBokehLevel:Ljava/lang/Integer;

    .line 481
    return-void
.end method


# virtual methods
.method public getMainInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->init()V

    goto :goto_0

    .line 322
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/camera/opengl/ImageSource;->fromValue(I)Lcom/android/camera/opengl/ImageSource;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V

    goto :goto_0

    .line 325
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->setBokehLevel(I)V

    goto :goto_0

    .line 328
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->release()V

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/PicSelfiePreviewRendererHandler$PreviewProcessor;->mIinited:Z

    return v0
.end method
