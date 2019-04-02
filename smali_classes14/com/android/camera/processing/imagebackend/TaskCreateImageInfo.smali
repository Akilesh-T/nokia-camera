.class public Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;
.super Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.source "TaskCreateImageInfo.java"


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TaskCreateImgInfo"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method constructor <init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/session/CaptureSession;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 6
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "imageTaskManager"    # Lcom/android/camera/processing/imagebackend/ImageTaskManager;
    .param p4, "captureSession"    # Lcom/android/camera/session/CaptureSession;
    .param p5    # Lcom/google/common/util/concurrent/SettableFuture;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/ImageToProcess;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/camera/processing/imagebackend/ImageTaskManager;",
            "Lcom/android/camera/session/CaptureSession;",
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p5, "imageInfoResult":Lcom/google/common/util/concurrent/SettableFuture;, "Lcom/google/common/util/concurrent/SettableFuture<Lcom/android/camera/processing/imagebackend/ImageInfo;>;"
    sget-object v4, Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;->SLOW:Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer;-><init>(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;Lcom/android/camera/processing/imagebackend/ImageTaskManager;Lcom/android/camera/processing/imagebackend/TaskImageContainer$ProcessingPriority;Lcom/android/camera/session/CaptureSession;)V

    .line 52
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;

    .line 53
    return-void
.end method


