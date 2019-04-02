.class public Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskWriteRawImageToDisk.java"


# static fields
.field private static final MINIMUM_EXPECTED_JPG_COMPRESSION_FACTOR:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskWriteRawImg"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;)V
    .locals 6
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p5, "byteBufferResourcePool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 62
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 63
    return-void
.end method


# virtual methods
.method protected logWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 136
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 67
    iget-object v10, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 72
    .local v10, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    iget-object v1, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 104
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v10, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported input image format for TaskWriteRawImageToDisk"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :pswitch_0
    :try_start_0
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 76
    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 77
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 78
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    iget-object v5, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 80
    .local v0, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object v5, v0

    .line 82
    .local v5, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mId:J

    sget-object v6, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 84
    iget-object v1, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 85
    .local v12, "rawBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    .line 86
    .local v11, "numBytesRequired":I
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw data size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 89
    new-array v6, v11, [B

    .line 90
    .local v6, "writeOut":[B
    invoke-virtual {v12, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 91
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 92
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "rawBuffer copy done"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v10, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 109
    if-nez v6, :cond_0

    .line 127
    :goto_0
    return-void

    .line 93
    .end local v0    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v5    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v6    # "writeOut":[B
    .end local v11    # "numBytesRequired":I
    .end local v12    # "rawBuffer":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v8

    .line 94
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when copy RAW10 data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 95
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v10, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v1

    .line 110
    .restart local v0    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v5    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v6    # "writeOut":[B
    .restart local v11    # "numBytesRequired":I
    .restart local v12    # "rawBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    iget-wide v2, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mId:J

    sget-object v7, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->RAW_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object v1, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->onRawDataReady(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v2, v10, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    iget v3, v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget v4, v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    invoke-interface {v1, v6, v2, v3, v4}, Lcom/android/camera/session/CaptureSession;->saveRawImage([BLcom/google/common/base/Optional;II)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v9

    .line 115
    .local v9, "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Ljava/lang/String;>;>;"
    new-instance v1, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk$1;

    invoke-direct {v1, p0}, Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskWriteRawImageToDisk;)V

    invoke-static {v9, v1}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method
