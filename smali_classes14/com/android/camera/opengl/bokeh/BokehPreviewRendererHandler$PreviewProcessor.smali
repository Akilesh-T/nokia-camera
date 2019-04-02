.class Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;
.super Landroid/os/Handler;
.source "BokehPreviewRendererHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewProcessor"
.end annotation


# instance fields
.field private mBlurIntensity:Ljava/lang/Integer;

.field private mFaceCenter:Landroid/graphics/PointF;

.field private mFocusCenter:Landroid/graphics/PointF;

.field private mIinited:Z

.field private mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

.field private mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

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

.field private final mSlaveBufferQueue:Lcom/android/camera/async/BufferQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/BufferQueue",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mSlaveInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

.field private final mVUBufferSize:I

.field private final mYBufferSize:I

.field final synthetic this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;


# direct methods
.method public constructor <init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;Landroid/os/Looper;Lcom/android/camera/async/Lifetime;II)V
    .locals 10
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "lifetime"    # Lcom/android/camera/async/Lifetime;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/16 v5, 0x23

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 179
    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 180
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mBlurIntensity:Ljava/lang/Integer;

    .line 181
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    .line 182
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    .line 190
    int-to-double v0, p4

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v7, v0, 0x40

    .line 192
    .local v7, "aligned64_width":I
    mul-int v0, v7, p5

    iput v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    .line 193
    iget v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    .line 195
    sget-object v2, Lcom/android/camera/opengl/ImageSource;->MAIN:Lcom/android/camera/opengl/ImageSource;

    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$400()I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;

    move-result-object v8

    .line 196
    .local v8, "mainPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 197
    iget-object v0, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/BufferQueue;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 199
    sget-object v2, Lcom/android/camera/opengl/ImageSource;->SLAVE:Lcom/android/camera/opengl/ImageSource;

    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$400()I

    move-result v6

    move-object v0, p0

    move-object v1, p3

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;

    move-result-object v9

    .line 200
    .local v9, "slavePair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/async/BufferQueue<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;>;"
    iget-object v0, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mSlaveInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    .line 201
    iget-object v0, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/async/BufferQueue;

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mSlaveBufferQueue:Lcom/android/camera/async/BufferQueue;

    .line 202
    return-void
.end method

