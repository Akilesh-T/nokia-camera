.class public Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;
.super Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.source "TaskPreviewChainedJpeg.java"


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
.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;)V
    .locals 9
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p5, "targetSize"    # Lcom/android/camera/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/android/camera/util/Size;",
            "Lcom/android/camera/processing/memory/LruResourcePool",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p6, "byteBufferResourcePool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    sget-object v7, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 53
    iput-object p6, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 54
    return-void
.end method


# virtual methods
.method public logWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 59
    return-void
.end method

.method public run()V
    .locals 20

    .prologue
    .line 63
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 64
    .local v11, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    iget-object v5, v11, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget-object v6, v11, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v18

    .line 66
    .local v18, "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v8

    .line 67
    .local v8, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    new-instance v5, Lcom/android/camera/util/Size;

    .line 68
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mTargetSize:Lcom/android/camera/util/Size;

    .line 67
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v19

    .line 70
    .local v19, "subsample":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v9

    .line 74
    .local v9, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mId:J

    sget-object v10, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 76
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TIMER_END Rendering preview YUV buffer available, w="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v11, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 77
    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v6

    div-int v6, v6, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " of subsample "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->logWrapper(Ljava/lang/String;)V

    .line 80
    iget-object v5, v11, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->runSelectedConversion(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v4

    .line 83
    .local v4, "convertedImage":[I
    new-instance v10, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mSession:Lcom/android/camera/session/CaptureSession;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/android/camera/processing/imagebackend/TaskCompressImageToJpeg;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/processing/memory/LruResourcePool;ZZ)V

    .line 85
    .local v10, "jpegTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    invoke-interface {v5, v11, v10}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v11, v6}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 91
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->INTERMEDIATE_THUMBNAIL:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v8, v4, v5}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->onPreviewDone(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 93
    return-void

    .line 88
    .end local v4    # "convertedImage":[I
    .end local v10    # "jpegTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v6, v11, v7}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v5
.end method
