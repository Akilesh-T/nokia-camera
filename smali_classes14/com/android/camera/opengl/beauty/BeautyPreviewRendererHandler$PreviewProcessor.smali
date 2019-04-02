.class Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;
.super Landroid/os/Handler;
.source "BeautyPreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewProcessor"
.end annotation


# instance fields
.field private mBeautyLevel:Ljava/lang/Integer;

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

.field final synthetic this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V
    .locals 9
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 170
    iput-object p1, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    .line 171
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    iput-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mBeautyLevel:Ljava/lang/Integer;

    .line 173
    int-to-double v0, p4

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v7, v0, 0x40

    .line 175
    .local v7, "aligned64_width":I
    mul-int v0, v7, p5

    iput v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    .line 176
    iget v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    .line 178
    sget-object v2, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    const/16 v5, 0x23

    invoke-static {}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$400()I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;

    move-result-object v8

    .line 179
    .local v8, "mainPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 180
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/BufferQueue;

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 181
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
    .line 245
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v5, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 246
    invoke-static {p3, p4, p5, p6}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v6

    .line 247
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v5}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 248
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    new-instance v5, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$1;

    invoke-direct {v5, p0, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$1;-><init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    invoke-virtual {p1, v5}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 255
    new-instance v4, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-direct {v4, v5}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 256
    .local v4, "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    invoke-virtual {p1, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 258
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    new-instance v5, Lcom/android/camera/async/Lifetime;

    invoke-direct {v5, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v6, Lcom/android/camera/async/ConcurrentState;

    .line 259
    invoke-interface {v4}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getMaxCapability()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v5, v4, v6}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V

    .line 260
    .local v2, "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferInput()Lcom/android/camera/async/BufferQueueController;

    move-result-object v3

    .line 262
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

    .line 263
    .local v1, "inputHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;

    invoke-direct {v5, p0, v0, p2, v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor$2;-><init>(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/ImageSource;Lcom/android/camera/async/BufferQueueController;)V

    invoke-interface {v0, v5, v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 285
    new-instance v5, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferOutput()Lcom/android/camera/async/BufferQueue;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private init()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 203
    return-void
.end method

.method private onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V
    .locals 9
    .param p1, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
    .param p2, "timestamp"    # J

    .prologue
    .line 206
    iget-boolean v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    sget-object v3, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$2;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    invoke-virtual {p1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 209
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    const/4 v4, 0x0

    .line 210
    if-eqz v1, :cond_2

    .line 211
    :try_start_1
    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$500(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mBeautyLevel:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;->setBeautyLevel(I)V

    .line 212
    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$500(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/thirdparty/arcsoft/ArcsoftBeautyVideo;->processImage(Landroid/media/Image;)I

    .line 214
    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$600(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 215
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/nio/ByteBuffer;

    .line 216
    .local v2, "planeBuf":[Ljava/nio/ByteBuffer;
    const/4 v3, 0x0

    iget v5, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 217
    const/4 v3, 0x0

    aget-object v5, v2, v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 218
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 220
    const/4 v3, 0x1

    iget v5, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 221
    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 222
    const/4 v3, 0x1

    aget-object v5, v2, v3

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v3

    const/4 v6, 0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 223
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
    iget-object v3, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;

    invoke-static {v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$600(Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;)Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;

    move-result-object v3

    const/4 v5, 0x5

    const/16 v6, 0x11

    array-length v7, v2

    invoke-virtual {v3, v5, v6, v7, v2}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 228
    .end local v2    # "planeBuf":[Ljava/nio/ByteBuffer;
    :cond_2
    if-eqz v1, :cond_0

    if-eqz v4, :cond_3

    :try_start_2
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .end local v1    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .restart local v1    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :cond_3
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 230
    .end local v1    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_2
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler;->access$700()Lcom/android/camera/debug/Log$Tag;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Get main image error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "mainImage":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :catch_3
    move-exception v3

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    :catchall_0
    move-exception v4

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    :goto_1
    if-eqz v1, :cond_4

    if-eqz v4, :cond_5

    :try_start_5
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_2
    :try_start_6
    throw v3

    :catch_4
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catchall_1
    move-exception v3

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private release()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 241
    return-void
.end method

.method private setBeautyLevel(I)V
    .locals 1
    .param p1, "beautyLevel"    # I

    .prologue
    .line 297
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mBeautyLevel:Ljava/lang/Integer;

    .line 298
    return-void
.end method


# virtual methods
.method public getMainInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 199
    :goto_0
    :pswitch_0
    return-void

    .line 187
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->init()V

    goto :goto_0

    .line 190
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/camera/opengl/ImageSource;->fromValue(I)Lcom/android/camera/opengl/ImageSource;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V

    goto :goto_0

    .line 193
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->setBeautyLevel(I)V

    goto :goto_0

    .line 196
    :pswitch_4
    invoke-direct {p0}, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->release()V

    goto :goto_0

    .line 185
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
    .line 289
    iget-boolean v0, p0, Lcom/android/camera/opengl/beauty/BeautyPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    return v0
.end method
