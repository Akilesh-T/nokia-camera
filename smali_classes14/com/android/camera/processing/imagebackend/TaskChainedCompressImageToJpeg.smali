.class Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;
.super Lcom/android/camera/processing/imagebackend/TaskJpegEncode;
.source "TaskChainedCompressImageToJpeg.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskChainJpg"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 42
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskJpegEncode;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->logWrapper(Ljava/lang/String;)V

    return-void
.end method

.method private logWrapper(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    move-object/from16 v18, v0

    .line 52
    .local v18, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 53
    .local v7, "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getPlanes()Ljava/util/List;

    move-result-object v19

    .line 55
    .local v19, "planeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;>;"
    new-instance v2, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v3, v3, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 56
    invoke-interface {v5}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v5

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v6}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v6

    invoke-direct/range {v2 .. v7}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 57
    .local v2, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    new-instance v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v9, v3, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v10

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 58
    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v11

    const/16 v12, 0x100

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 60
    .local v8, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v20, v0

    .line 63
    .local v20, "strides":[I
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mId:J

    sget-object v14, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->FINAL_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v9, p0

    move-object v12, v2

    move-object v13, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 66
    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    const/4 v3, 0x0

    .line 67
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    div-int v3, v5, v3

    aput v3, v20, v4

    .line 68
    const/4 v4, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v5

    const/4 v3, 0x1

    .line 69
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    div-int v3, v5, v3

    aput v3, v20, v4

    .line 70
    const/4 v4, 0x2

    const/4 v3, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getRowStride()I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    const/4 v3, 0x2

    .line 71
    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy$Plane;->getPixelStride()I

    move-result v3

    div-int v3, v5, v3

    aput v3, v20, v4

    .line 74
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->convertYUV420ImageToPackedNV21(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v17

    .line 77
    .local v17, "dataCopy":[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v18

    invoke-interface {v3, v0, v4}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 80
    move-object/from16 v13, v17

    .line 81
    .local v13, "chainedDataCopy":[B
    move-object/from16 v15, v20

    .line 84
    .local v15, "chainedStrides":[I
    new-instance v9, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;

    sget-object v12, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object/from16 v10, p0

    move-object/from16 v11, p0

    move-object v14, v8

    move-object/from16 v16, v2

    invoke-direct/range {v9 .. v16}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;[BLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;)V

    .line 98
    .local v9, "chainedTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v9}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z

    .line 99
    const-string v3, "Kicking off a chained task now that image is released."

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->logWrapper(Ljava/lang/String;)V

    .line 100
    return-void

    .line 77
    .end local v9    # "chainedTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .end local v13    # "chainedDataCopy":[B
    .end local v15    # "chainedStrides":[I
    .end local v17    # "dataCopy":[B
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskChainedCompressImageToJpeg;->mExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v0, v18

    invoke-interface {v4, v0, v5}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v3
.end method
