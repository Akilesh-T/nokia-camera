.class final Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;
.super Ljava/lang/Object;
.source "JpegImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageSaverImpl"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

.field private final mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/processing/imagebackend/ImageBackend;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 0
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "imageBackend"    # Lcom/android/camera/processing/imagebackend/ImageBackend;
    .param p5, "imageProcessorListener"    # Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 70
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 71
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    .line 72
    iput-object p5, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 73
    return-void
.end method


# virtual methods
.method public addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 1
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    return-object v0
.end method

.method public saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;Z)V
    .locals 7
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p4, "needThumbnail"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            ">;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, "thumbnail":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 84
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 85
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageBackend:Lcom/android/camera/processing/imagebackend/ImageBackend;

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    .line 90
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p1, v2, p3, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/JpegImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 91
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 89
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    return-void

    .line 92
    :catch_0
    move-exception v6

    .line 94
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public saveAndCloseRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .param p1, "rawImage"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 101
    :cond_0
    return-void
.end method
