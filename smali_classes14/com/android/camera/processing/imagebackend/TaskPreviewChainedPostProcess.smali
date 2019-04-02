.class public Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;
.super Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;
.source "TaskPreviewChainedPostProcess.java"


# static fields
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

.field protected final mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskPreviewChainedPP"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/memory/LruResourcePool;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 10
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
            ">;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p6, "byteBufferResourcePool":Lcom/android/camera/processing/memory/LruResourcePool;, "Lcom/android/camera/processing/memory/LruResourcePool<Ljava/lang/Integer;Ljava/nio/ByteBuffer;>;"
    .local p7, "fastThumbnailResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    sget-object v5, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->AVERAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;->MAINTAIN_ASPECT_NO_INSET:Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/util/Size;Lcom/android/camera/processing/imagebackend/TaskConvertImageToRGBPreview$ThumbnailShape;Lcom/google/common/util/concurrent/SettableFuture;)V

    .line 76
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mByteBufferDirectPool:Lcom/android/camera/processing/memory/LruResourcePool;

    .line 77
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 78
    return-void
.end method


# virtual methods
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
    .line 200
    .local p1, "exifData":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/exif/ExifInterface;>;"
    .local p3, "totalCaptureResultProxyFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/exif/ExifInterface;

    .line 205
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_0
    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v3}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    invoke-static {v3}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 208
    .local v2, "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :try_start_0
    new-instance v3, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v3, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 209
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 208
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    :goto_1
    return-object v1

    .line 203
    .end local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v2    # "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :cond_0
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .restart local v1    # "exif":Lcom/android/camera/exif/ExifInterface;
    goto :goto_0

    .line 210
    .restart local v2    # "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v3, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v3, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 212
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 211
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    goto :goto_1

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 81
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 86
    const/16 v17, 0x0

    .line 88
    .local v17, "success":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 89
    .local v15, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    iget-object v3, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget-object v4, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 91
    .local v2, "safeCrop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    move-result-object v6

    .line 92
    .local v6, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    new-instance v3, Lcom/android/camera/util/Size;

    .line 93
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/camera/util/Size;-><init>(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mTargetSize:Lcom/android/camera/util/Size;

    .line 92
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->calculateBestSubsampleFactor(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)I

    move-result v16

    .line 95
    .local v16, "subsample":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->calculateResultImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;I)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    .line 99
    .local v7, "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mId:J

    sget-object v8, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;->POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->onStart(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TIMER_START Generating Fake Image, w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for subsample "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V

    .line 102
    iget-object v3, v15, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->runSelectedConversion(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;I)[I

    move-result-object v12

    .line 103
    .local v12, "convertedImage":[I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertedImage done : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v12, :cond_1

    array-length v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v3, v15, v4}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    .line 109
    if-eqz v12, :cond_3

    .line 110
    const/16 v17, 0x1

    .line 111
    move-object v14, v6

    .line 112
    .local v14, "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    move-object v13, v7

    .line 113
    .local v13, "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    new-instance v8, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;

    sget-object v11, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->FAST:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    invoke-direct/range {v8 .. v16}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess$1;-><init>(Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;[ILcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/ImageToProcess;I)V

    .line 186
    .local v8, "chainedTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v8}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->appendTasks(Lcom/android/camera/processing/imagebackend/ImageToProcess;Lcom/android/camera/processing/imagebackend/TaskImageContainer;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    .end local v8    # "chainedTask":Lcom/android/camera/processing/imagebackend/TaskImageContainer;
    .end local v13    # "finalResult":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v14    # "finalInput":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v3, :cond_0

    .line 192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 195
    :cond_0
    return-void

    .line 103
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 106
    .end local v12    # "convertedImage":[I
    :catchall_0
    move-exception v3

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v15, v5}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 191
    .end local v2    # "safeCrop":Landroid/graphics/Rect;
    .end local v6    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v7    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v15    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .end local v16    # "subsample":I
    :catchall_1
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    if-eqz v4, :cond_2

    .line 192
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->mFastThumbnailResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :cond_2
    throw v3

    .line 188
    .restart local v2    # "safeCrop":Landroid/graphics/Rect;
    .restart local v6    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v7    # "resultImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v12    # "convertedImage":[I
    .restart local v15    # "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .restart local v16    # "subsample":I
    :cond_3
    :try_start_4
    const-string v3, "TIMER_END Generating Fake Image fail : convertedImage is null"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/processing/imagebackend/TaskPreviewChainedPostProcess;->logWrapper(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1
.end method
