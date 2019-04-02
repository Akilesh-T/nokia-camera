.class public Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskCompressImageToJpeg.java"


# static fields
.field private static final MINIMUM_EXPECTED_JPG_COMPRESSION_FACTOR:I = 0x2


# instance fields
.field private final mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsBurstImage:Z

.field private final mIsFirstBurstImage:Z


# direct methods
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;ZZ)V
    .locals 6
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p6, "isBurstImage"    # Z
    .param p7, "isFirstBurstImage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p5, "byteBufferResourcePool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    if-eqz p6, :cond_0

    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 84
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 85
    iput-boolean p6, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mIsBurstImage:Z

    .line 86
    iput-boolean p7, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mIsFirstBurstImage:Z

    .line 87
    return-void

    .line 83
    :cond_0
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    goto :goto_0
.end method

.method private getImageSizeForOrientation(IILcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 525
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-eq p3, v0, :cond_0

    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_180:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-ne p3, v0, :cond_1

    .line 527
    :cond_0
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 533
    :goto_0
    return-object v0

    .line 528
    :cond_1
    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_90:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-eq p3, v0, :cond_2

    sget-object v0, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_270:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    if-ne p3, v0, :cond_3

    .line 530
    :cond_2
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0

    .line 533
    :cond_3
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method protected calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 544
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 545
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 544
    return-object v0
.end method

.method protected calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 556
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 557
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 556
    return-object v0
.end method

.method public compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I
    .locals 1
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "outBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "quality"    # I
    .param p4, "crop"    # Landroid/graphics/Rect;
    .param p5, "degrees"    # I

    .prologue
    .line 95
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v0

    return v0
.end method

.method protected createExif(Lcom/google/common/base/Optional;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;
    .locals 6
    .param p2, "image"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/exif/ExifInterface;",
            ">;",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/exif/ExifInterface;"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "exifData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/exif/ExifInterface;>;"
    .local p3, "totalCaptureResultProxyFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 491
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/exif/ExifInterface;

    .line 495
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 498
    .local v2, "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :try_start_0
    new-instance v3, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v3, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 499
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 498
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 505
    :goto_1
    return-object v1

    .line 493
    .end local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v2    # "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :cond_0
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .restart local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    goto :goto_0

    .line 500
    .restart local v2    # "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v3, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 502
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 501
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    goto :goto_1

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public exifGetMinimalTags(Lcom/android/camera/exif/ExifInterface;)Ljava/util/Map;
    .locals 3
    .param p1, "exif"    # Lcom/android/camera/exif/ExifInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/exif/ExifInterface;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget v1, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {p1, v2}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-object v0
.end method

.method protected getJpegCompressionQuality()I
    .locals 1

    .prologue
    .line 512
    sget v0, Lcom/android/camera/product_utils/ProductUtil;->JPEG_QUALITY:I

    return v0
.end method

.method protected logWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 478
    return-void
.end method

.method public mergeBrandLogoNV21([BII[BIIIII)V
    .locals 0
    .param p1, "logo"    # [B
    .param p2, "logoWidth"    # I
    .param p3, "logoHeight"    # I
    .param p4, "data"    # [B
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "stride"    # I
    .param p8, "orientation"    # I
    .param p9, "offset"    # I

    .prologue
    .line 105
    invoke-static/range {p1 .. p9}, Lcom/android/camera/util/YUVUtilNative;->mergeBrandLogoNV21([BII[BIIIII)V

    .line 106
    return-void
.end method

.method public mirrorNV21([BIIII)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "stride"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 99
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/camera/util/YUVUtilNative;->mirrorNV21([BIIII)V

    .line 100
    return-void
.end method

.method public run()V
    .locals 50

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    move-object/from16 v39, v0

    .line 131
    .local v39, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->markProcessingTimeStart()V

    .line 138
    const/16 v47, 0x0

    .line 139
    .local v47, "writeOut":[B
    const/16 v43, -0x1

    .line 140
    .local v43, "numBytes":I
    const/16 v29, 0x0

    .line 141
    .local v29, "compressedData":Ljava/nio/ByteBuffer;
    const/16 v32, 0x0

    .line 142
    .local v32, "exifData":Lcom/android/camera/exif/ExifInterface;
    const/16 v27, 0x0

    .line 144
    .local v27, "byteBufferResource":Lcom/android/camera/processing/memory/LruResourcePool$Resource;, "Lcom/android/camera/processing/memory/LruResourcePool$Resource<Ljava/nio/ByteBuffer;>;"
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 398
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 399
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v11, "Unsupported input image format for TaskCompressImageToJpeg"

    invoke-direct {v8, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 153
    :sswitch_0
    :try_start_0
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v8

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v44

    .line 154
    .local v44, "origBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v44 .. v44}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-result-object v18

    .line 157
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .local v18, "compressedData":Ljava/nio/ByteBuffer;
    if-nez v18, :cond_0

    .line 159
    :try_start_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v11, -0x1

    const/4 v13, 0x1

    invoke-interface {v8, v11, v13}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v12, v47

    .line 469
    .end local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    .end local v47    # "writeOut":[B
    .local v12, "writeOut":[B
    :goto_0
    return-void

    .line 163
    .end local v12    # "writeOut":[B
    .restart local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :cond_0
    :try_start_2
    invoke-virtual/range {v44 .. v44}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 164
    move-object/from16 v0, v18

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 165
    invoke-virtual/range {v44 .. v44}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 166
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 170
    const/16 v33, 0x0

    .line 171
    .local v33, "exifOrientation":Ljava/lang/Integer;
    const/16 v34, 0x0

    .line 172
    .local v34, "exifPixelXDimension":Ljava/lang/Integer;
    const/16 v35, 0x0

    .line 174
    .local v35, "exifPixelYDimension":Ljava/lang/Integer;
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    if-eqz v8, :cond_1

    .line 175
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v32

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->exifGetMinimalTags(Lcom/android/camera/exif/ExifInterface;)Ljava/util/Map;

    move-result-object v42

    .line 178
    .local v42, "minimalExifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    .end local v33    # "exifOrientation":Ljava/lang/Integer;
    check-cast v33, Ljava/lang/Integer;

    .line 179
    .restart local v33    # "exifOrientation":Ljava/lang/Integer;
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    .line 180
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    .end local v34    # "exifPixelXDimension":Ljava/lang/Integer;
    check-cast v34, Ljava/lang/Integer;

    .line 181
    .restart local v34    # "exifPixelXDimension":Ljava/lang/Integer;
    sget v8, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    .line 182
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v42

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    .end local v35    # "exifPixelYDimension":Ljava/lang/Integer;
    check-cast v35, Ljava/lang/Integer;

    .line 186
    .end local v42    # "minimalExifTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v35    # "exifPixelYDimension":Ljava/lang/Integer;
    :cond_1
    if-nez v33, :cond_4

    .line 189
    sget-object v5, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 200
    .local v5, "exifDerivedRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :goto_1
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 201
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v5}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->addOrientation(Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v28

    .line 203
    .local v28, "combinedRotationFromSensorToJpeg":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    if-eqz v34, :cond_2

    if-nez v35, :cond_5

    .line 204
    :cond_2
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "Cannot parse EXIF for image dimensions, passing 0x0 dimensions"

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 206
    const/4 v7, 0x0

    .line 207
    .local v7, "imageHeight":I
    const/4 v6, 0x0

    .line 209
    .local v6, "imageWidth":I
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v11, v1}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->rotateBoundingBox(Landroid/graphics/Rect;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Landroid/graphics/Rect;

    move-result-object v11

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 221
    .local v9, "safeCrop":Landroid/graphics/Rect;
    :goto_2
    new-instance v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 225
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v8

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 227
    .local v4, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v9, v1}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->requiresCropOperation(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->isFirstShotInTwiceShot()Z

    move-result v8

    if-nez v8, :cond_6

    .line 229
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "requiresCropOperation start "

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    .line 232
    .local v48, "starttime":J
    new-instance v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 234
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    .line 235
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 236
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v14

    const/4 v15, 0x0

    move-object v11, v5

    invoke-direct/range {v10 .. v15}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 239
    .local v10, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->getJpegCompressionQuality()I

    move-result v11

    .line 238
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9, v11}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->decompressCropAndRecompressJpegData([BLandroid/graphics/Rect;I)[B

    move-result-object v30

    .line 242
    .local v30, "croppedResult":[B
    move-object/from16 v0, v30

    array-length v8, v0

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 243
    invoke-static/range {v30 .. v30}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 245
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requiresCropOperation end and cost time = "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v48

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 260
    .end local v30    # "croppedResult":[B
    .end local v48    # "starttime":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 263
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mId:J

    sget-object v16, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v11, p0

    move-object v14, v4

    move-object v15, v10

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 265
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->limit()I

    move-result v43

    move-object/from16 v12, v47

    .line 403
    .end local v5    # "exifDerivedRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v6    # "imageWidth":I
    .end local v7    # "imageHeight":I
    .end local v28    # "combinedRotationFromSensorToJpeg":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v33    # "exifOrientation":Ljava/lang/Integer;
    .end local v34    # "exifPixelXDimension":Ljava/lang/Integer;
    .end local v35    # "exifPixelYDimension":Ljava/lang/Integer;
    .end local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    :goto_4
    if-lez v43, :cond_3

    if-eqz v18, :cond_3

    .line 405
    :try_start_3
    move/from16 v0, v43

    new-array v12, v0, [B

    .line 406
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 407
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 409
    if-eqz v27, :cond_3

    .line 410
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 415
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mId:J

    move-wide/from16 v20, v0

    sget-object v25, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v19, p0

    move-object/from16 v22, v4

    move-object/from16 v23, v10

    move-object/from16 v24, v12

    invoke-virtual/range {v19 .. v25}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onJpegEncodeDone(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 422
    move-object/from16 v36, v4

    .line 423
    .local v36, "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v37, v10

    .line 425
    .local v37, "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    invoke-static/range {v32 .. v32}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v8

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->createExif(Lcom/google/common/base/Optional;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;

    move-result-object v25

    .line 428
    .local v25, "exif":Lcom/android/camera/exif/ExifInterface;
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mIsBurstImage:Z

    if-eqz v8, :cond_15

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mIsFirstBurstImage:Z

    if-nez v8, :cond_15

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    move-object/from16 v19, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    move-object/from16 v21, v0

    iget v0, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move/from16 v22, v0

    iget v0, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    move/from16 v23, v0

    iget-object v8, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v24

    move-object/from16 v20, v12

    invoke-interface/range {v19 .. v25}, Lcom/android/camera/session/CaptureSession;->saveBurstImage([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V

    goto/16 :goto_0

    .line 192
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v9    # "safeCrop":Landroid/graphics/Rect;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "writeOut":[B
    .end local v25    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v36    # "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v37    # "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v33    # "exifOrientation":Ljava/lang/Integer;
    .restart local v34    # "exifPixelXDimension":Ljava/lang/Integer;
    .restart local v35    # "exifPixelYDimension":Ljava/lang/Integer;
    .restart local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :cond_4
    :try_start_4
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->from(I)Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .restart local v5    # "exifDerivedRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    goto/16 :goto_1

    .line 212
    .restart local v28    # "combinedRotationFromSensorToJpeg":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    :cond_5
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 213
    .restart local v6    # "imageWidth":I
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 215
    .restart local v7    # "imageHeight":I
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-virtual {v0, v8, v1}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->rotateBoundingBox(Landroid/graphics/Rect;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)Landroid/graphics/Rect;

    move-result-object v8

    .line 215
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v8}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->guaranteedSafeCrop(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v9

    .restart local v9    # "safeCrop":Landroid/graphics/Rect;
    goto/16 :goto_2

    .line 248
    .restart local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :cond_6
    move-object v10, v4

    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    goto/16 :goto_3

    .line 250
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v5    # "exifDerivedRotation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v6    # "imageWidth":I
    .end local v7    # "imageHeight":I
    .end local v9    # "safeCrop":Landroid/graphics/Rect;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v28    # "combinedRotationFromSensorToJpeg":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v33    # "exifOrientation":Ljava/lang/Integer;
    .end local v34    # "exifPixelXDimension":Ljava/lang/Integer;
    .end local v35    # "exifPixelYDimension":Ljava/lang/Integer;
    .end local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v31

    move-object/from16 v18, v29

    .line 251
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .local v31, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when copy JPEG data : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    if-eqz v27, :cond_7

    .line 253
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 255
    :cond_7
    throw v31
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 260
    .end local v31    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v11, v0, v13}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v8

    .line 268
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->needMirror()Z

    move-result v8

    if-nez v8, :cond_8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    if-eqz v8, :cond_c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 270
    :cond_8
    :try_start_6
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 271
    .restart local v9    # "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v4

    .line 272
    .restart local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v9}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v10

    .line 274
    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mId:J

    sget-object v16, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v11, p0

    move-object v14, v4

    move-object v15, v10

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 276
    iget v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    int-to-double v0, v8

    move-wide/from16 v16, v0

    const-wide/high16 v20, 0x4050000000000000L    # 64.0

    div-double v16, v16, v20

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v8, v0

    mul-int/lit8 v15, v8, 0x40

    .line 277
    .local v15, "aligned64_width":I
    iget v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    mul-int/2addr v8, v15

    int-to-float v8, v8

    const/high16 v11, 0x3fc00000    # 1.5f

    mul-float/2addr v8, v11

    float-to-int v0, v8

    move/from16 v26, v0

    .line 278
    .local v26, "IMAGE_SIZE":I
    move/from16 v0, v26

    new-array v12, v0, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 279
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    :try_start_7
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getOriginImage()Landroid/media/Image;

    move-result-object v8

    invoke-static {v8, v12}, Lcom/android/camera/util/YUVUtilNative;->getNV21FromYUV420Imgae(Landroid/media/Image;[B)V

    .line 280
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->needMirror()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 281
    iget v13, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget v14, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v16

    move-object/from16 v11, p0

    invoke-virtual/range {v11 .. v16}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mirrorNV21([BIIII)V

    .line 283
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    if-eqz v8, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 284
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget-object v0, v8, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v0, v8, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v0, v8, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    move/from16 v19, v0

    iget v0, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move/from16 v21, v0

    iget v0, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    move/from16 v22, v0

    iget-object v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 285
    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getBrandLogoViewData()Lcom/google/common/base/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/brandlogo/BrandLogoViewData;

    iget v0, v8, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    move/from16 v25, v0

    move-object/from16 v16, p0

    move-object/from16 v20, v12

    move/from16 v23, v15

    .line 284
    invoke-virtual/range {v16 .. v25}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mergeBrandLogoNV21([BII[BIIIII)V

    .line 287
    :cond_a
    iget v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget v11, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    invoke-static {v12, v8, v11}, Lcom/android/camera/util/YuvToJpeg;->transByteData([BII)[B

    move-result-object v12

    .line 288
    if-nez v12, :cond_b

    .line 289
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "compressing jpeg=====null"

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 297
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v18, v29

    .line 290
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_0

    .line 297
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    :cond_b
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v18, v29

    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_4

    .line 292
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v9    # "safeCrop":Landroid/graphics/Rect;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "writeOut":[B
    .end local v15    # "aligned64_width":I
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v26    # "IMAGE_SIZE":I
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :catch_1
    move-exception v31

    move-object/from16 v12, v47

    .line 293
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_7
    :try_start_8
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error compressing jpeg : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 297
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v18, v29

    .line 294
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_0

    .line 297
    .end local v12    # "writeOut":[B
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v31    # "e":Ljava/lang/Exception;
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :catchall_1
    move-exception v8

    move-object/from16 v12, v47

    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    :goto_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v11, v0, v13}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v8

    .line 300
    .end local v12    # "writeOut":[B
    .restart local v47    # "writeOut":[B
    :cond_c
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v11}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 302
    .restart local v9    # "safeCrop":Landroid/graphics/Rect;
    :try_start_9
    new-instance v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v17, v0

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v18

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 303
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v19

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 304
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v20

    move-object/from16 v16, v4

    move-object/from16 v21, v9

    invoke-direct/range {v16 .. v21}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 305
    .restart local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    move-object/from16 v0, v39

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    .line 306
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    move-object/from16 v0, v39

    iget-object v13, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 305
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v13}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->getImageSizeForOrientation(IILcom/android/camera/app/OrientationManager$DeviceOrientation;)Lcom/android/camera/util/Size;

    move-result-object v46

    .line 312
    .local v46, "resultSize":Lcom/android/camera/util/Size;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->isCaptureIntent()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 313
    new-instance v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    sget-object v17, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 314
    invoke-virtual/range {v46 .. v46}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v18

    .line 315
    invoke-virtual/range {v46 .. v46}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v19

    const/16 v20, 0x100

    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 325
    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :goto_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mId:J

    move-wide/from16 v18, v0

    sget-object v22, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v17, p0

    move-object/from16 v20, v4

    move-object/from16 v21, v10

    invoke-virtual/range {v17 .. v22}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 336
    iget v8, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    mul-int/lit8 v8, v8, 0x3

    iget v11, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    mul-int v41, v8, v11

    .line 337
    .local v41, "maxPossibleJpgSize":I
    div-int/lit8 v40, v41, 0x2

    .line 340
    .local v40, "jpgBufferSize":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    move-result-object v27

    .line 341
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/nio/ByteBuffer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 344
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    if-nez v18, :cond_e

    .line 346
    :try_start_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v11, -0x1

    const/4 v13, 0x1

    invoke-interface {v8, v11, v13}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    .line 347
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 393
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v12, v47

    .line 348
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    goto/16 :goto_0

    .line 318
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "writeOut":[B
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v40    # "jpgBufferSize":I
    .end local v41    # "maxPossibleJpgSize":I
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :cond_d
    :try_start_b
    new-instance v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v17, v0

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 319
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v18

    move-object/from16 v0, v39

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 320
    invoke-interface {v8}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v19

    const/16 v20, 0x100

    const/16 v21, 0x0

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    goto :goto_9

    .line 355
    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v40    # "jpgBufferSize":I
    .restart local v41    # "maxPossibleJpgSize":I
    :cond_e
    :try_start_c
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v17, v0

    .line 356
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->getJpegCompressionQuality()I

    move-result v19

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 357
    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->isCaptureIntent()Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v21

    :goto_a
    move-object/from16 v16, p0

    .line 355
    invoke-virtual/range {v16 .. v21}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v43

    .line 360
    move/from16 v0, v43

    move/from16 v1, v40

    if-le v0, v1, :cond_11

    .line 361
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 362
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 363
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v8, v11}, Lcom/android/camera/processing/memory/LruResourcePool;->acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;

    move-result-object v27

    .line 364
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->get()Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/nio/ByteBuffer;

    move-object/from16 v18, v0

    .line 367
    if-nez v18, :cond_10

    .line 369
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    const/4 v11, -0x1

    const/4 v13, 0x1

    invoke-interface {v8, v11, v13}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    .line 370
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 393
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v12, v47

    .line 371
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    goto/16 :goto_0

    .line 357
    .end local v12    # "writeOut":[B
    .restart local v47    # "writeOut":[B
    :cond_f
    :try_start_d
    sget-object v8, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->CLOCKWISE_0:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v21

    goto :goto_a

    .line 374
    :cond_10
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v17, v0

    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->getJpegCompressionQuality()I

    move-result v19

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    iget-object v8, v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 376
    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v21

    move-object/from16 v16, p0

    .line 374
    invoke-virtual/range {v16 .. v21}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;I)I

    move-result v43

    .line 379
    :cond_11
    if-gez v43, :cond_13

    .line 380
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 381
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v11, "Error compressing jpeg."

    invoke-direct {v8, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 384
    :catch_2
    move-exception v31

    .line 385
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v40    # "jpgBufferSize":I
    .end local v41    # "maxPossibleJpgSize":I
    .end local v46    # "resultSize":Lcom/android/camera/util/Size;
    .restart local v31    # "e":Ljava/lang/Exception;
    :goto_b
    :try_start_e
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error when compress to JPEG : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v31

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 386
    if-eqz v27, :cond_12

    .line 387
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    .line 389
    :cond_12
    throw v31
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 393
    .end local v31    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v8

    :goto_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v11, v0, v13}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v8

    .line 383
    .restart local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v40    # "jpgBufferSize":I
    .restart local v41    # "maxPossibleJpgSize":I
    .restart local v46    # "resultSize":Lcom/android/camera/util/Size;
    :cond_13
    :try_start_f
    move-object/from16 v0, v18

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 393
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v39

    invoke-interface {v8, v0, v11}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object/from16 v12, v47

    .line 396
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    goto/16 :goto_4

    .line 409
    .end local v40    # "jpgBufferSize":I
    .end local v41    # "maxPossibleJpgSize":I
    .end local v46    # "resultSize":Lcom/android/camera/util/Size;
    :catchall_3
    move-exception v8

    if-eqz v27, :cond_14

    .line 410
    invoke-interface/range {v27 .. v27}, Lcom/android/camera/processing/memory/LruResourcePool$Resource;->close()V

    :cond_14
    throw v8

    .line 431
    .restart local v25    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v36    # "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v37    # "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :cond_15
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    move-object/from16 v19, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    move-object/from16 v21, v0

    iget v0, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    move/from16 v22, v0

    iget v0, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    move/from16 v23, v0

    iget-object v8, v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v8}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v24

    move-object/from16 v20, v12

    invoke-interface/range {v19 .. v25}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v38

    .line 434
    .local v38, "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    new-instance v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v8, v0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V

    move-object/from16 v0, v38

    invoke-static {v0, v8}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 448
    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    move-object/from16 v45, v0

    .line 451
    .local v45, "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface/range {v45 .. v45}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 453
    :try_start_10
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v11

    .line 454
    invoke-interface/range {v45 .. v45}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {v11, v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeOfCaptureRequestAvailable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 462
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_0

    .line 455
    :catch_3
    move-exception v31

    .line 456
    .local v31, "e":Ljava/lang/InterruptedException;
    :try_start_11
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "CaptureResults not added to photoCaptureDoneEvent event due to Interrupted Exception."

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 462
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_0

    .line 458
    .end local v31    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v31

    .line 459
    .local v31, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_12
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "CaptureResults not added to photoCaptureDoneEvent event due to Execution Exception."

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 462
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_0

    .end local v31    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_4
    move-exception v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    throw v8

    .line 465
    :cond_16
    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v11, "CaptureResults unavailable to photoCaptureDoneEvent event."

    invoke-static {v8, v11}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 466
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v8}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_0

    .line 393
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "writeOut":[B
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v25    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v36    # "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v37    # "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v38    # "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    .end local v45    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v47    # "writeOut":[B
    :catchall_5
    move-exception v8

    move-object/from16 v18, v29

    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_c

    .line 384
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    :catch_5
    move-exception v31

    move-object/from16 v18, v29

    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_b

    .line 297
    .end local v9    # "safeCrop":Landroid/graphics/Rect;
    .end local v18    # "compressedData":Ljava/nio/ByteBuffer;
    .end local v47    # "writeOut":[B
    .restart local v12    # "writeOut":[B
    .restart local v29    # "compressedData":Ljava/nio/ByteBuffer;
    :catchall_6
    move-exception v8

    goto/16 :goto_8

    .line 292
    .restart local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v9    # "safeCrop":Landroid/graphics/Rect;
    .restart local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v15    # "aligned64_width":I
    .restart local v26    # "IMAGE_SIZE":I
    :catch_6
    move-exception v31

    goto/16 :goto_7

    .line 260
    .end local v4    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v9    # "safeCrop":Landroid/graphics/Rect;
    .end local v10    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v12    # "writeOut":[B
    .end local v15    # "aligned64_width":I
    .end local v26    # "IMAGE_SIZE":I
    .restart local v47    # "writeOut":[B
    :catchall_7
    move-exception v8

    move-object/from16 v18, v29

    .end local v29    # "compressedData":Ljava/nio/ByteBuffer;
    .restart local v18    # "compressedData":Ljava/nio/ByteBuffer;
    goto/16 :goto_6

    .line 250
    .restart local v44    # "origBuffer":Ljava/nio/ByteBuffer;
    :catch_7
    move-exception v31

    goto/16 :goto_5

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_1
        0x100 -> :sswitch_0
    .end sparse-switch
.end method
