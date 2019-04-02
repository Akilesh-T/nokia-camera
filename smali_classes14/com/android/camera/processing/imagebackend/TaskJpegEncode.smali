.class public abstract Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskJpegEncode.java"


# static fields
.field protected static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskJpegEnc"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "preferredLane"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;
    .param p5, "captureSession"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 67
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;)V
    .locals 0
    .param p1, "otherTask"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .param p2, "processingPriority"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;)V

    .line 52
    return-void
.end method


# virtual methods
.method public convertNv21toJpeg([BII[I)[B
    .locals 9
    .param p1, "data_copy"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "strides"    # [I

    .prologue
    const/4 v8, 0x0

    .line 164
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "TIMER_BEGIN NV21 to Jpeg Conversion."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 165
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 167
    .local v0, "yuvImage":Landroid/graphics/YuvImage;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v7, "postViewBytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2, v7}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 171
    :try_start_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "TIMER_END NV21 to Jpeg Conversion."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 172
    :catch_0
    move-exception v6

    .line 173
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public convertYUV420ImageToPackedNV21(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)[B
    .locals 7
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .prologue
    .line 79
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v1

    .line 81
    .local v1, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 82
    .local v4, "y_buffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 83
    .local v2, "u_buffer":Ljava/nio/ByteBuffer;
    const/4 v5, 0x2

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 84
    .local v3, "v_buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    add-int/2addr v5, v6

    new-array v0, v5, [B

    .line 86
    .local v0, "dataCopy":[B
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->convertYUV420ImageToPackedNV21(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;[B)[B

    move-result-object v5

    return-object v5
.end method

.method public convertYUV420ImageToPackedNV21(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;[B)[B
    .locals 13
    .param p1, "img"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p2, "dataCopy"    # [B

    .prologue
    const/4 v12, 0x1

    .line 102
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v8

    .line 103
    .local v8, "w":I
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v2

    .line 104
    .local v2, "h":I
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v4

    .line 106
    .local v4, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    const/4 v11, 0x0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 107
    .local v9, "y_buffer":Ljava/nio/ByteBuffer;
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 108
    .local v5, "u_buffer":Ljava/nio/ByteBuffer;
    const/4 v11, 0x2

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 109
    .local v7, "v_buffer":Ljava/nio/ByteBuffer;
    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v11}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v0

    .line 110
    .local v0, "color_pixel_stride":I
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v10

    .line 111
    .local v10, "y_size":I
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    .line 112
    .local v6, "u_size":I
    mul-int v1, v8, v2

    .line 114
    .local v1, "data_offset":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v10, :cond_0

    .line 115
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, p2, v3

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 118
    :cond_0
    const/4 v3, 0x0

    :goto_1
    div-int v11, v6, v0

    if-ge v3, v11, :cond_1

    .line 119
    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v1

    mul-int v12, v3, v0

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    aput-byte v12, p2, v11

    .line 120
    mul-int/lit8 v11, v3, 0x2

    add-int/2addr v11, v1

    add-int/lit8 v11, v11, 0x1

    mul-int v12, v3, v0

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    aput-byte v12, p2, v11

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 123
    :cond_1
    return-object p2
.end method

.method public decompressCropAndRecompressJpegData([BLandroid/graphics/Rect;I)[B
    .locals 7
    .param p1, "jpegData"    # [B
    .param p2, "crop"    # Landroid/graphics/Rect;
    .param p3, "recompressionQuality"    # I

    .prologue
    .line 191
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decompressCropAndRecompressJpegData : jpeg = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_1

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    if-nez p1, :cond_2

    .line 205
    .end local p1    # "jpegData":[B
    :cond_0
    :goto_1
    return-object p1

    .line 191
    .restart local p1    # "jpegData":[B
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 193
    :cond_2
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 194
    .local v1, "original":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 195
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decompressCropAndRecompressJpegData : original = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 199
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 198
    invoke-static {v1, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, "croppedResult":Landroid/graphics/Bitmap;
    sget-object v3, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "decompressCropAndRecompressJpegData : croppedResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 204
    .local v2, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v3, p3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 205
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    goto/16 :goto_1
.end method

.method public dummyConvertYUV420ImageToPackedNV21([BII)V
    .locals 8
    .param p1, "dataCopy"    # [B
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 135
    mul-int v4, p2, p3

    .line 136
    .local v4, "y_size":I
    mul-int v0, p2, p3

    .line 138
    .local v0, "data_offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 139
    rem-int v5, v1, p2

    mul-int/lit16 v5, v5, 0xff

    div-int/2addr v5, p2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v1

    .line 140
    const/4 v5, 0x0

    aput-byte v5, p1, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_0
    const/4 v1, 0x0

    :goto_1
    div-int/lit8 v5, p3, 0x2

    if-ge v1, v5, :cond_2

    .line 144
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    div-int/lit8 v5, p2, 0x2

    if-ge v2, v5, :cond_1

    .line 145
    mul-int v5, p2, v1

    add-int/2addr v5, v0

    mul-int/lit8 v6, v2, 0x2

    add-int v3, v5, v6

    .line 146
    .local v3, "offset":I
    mul-int/lit16 v5, v1, 0xff

    div-int/lit8 v6, p3, 0x2

    div-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, p1, v3

    .line 147
    add-int/lit8 v5, v3, 0x1

    mul-int/lit16 v6, v2, 0xff

    div-int/lit8 v7, p2, 0x2

    div-int/2addr v6, v7

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 144
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 143
    .end local v3    # "offset":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    .end local v2    # "j":I
    :cond_2
    return-void
.end method

.method public onJpegEncodeDone(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "data"    # [B
    .param p6, "aDestination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 218
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 219
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 220
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    invoke-direct {v2, p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 221
    return-void
.end method

.method public onPostProcessJpegEncodeDone(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "aDestination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 225
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 226
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 227
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, v1}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessImageCompressed(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;)V

    .line 228
    return-void
.end method

.method public onPostProcessPreviewUriResolved(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "imageUri"    # Landroid/net/Uri;
    .param p6, "destination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 254
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 255
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 256
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, v1, p5}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onPostProcessUriResolved(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 257
    return-void
.end method

.method public onRawDataReady(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "data"    # [B
    .param p6, "aDestination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 232
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 233
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 234
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;

    invoke-direct {v2, p5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;-><init>([B)V

    invoke-interface {v0, v1, v2}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onRawDataReady(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Lcom/android/camera/processing/imagebackend/TaskImageContainer$CompressedPayload;)V

    .line 235
    return-void
.end method

.method public onUriResolved(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Landroid/net/Uri;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 7
    .param p1, "id"    # J
    .param p3, "input"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "result"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "imageUri"    # Landroid/net/Uri;
    .param p6, "destination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 248
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;-><init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 249
    .local v1, "job":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->getProxyListener()Lcom/android/camera/processing/imagebackend/ImageProcessorProxyListener;

    move-result-object v0

    .line 250
    .local v0, "listener":Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    invoke-interface {v0, v1, p5}, Lcom/android/camera/processing/imagebackend/ImageProcessorListener;->onResultUri(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;Landroid/net/Uri;)V

    .line 251
    return-void
.end method