.method private generateInputImagePair(Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/ImageSource;IIII)Landroid/util/Pair;
    .locals 7
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
    .line 331
    new-instance v0, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;

    new-instance v4, Lcom/android/camera/one/v2/LoggingImageReader;

    .line 332
    invoke-static {p3, p4, p5, p6}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageReaderProxy;->newInstance(IIII)Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    move-result-object v5

    .line 333
    invoke-static {}, Lcom/android/camera/debug/Loggers;->tagFactory()Lcom/android/camera/debug/Logger$Factory;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/camera/one/v2/LoggingImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/debug/Logger$Factory;)V

    invoke-direct {v0, v4}, Lcom/android/camera/one/v2/CloseWhenDoneImageReader;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    .line 334
    .local v0, "imageReader":Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;
    new-instance v4, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;

    invoke-direct {v4, p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$1;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;)V

    invoke-virtual {p1, v4}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 341
    new-instance v3, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getMaxImages()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-direct {v3, v4}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/FiniteTicketPool;-><init>(I)V

    .line 342
    .local v3, "rootTicketPool":Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;
    invoke-virtual {p1, v3}, Lcom/android/camera/async/Lifetime;->add(Lcom/android/camera/async/SafeCloseable;)Lcom/android/camera/async/SafeCloseable;

    .line 344
    new-instance v2, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;

    new-instance v4, Lcom/android/camera/async/Lifetime;

    invoke-direct {v4, p1}, Lcom/android/camera/async/Lifetime;-><init>(Lcom/android/camera/async/Lifetime;)V

    new-instance v5, Lcom/android/camera/async/ConcurrentState;

    .line 345
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;->getMaxCapability()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v4, v3, v5}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;-><init>(Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/v2/sharedimagereader/ticketpool/TicketPool;Lcom/android/camera/async/Observable;)V

    .line 347
    .local v2, "ringBufferFactory":Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;
    new-instance v4, Lcom/android/camera/async/HandlerFactory;

    invoke-direct {v4}, Lcom/android/camera/async/HandlerFactory;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Input Handler - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/camera/async/HandlerFactory;->create(Lcom/android/camera/async/Lifetime;Ljava/lang/String;I)Landroid/os/Handler;

    move-result-object v1

    .line 348
    .local v1, "inputHandler":Landroid/os/Handler;
    new-instance v4, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$2;

    invoke-direct {v4, p0, v0, p2, v2}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor$2;-><init>(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;Lcom/android/camera/opengl/ImageSource;Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;)V

    invoke-interface {v0, v4, v1}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->setOnImageAvailableListener(Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 371
    new-instance v4, Landroid/util/Pair;

    invoke-virtual {v2}, Lcom/android/camera/one/v2/sharedimagereader/ringbuffer/DynamicRingBufferFactory;->provideRingBufferOutput()Lcom/android/camera/async/BufferQueue;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4
.end method

.method private init()V
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 230
    return-void
.end method

.method private onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V
    .locals 10
    .param p1, "imageSource"    # Lcom/android/camera/opengl/ImageSource;
    .param p2, "timestamp"    # J

    .prologue
    .line 233
    iget-boolean v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    if-nez v6, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const/4 v4, 0x0

    .line 236
    .local v4, "needBokeh":Z
    const/4 v0, 0x0

    .line 237
    .local v0, "bokeh_x_position":I
    const/4 v1, 0x0

    .line 238
    .local v1, "bokeh_y_position":I
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    .line 239
    :cond_2
    const/4 v4, 0x1

    .line 240
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 241
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 244
    :cond_3
    if-nez v4, :cond_5

    .line 245
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_5

    .line 246
    :cond_4
    const/4 v4, 0x1

    .line 247
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$000(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 248
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$100(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 252
    :cond_5
    sget-object v6, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$4;->$SwitchMap$com$android$camera$opengl$ImageSource:[I

    invoke-virtual {p1}, Lcom/android/camera/opengl/ImageSource;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 312
    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknow ImageSource : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 254
    :pswitch_0
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_6

    .line 255
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 256
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 260
    :cond_6
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mMainBufferQueue:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v8, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_0

    .line 271
    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_7

    .line 272
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mBlurIntensity:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 273
    .local v3, "level":I
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$600(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->setBlurIntensity(I)I

    .line 274
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$600(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->setFocusPos(II)I

    .line 275
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$600(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v7}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/thirdparty/arcsoft/ArcsoftDCVideoRefocus;->doRefocus(Landroid/media/Image;Landroid/media/Image;)I

    .line 278
    .end local v3    # "level":I
    :cond_7
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$700(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->isReady()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/nio/ByteBuffer;

    .line 280
    .local v5, "planeBuf":[Ljava/nio/ByteBuffer;
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mYBufferSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 281
    const/4 v6, 0x0

    aget-object v7, v5, v6

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 282
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 284
    const/4 v6, 0x1

    iget v7, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mVUBufferSize:I

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 285
    const/4 v6, 0x1

    aget-object v7, v5, v6

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x2

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    const/4 v6, 0x1

    aget-object v7, v5, v6

    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 287
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 289
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->this$0:Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;

    invoke-static {v6}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$700(Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;)Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;

    move-result-object v6

    const/4 v7, 0x7

    const/16 v8, 0x11

    array-length v9, v5

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$RendererHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 261
    .end local v5    # "planeBuf":[Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get main image error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 263
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_0

    .line 264
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 265
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    goto/16 :goto_0

    .line 294
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_8

    .line 295
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 296
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 299
    :cond_8
    if-eqz v4, :cond_0

    .line 301
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mSlaveBufferQueue:Lcom/android/camera/async/BufferQueue;

    const-wide/16 v8, 0x0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v6, v8, v9, v7}, Lcom/android/camera/async/BufferQueue;->getNext(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 302
    :catch_1
    move-exception v2

    .line 303
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler;->access$500()Lcom/android/camera/debug/Log$Tag;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get slave image error : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 304
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v6, :cond_0

    .line 305
    iget-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 306
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    goto/16 :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    .line 319
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 321
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastMainImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 325
    iput-object v1, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mLastSlaveImage:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 327
    :cond_1
    return-void
.end method

.method private setBlurIntensity(I)V
    .locals 1
    .param p1, "blurIntensity"    # I

    .prologue
    .line 395
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mBlurIntensity:Ljava/lang/Integer;

    .line 396
    return-void
.end method

.method private setFaceCenter(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "faceCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFaceCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 392
    return-void
.end method

.method private setFocusCenter(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "focusCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mFocusCenter:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 388
    return-void
.end method


# virtual methods
.method public getMainInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mMainInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSlaveInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mSlaveInputImageReader:Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageReaderProxy;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 206
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 226
    :goto_0
    :pswitch_0
    return-void

    .line 208
    :pswitch_1
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->init()V

    goto :goto_0

    .line 211
    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/camera/opengl/ImageSource;->fromValue(I)Lcom/android/camera/opengl/ImageSource;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->onFrameAvaiable(Lcom/android/camera/opengl/ImageSource;J)V

    goto :goto_0

    .line 214
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->setBlurIntensity(I)V

    goto :goto_0

    .line 217
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->setFocusCenter(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 220
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->setFaceCenter(Landroid/graphics/PointF;)V

    goto :goto_0

    .line 223
    :pswitch_6
    invoke-direct {p0}, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->release()V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/android/camera/opengl/bokeh/BokehPreviewRendererHandler$PreviewProcessor;->mIinited:Z

    return v0
.end method
