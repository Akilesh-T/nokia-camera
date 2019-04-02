.class final Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/SingleImageSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImageSaverImpl"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/processing/imagebackend/ImageProcessorListener;)V
    .locals 0
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "imageProcessorListener"    # Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 79
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 80
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 81
    return-void
.end method


# virtual methods
.method public addFastThumbnail(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)Z
    .locals 13
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
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    const/4 v12, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isForceHideThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    .line 157
    :goto_0
    return v0

    .line 135
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 136
    .local v6, "result_preview":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v7

    .line 137
    .local v7, "result_post_process":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .line 148
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p1, v2, p2, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 149
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 147
    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z

    .line 150
    invoke-virtual {v7}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    .line 151
    invoke-virtual {v6}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v11

    .line 154
    .local v11, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 155
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    move v0, v12

    .line 157
    goto :goto_0
.end method

.method public getCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    return-object v0
.end method

.method public getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    return-object v0
.end method

.method public getImageProcessorListener()Lcom/android/camera/processing/imagebackend/ImageProcessorListener;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

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
    .line 88
    .local p2, "thumbnail":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 92
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 93
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    invoke-interface {p1}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_1

    .line 99
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CREATE_POST_PROCESS_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isForceHideThumbnail()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 103
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_2
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .line 110
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p1, v2, p3, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    .line 111
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 109
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v6

    .line 114
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public saveAndCloseRawImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 7
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
    .line 120
    .local p2, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 121
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_RAW_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p1, v2, p2, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$ImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/processing/imagebackend/ImageProcessorListener;

    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 126
    :catch_0
    move-exception v6

    .line 128
    .local v6, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
