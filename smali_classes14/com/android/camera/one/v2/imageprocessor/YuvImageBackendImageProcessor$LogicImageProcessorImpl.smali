.class final Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;
.super Ljava/lang/Object;
.source "YuvImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/LogicImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogicImageProcessorImpl"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private mIsFirstImage:Z

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 1
    .param p1    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mIsFirstImage:Z

    .line 246
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 247
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 248
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 249
    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    return-object v0
.end method


# virtual methods
.method public convertImageAndProcess(Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 16
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "index"    # I
    .param p3, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p5, "imageDatafeatureCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;>;"
    .local p6, "imageInfoCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v11

    .line 256
    .local v11, "convertToJpeg":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;>;"
    move-object/from16 v0, p5

    invoke-static {v11, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 258
    const/4 v12, 0x0

    .line 260
    .local v12, "imageInfoResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 261
    .local v14, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mIsFirstImage:Z

    if-eqz v1, :cond_0

    .line 262
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mIsFirstImage:Z

    .line 263
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v12

    .line 265
    move-object/from16 v0, p6

    invoke-static {v12, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 267
    :cond_0
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 271
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v15

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    sget-object v3, Lcom/android/camera/one/DualSightCamType;->MAIN:Lcom/android/camera/one/DualSightCamType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    .line 272
    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Landroid/graphics/Rect;

    move-result-object v8

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;)V

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v15

    move-object v3, v1

    move-object v5, v14

    .line 271
    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    return-void

    .line 314
    :catch_0
    move-exception v13

    .line 316
    .local v13, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 7
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "fullSize"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 323
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 327
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v4}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p2, v2, p3, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$LogicImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 328
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 327
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    return-void

    .line 329
    :catch_0
    move-exception v6

    .line 331
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
