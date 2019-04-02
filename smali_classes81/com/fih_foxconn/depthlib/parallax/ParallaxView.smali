.class public Lcom/fih_foxconn/depthlib/parallax/ParallaxView;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta\" x:xmptk=\"XMP Core 5.1.2\"><rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\"><rdf:Description rdf:about=\"\" xmlns:GCamera=\"http://ns.google.com/photos/1.0/camera/\"><GCamera:MicroVideo>1</GCamera:MicroVideo><GCamera:MicroVideoVersion>1</GCamera:MicroVideoVersion><GCamera:MicroVideoOffset>-1</GCamera:MicroVideoOffset><GCamera:MicroVideoPresentationTimestampUs>-1</GCamera:MicroVideoPresentationTimestampUs></rdf:Description></rdf:RDF></x:xmpmeta>"

    sput-object v0, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->a:Ljava/lang/String;

    const-string v0, "depth-improcess"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 19

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v2, v6

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit8 v8, v2, -0x2

    int-to-float v2, v7

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    and-int/lit8 v9, v2, -0x2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    const-string v5, "video/avc"

    new-instance v2, Landroid/media/MediaCodecList;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/media/MediaCodecList;-><init>(I)V

    invoke-virtual {v2}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v10

    array-length v11, v10

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v11, :cond_2

    aget-object v2, v10, v4

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v13, :cond_1

    aget-object v14, v12, v3

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    :goto_2
    if-nez v2, :cond_3

    const-string v2, "ParallaxView"

    const-string v3, "No suitable encoder found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_3
    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const-string v3, "video/avc"

    invoke-static {v3, v8, v9}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "color-format"

    const v5, 0x7f000789

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "bitrate"

    const v5, 0x989680

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "frame-rate"

    const/16 v5, 0x1e

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "i-frame-interval"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :try_start_0
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v10, v3, v2, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {v10}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10}, Landroid/media/MediaCodec;->start()V

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    :try_start_1
    new-instance v12, Landroid/media/MediaMuxer;

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14, v14}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v13, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v14, Landroid/graphics/PointF;

    neg-int v2, v6

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    neg-int v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {v14, v2, v6}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v6, Landroid/graphics/PointF;

    div-int/lit8 v2, v8, 0x2

    int-to-float v2, v2

    div-int/lit8 v7, v9, 0x2

    int-to-float v7, v7

    invoke-direct {v6, v2, v7}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/4 v2, 0x0

    move/from16 v18, v2

    move v2, v5

    move v5, v4

    move v4, v3

    move/from16 v3, v18

    :goto_4
    const/16 v8, 0x96

    if-gt v3, v8, :cond_a

    const/4 v8, 0x0

    invoke-virtual {v11, v8}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    const/high16 v9, -0x1000000

    invoke-virtual {v8, v9}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget v9, v14, Landroid/graphics/PointF;->x:F

    iget v15, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v7, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v8, v0, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget v9, v14, Landroid/graphics/PointF;->x:F

    iget v15, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v7, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget v9, v6, Landroid/graphics/PointF;->x:F

    iget v15, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, v9, v15}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move-object/from16 v0, p0

    invoke-virtual {v8, v0, v7, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const v9, -0x45513cc3

    add-float/2addr v5, v9

    const v9, 0x3aaec341

    add-float/2addr v4, v9

    invoke-virtual {v11, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    new-instance v8, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v8}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_4
    :goto_5
    const-wide/16 v16, 0x2710

    move-wide/from16 v0, v16

    invoke-virtual {v10, v8, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v9

    const/4 v15, -0x1

    if-eq v9, v15, :cond_4

    const/4 v15, -0x2

    if-ne v9, v15, :cond_5

    invoke-virtual {v10}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    invoke-virtual {v12}, Landroid/media/MediaMuxer;->start()V

    goto :goto_5

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "MediaMuxer creation failed"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "MediaMuxer creation failed"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_5
    if-gez v9, :cond_6

    const-string v15, "ParallaxView"

    const-string v16, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_6
    invoke-virtual {v10, v9}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    if-nez v15, :cond_7

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "encoderOutputBuffer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    iget v0, v8, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x2

    if-eqz v16, :cond_8

    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    :cond_8
    iget v0, v8, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v16, v0

    if-eqz v16, :cond_9

    const v16, 0x8235

    mul-int v16, v16, v3

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v8, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v12, v2, v15, v8}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :cond_9
    const/4 v8, 0x0

    invoke-virtual {v10, v9, v8}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_a
    invoke-virtual {v10}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    invoke-virtual {v10}, Landroid/media/MediaCodec;->stop()V

    invoke-virtual {v10}, Landroid/media/MediaCodec;->release()V

    invoke-virtual {v12}, Landroid/media/MediaMuxer;->stop()V

    invoke-virtual {v12}, Landroid/media/MediaMuxer;->release()V

    const/4 v2, 0x1

    goto/16 :goto_3
.end method

.method public static blurAndResize(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v3

    invoke-static {v2, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-static {v2, v5, p2, p3}, Landroid/support/v8/renderscript/Type;->createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v5

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicBlur;

    move-result-object v6

    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->create(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/ScriptIntrinsicResize;

    move-result-object v7

    invoke-virtual {v6, v3}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v6, v8}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v6, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v7, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->setInput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v7, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->forEach_bicubic(Landroid/support/v8/renderscript/Allocation;)V

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/support/v8/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    invoke-virtual {v2}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    invoke-virtual {v6}, Landroid/support/v8/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {v7}, Landroid/support/v8/renderscript/ScriptIntrinsicResize;->destroy()V

    invoke-virtual {v3}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v5}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    return-object v8
.end method

.method public static generateParallaxView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    :cond_0
    const-string v2, "ParallaxView"

    const-string v3, "input image and depth have different size!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I

    move-result-object v3

    invoke-static {v2}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getTwoMeansCenters(Landroid/graphics/Bitmap;)[F

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {v3, v4}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->getRefinedTwoMeansThreshold([I[F)I

    move-result v18

    const-string v2, "1st center: %s, 2nd center: %s, threshold: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    shr-int/lit8 v5, v2, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    shr-int/lit8 v9, v2, 0x2

    mul-int v10, v5, v9

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v9, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    new-array v3, v10, [I

    new-array v12, v10, [I

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v5, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x0

    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_3

    aget v2, v3, v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    move/from16 v0, v18

    if-ge v2, v0, :cond_2

    const/high16 v2, -0x1000000

    :goto_2
    aput v2, v12, v4

    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v12

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v5, v9, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, v11}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->inpaintOpenCV(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->blurAndResize(Landroid/content/Context;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v19

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v22, v5, v9

    move/from16 v0, v22

    new-array v3, v0, [I

    move/from16 v0, v22

    new-array v11, v0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p2

    move v13, v5

    move/from16 v16, v5

    move/from16 v17, v9

    invoke-virtual/range {v10 .. v17}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v2, v18, 0x4

    const/16 v4, 0xff

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v2, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v2, v0, :cond_6

    aget v6, v11, v2

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    if-le v6, v4, :cond_5

    aget v6, v3, v2

    const v7, 0xffffff

    and-int/2addr v6, v7

    aput v6, v3, v2

    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, v18

    if-le v6, v0, :cond_4

    sub-int v6, v6, v18

    int-to-float v6, v6

    const/high16 v7, 0x427f0000    # 63.75f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    rsub-int v6, v6, 0xff

    aget v7, v3, v2

    const v8, 0xffffff

    and-int/2addr v7, v8

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v6, v7

    aput v6, v3, v2

    goto :goto_4

    :cond_6
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v4, v4, v20

    long-to-float v3, v4

    const v4, 0x49742400    # 1000000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_7

    const/16 v6, 0x5dc

    iput v6, v3, Landroid/graphics/Point;->x:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit16 v6, v6, 0x5dc

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Point;->y:I

    :goto_5
    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/4 v7, 0x1

    invoke-static {v2, v6, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, v19

    invoke-static {v0, v6, v3, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p3

    invoke-static {v7, v3, v0}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit16 v6, v6, 0x5dc

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/2addr v6, v7

    iput v6, v3, Landroid/graphics/Point;->x:I

    const/16 v6, 0x5dc

    iput v6, v3, Landroid/graphics/Point;->y:I

    goto :goto_5

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public static generateParallaxViewMicroVideo(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x2e

    const/4 v4, 0x0

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_video.mov"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_temp.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, p1, p2, v0}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->generateParallaxView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {p1, v5, v6, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Lcom/fih_foxconn/a/b$a;

    invoke-direct {v0}, Lcom/fih_foxconn/a/b$a;-><init>()V

    invoke-virtual {v0, v6}, Lcom/fih_foxconn/a/b$a;->a(Ljava/io/File;)Lcom/adobe/xmp/XMPMeta;
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_0
    invoke-static {v2, v0}, Lcom/fih_foxconn/a/a;->a(Ljava/lang/String;Lcom/adobe/xmp/XMPMeta;)Z

    :try_start_2
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {v7, v9}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {v8, v9}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    return v3

    :catch_0
    move-exception v0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :goto_2
    throw v0

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_3
    if-eqz v2, :cond_2

    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :goto_4
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catch_4
    move-exception v0

    :try_start_e
    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_5
    if-eqz v2, :cond_3

    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_6
    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catch_5
    move-exception v0

    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    :catchall_3
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_7
    if-eqz v1, :cond_4

    :try_start_12
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_8
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :goto_8
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    :catchall_4
    move-exception v0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    throw v0

    :catch_6
    move-exception v3

    :try_start_14
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v2, v1

    goto :goto_5

    :cond_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_4

    :catch_7
    move-exception v3

    :try_start_15
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_6
    move-exception v0

    goto :goto_7

    :cond_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_6

    :catch_8
    move-exception v2

    :try_start_16
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto :goto_8

    :catchall_7
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_8
    move-exception v0

    goto :goto_1
.end method

.method public static getHistogram(Landroid/content/Context;Landroid/graphics/Bitmap;)[I
    .locals 10

    const/4 v9, 0x2

    const/16 v8, 0x100

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {p0}, Landroid/support/v8/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v1

    invoke-static {v0}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v4

    invoke-static {v0, v4, v8}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->setOutput(Landroid/support/v8/renderscript/Allocation;)V

    invoke-virtual {v5, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/support/v8/renderscript/Allocation;)V

    new-array v6, v8, [I

    invoke-virtual {v4, v6}, Landroid/support/v8/renderscript/Allocation;->copyTo([I)V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->finish()V

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->destroy()V

    invoke-virtual {v5}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->destroy()V

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/support/v8/renderscript/Allocation;->destroy()V

    new-array v4, v8, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v8, :cond_3

    if-lt v0, v9, :cond_0

    const/16 v1, 0xfd

    if-le v0, v1, :cond_1

    :cond_0
    aget v1, v6, v0

    aput v1, v4, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    :goto_2
    if-gt v1, v9, :cond_2

    aget v5, v4, v0

    add-int v7, v0, v1

    aget v7, v6, v7

    add-int/2addr v5, v7

    aput v5, v4, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    aget v1, v4, v0

    div-int/lit8 v1, v1, 0x5

    aput v1, v4, v0

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    return-object v4
.end method

.method public static getRefinedTwoMeansThreshold([I[F)I
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const v1, 0x7fffffff

    const/4 v0, 0x0

    aget v0, p1, v0

    float-to-int v0, v0

    :goto_0
    const/4 v5, 0x1

    aget v5, p1, v5

    float-to-int v5, v5

    if-ge v0, v5, :cond_2

    aget v5, p0, v0

    if-ge v5, v1, :cond_1

    aget v1, p0, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget v5, p0, v0

    if-ne v5, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    long-to-float v1, v2

    const v2, 0x49742400    # 1000000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    return v0
.end method

.method public static getTwoMeansCenters(Landroid/graphics/Bitmap;)[F
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [F

    invoke-static {v5, v6, v2, v3}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->kmeansOpenCV([B[FII)V

    aget v2, v6, v7

    aget v3, v6, v8

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    aget v2, v6, v7

    aget v3, v6, v8

    aput v3, v6, v7

    aput v2, v6, v8

    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    return-object v6
.end method

.method public static inpaintOpenCV(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    const-string v0, "ParallaxView"

    const-string v1, "The resolution of mask is not the same as the resolution of image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {v5, v6, v2, v3}, Lcom/fih_foxconn/depthlib/parallax/ParallaxView;->inpaintOpenCV([B[BII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap$Config;->name()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Bitmap$Config;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    long-to-float v0, v0

    const v1, 0x49742400    # 1000000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    goto :goto_0
.end method

.method private static native inpaintOpenCV([B[BII)V
.end method

.method private static native kmeansOpenCV([B[FII)V
.end method