# virtual methods
.method protected calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .locals 6
    .param p1, "img"    # Lcom/android/camera/processing/imagebackend/ImageToProcess;
    .param p2, "cropApplied"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    new-instance v0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    iget-object v1, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->rotation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    iget-object v2, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    invoke-interface {v3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    .line 67
    invoke-interface {v4}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->getFormat()I

    move-result v4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;-><init>(Lcom/android/camera/app/OrientationManager$DeviceOrientation;IIILandroid/graphics/Rect;)V

    .line 66
    return-object v0
.end method

.method protected createExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;
    .locals 7
    .param p1, "image"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)",
            "Lcom/android/camera/exif/ExifInterface;"
        }
    .end annotation

    .prologue
    .line 124
    .local p2, "totalCaptureResultProxyFuture":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    new-instance v1, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v1}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 126
    .local v1, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    .line 128
    .local v2, "location":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Landroid/location/Location;>;"
    iget-object v4, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession;->getSceneMode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 132
    .local v3, "scenmode":Lcom/google/common/base/Optional;, "Lcom/google/common/base/Optional<Ljava/lang/String;>;"
    :try_start_0
    new-instance v4, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v4, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 133
    invoke-interface {p2}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 132
    invoke-virtual {v4, v5, v6, v2, v3}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    .line 139
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    new-instance v4, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v4, v1}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {p1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v5

    .line 136
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    .line 135
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public logWrapper(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 56
    sget-object v0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v0, p1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    iget-object v8, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImage:Lcom/android/camera/processing/imagebackend/ImageToProcess;

    .line 78
    .local v8, "img":Lcom/android/camera/processing/imagebackend/ImageToProcess;
    :try_start_0
    iget-object v1, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->proxy:Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    iget-object v2, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->crop:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v2}, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->guaranteedSafeCrop(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v11

    .line 79
    .local v11, "safeCrop":Landroid/graphics/Rect;
    invoke-virtual {p0, v8, v11}, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->calculateInputImage(Lcom/android/camera/processing/imagebackend/ImageToProcess;Landroid/graphics/Rect;)Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 82
    .local v9, "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    :try_start_1
    iget-object v1, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v9, v1}, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->createExif(Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/android/camera/exif/ExifInterface;

    move-result-object v5

    .line 83
    .local v5, "exif":Lcom/android/camera/exif/ExifInterface;
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeWriteToDisk(Lcom/android/camera/exif/ExifInterface;)V

    .line 84
    new-instance v0, Lcom/android/camera/processing/imagebackend/ImageInfo;

    iget-object v1, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->mImageName:Lcom/google/common/base/Optional;

    iget v2, v9, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->width:I

    iget v3, v9, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->height:I

    iget-object v4, v9, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;->orientation:Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/processing/imagebackend/ImageInfo;-><init>(Lcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    .end local v7    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .local v0, "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v8, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 92
    .end local v5    # "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_0
    if-eqz v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 98
    :goto_1
    iget-object v10, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 101
    .local v10, "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface {v10}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    .line 104
    invoke-interface {v10}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {v2, v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeOfCaptureRequestAvailable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    .line 120
    :goto_2
    return-void

    .line 85
    .end local v0    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .end local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .restart local v7    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :catch_0
    move-exception v6

    .line 86
    .local v6, "e":Ljava/lang/Exception;
    :try_start_4
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when create image info : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v8, v2}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    move-object v0, v7

    .line 90
    .end local v7    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .restart local v0    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    goto :goto_0

    .line 89
    .end local v0    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v7    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageTaskManager:Lcom/android/camera/processing/imagebackend/ImageTaskManager;

    iget-object v3, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, v8, v3}, Lcom/android/camera/processing/imagebackend/ImageTaskManager;->releaseSemaphoreReference(Lcom/android/camera/processing/imagebackend/ImageToProcess;Ljava/util/concurrent/Executor;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 92
    .end local v9    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v11    # "safeCrop":Landroid/graphics/Rect;
    :catchall_1
    move-exception v1

    move-object v2, v1

    move-object v0, v7

    .end local v7    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    .restart local v0    # "imageInfo":Lcom/android/camera/processing/imagebackend/ImageInfo;
    :goto_3
    if-eqz v0, :cond_2

    .line 93
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 98
    :goto_4
    iget-object v10, v8, Lcom/android/camera/processing/imagebackend/ImageToProcess;->metadata:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 101
    .restart local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    invoke-interface {v10}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    :try_start_6
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v3

    .line 104
    invoke-interface {v10}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;

    invoke-virtual {v3, v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeOfCaptureRequestAvailable(Lcom/android/camera/one/v2/camera2proxy/CaptureResultProxy;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    .line 119
    :goto_5
    throw v2

    .line 95
    .end local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .restart local v9    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v11    # "safeCrop":Landroid/graphics/Rect;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "imageInfo is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_1

    .line 105
    .restart local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_1
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_7
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "CaptureResults not added to photoCaptureDoneEvent event due to Interrupted Exception."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    goto/16 :goto_2

    .line 108
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v6

    .line 109
    .local v6, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_8
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "CaptureResults not added to photoCaptureDoneEvent event due to Execution Exception."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    goto/16 :goto_2

    .line 112
    .end local v6    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_2
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    throw v1

    .line 116
    :cond_1
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "CaptureResults unavailable to photoCaptureDoneEvent event."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_2

    .line 95
    .end local v9    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .end local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .end local v11    # "safeCrop":Landroid/graphics/Rect;
    :cond_2
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mImageInfoResult:Lcom/google/common/util/concurrent/SettableFuture;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "imageInfo is null"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/google/common/util/concurrent/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    goto/16 :goto_4

    .line 105
    .restart local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :catch_3
    move-exception v6

    .line 106
    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_9
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "CaptureResults not added to photoCaptureDoneEvent event due to Interrupted Exception."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    goto/16 :goto_5

    .line 108
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_4
    move-exception v6

    .line 109
    .local v6, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_a
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "CaptureResults not added to photoCaptureDoneEvent event due to Execution Exception."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 112
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    goto/16 :goto_5

    .line 112
    .end local v6    # "e":Ljava/util/concurrent/ExecutionException;
    :catchall_3
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    .line 113
    iget-object v2, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->beautyLevel()V

    throw v1

    .line 116
    :cond_3
    sget-object v1, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "CaptureResults unavailable to photoCaptureDoneEvent event."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/android/camera/processing/imagebackend/TaskCreateImageInfo;->mSession:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->photoCaptureDoneEvent()V

    goto/16 :goto_5

    .line 92
    .end local v10    # "requestMetadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    .restart local v5    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v9    # "inputImage":Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .restart local v11    # "safeCrop":Landroid/graphics/Rect;
    :catchall_4
    move-exception v1

    move-object v2, v1

    goto/16 :goto_3
.end method
