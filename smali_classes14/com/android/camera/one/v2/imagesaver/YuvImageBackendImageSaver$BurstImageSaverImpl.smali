.class final Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;
.super Ljava/lang/Object;
.source "YuvImageBackendImageSaver.java"

# interfaces
.implements Lcom/android/camera/one/v2/imagesaver/MultiImageSaver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BurstImageSaverImpl"
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImageProcessorListener:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

.field private final mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

.field private mIsFirstImage:Z

.field private final mSession:Lcom/android/camera/session/CaptureSession;

.field final synthetic this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;


# direct methods
.method public constructor <init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;Lcom/android/camera/session/CaptureSession;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;)V
    .locals 2
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p3, "imageRotation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .param p4, "imageProcessorListener"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    .prologue
    const/4 v0, 0x1

    .line 186
    iput-object p1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mIsFirstImage:Z

    .line 187
    iput-object p2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    .line 188
    iput-object p3, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .line 189
    iput-object p4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    .line 190
    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mIsFirstImage:Z

    .line 191
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 192
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mImageProcessorListener:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$YuvImageProcessorListener;

    return-object v0
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

    .line 267
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isForceHideThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    .line 323
    :goto_0
    return v0

    .line 268
    :cond_0
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v6

    .line 269
    .local v6, "result":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Ljava/lang/Boolean;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v3, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v0

    new-instance v1, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .line 274
    invoke-static {v4}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v1, p1, v2, p2, v4}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v2}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    new-instance v5, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$2;

    invoke-direct {v5, p0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$2;-><init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)V

    .line 275
    invoke-static {v5}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 273
    invoke-virtual/range {v0 .. v10}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;Lcom/google/common/util/concurrent/SettableFuture;)Z

    .line 317
    invoke-virtual {v6}, Lcom/google/common/util/concurrent/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 318
    :catch_0
    move-exception v11

    .line 320
    .local v11, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 321
    .end local v11    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v0

    move v0, v12

    .line 323
    goto :goto_0
.end method

.method public close()V
    .locals 3

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 337
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->finish()V

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public prepareImgName()Lcom/google/common/base/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->prepareImageTitle()Lcom/google/common/base/Optional;

    move-result-object v0

    return-object v0
.end method

.method public saveAndCloseImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/base/Optional;Lcom/google/common/util/concurrent/ListenableFuture;ZLcom/google/common/base/Optional;)V
    .locals 10
    .param p1, "image"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .param p4, "isNeedThumbnail"    # Z
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
            ">;Z",
            "Lcom/google/common/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, "thumbnail":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Lcom/android/camera/one/v2/camera2proxy/ImageProxy;>;"
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .local p5, "imgName":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p2}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v0}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 203
    :cond_0
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 204
    .local v8, "taskFlagsSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;>;"
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 205
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mIsFirstImage:Z

    if-eqz v0, :cond_1

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mIsFirstImage:Z

    .line 207
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->IS_FIRST_BURST_IMAGE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v0}, Lcom/android/camera/session/CaptureSession;->isForceHideThumbnail()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    .line 210
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CONVERT_TO_RGB_PREVIEW:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->COMPRESS_TO_JPEG_AND_WRITE_TO_DISK:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;->CLOSE_ON_ALL_TASKS_RELEASE:Lcom/android/camera/processing/imagebackend/ImageConsumer$ImageTaskFlags;

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$200(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Lcom/android/camera/processing/imagebackend/ImageBackend;

    move-result-object v9

    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageToProcess;

    iget-object v2, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mImageRotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    .line 217
    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$000(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Landroid/graphics/Rect;

    move-result-object v5

    move-object v1, p1

    move-object v3, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageToProcess;-><init>(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Optional;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->this$0:Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;

    invoke-static {v1}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;->access$100(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver;)Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;->mSession:Lcom/android/camera/session/CaptureSession;

    new-instance v1, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl$1;-><init>(Lcom/android/camera/one/v2/imagesaver/YuvImageBackendImageSaver$BurstImageSaverImpl;)V

    .line 218
    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    move-object v4, v8

    .line 216
    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/processing/imagebackend/ImageBackend;->receiveImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Ljava/util/Set;Lcom/android/camera/session/CaptureSession;Lcom/google/common/base/Optional;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    return-void

    .line 259
    :catch_0
    move-exception v7

    .line 261
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
