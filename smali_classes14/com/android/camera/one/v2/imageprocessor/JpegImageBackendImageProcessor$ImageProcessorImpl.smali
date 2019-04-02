.class final Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;
.super Ljava/lang/Object;
.source "JpegImageBackendImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageProcessorImpl"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private mIsFirstImage:Z

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 1
    .param p1    # Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "finalImageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;->this$0:Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;->mIsFirstImage:Z

    .line 54
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 55
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 56
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/JpegImageBackendImageProcessor$ImageProcessorImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 57
    return-void
.end method


# virtual methods
.method public convertImageAndProcess(Lcom/android/camera/one/CameraType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V
    .locals 2
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
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
            "Lcom/android/camera/one/CameraType;",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
            ">;",
            "Lcom/google/common/util/concurrent/FutureCallback",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p5, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p6, "imageDatafeatureCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;>;"
    .local p7, "imageInfoCallback":Lcom/google/common/util/concurrent/FutureCallback;, "Lcom/google/common/util/concurrent/FutureCallback<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    if-eqz p4, :cond_0

    .line 62
    invoke-interface {p4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Not Implement"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p6, v0}, Lcom/google/common/util/concurrent/FutureCallback;->onFailure(Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
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
    .line 69
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    if-eqz p2, :cond_0

    .line 70
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 72
    :cond_0
    return-void
.end method
