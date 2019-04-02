.class final Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;
.super Ljava/lang/Object;
.source "YuvImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DSImageProcessorImpl"
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
    .line 165
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mIsFirstImage:Z

    .line 166
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 167
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 168
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 169
    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;)Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    return-object v0
.end method


# virtual methods
.method public convertImageAndProcess(Lcom/android/camera/one/DualSightCamType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 16
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p3, "index"    # I
    .param p4, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p6    # Lcom/google/common/util/concurrent/FutureCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/DualSightCamType;",
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
    .line 173
    .local p5, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p6, "imageDatafeatureCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;>;"
    .local p7, "imageInfoCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v11

    .line 174
    .local v11, "convertToJpeg":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;>;"
    move-object/from16 v0, p6

    invoke-static {v11, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 176
    const/4 v12, 0x0

    .line 178
    .local v12, "imageInfoResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 179
    .local v14, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mIsFirstImage:Z

    if-eqz v1, :cond_0

    .line 180
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mIsFirstImage:Z

    .line 181
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_IMAGE_INFO:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v12

    .line 183
    move-object/from16 v0, p7

    invoke-static {v12, v0}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 185
    :cond_0
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_JPEG_DATA:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v1, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v14, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 189
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$300(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v15

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    sget-object v2, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v3}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$000(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Landroid/graphics/Rect;

    move-result-object v8

    move-object/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;

    invoke-static {v2}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;->access$100(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor;)Ljava/util/concurrent/Executor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$DSImageProcessorImpl;)V

    invoke-static {v2}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v15

    move-object v3, v1

    move-object v5, v14

    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 230
    :catch_0
    move-exception v13

    .line 232
    .local v13, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
