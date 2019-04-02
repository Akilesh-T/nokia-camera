.class Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;
.super Ljava/lang/Object;
.source "SimpleImageCaptureCommand.java"

# interfaces
.implements Lcom/android/camera/one/v2/photo/ImageCaptureCommand;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field public static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

.field private final mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

.field private final mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SimImgCapCmd"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/one/v2/core/FrameServer;Lcom/android/camera/one/v2/core/RequestBuilder$Factory;Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;)V
    .locals 0
    .param p1, "frameServer"    # Lcom/android/camera/one/v2/core/FrameServer;
    .param p2, "builder"    # Lcom/android/camera/one/v2/core/RequestBuilder$Factory;
    .param p3, "imageReader"    # Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    .line 55
    iput-object p2, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    .line 56
    iput-object p3, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    .line 57
    return-void
.end method


# virtual methods
.method public run(Lcom/android/camera/async/Updatable;Lcom/android/camera/one/v2/imagesaver/ImageSaver;)V
    .locals 13
    .param p2, "imageSaver"    # Lcom/android/camera/one/v2/imagesaver/ImageSaver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/async/Updatable",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/camera/one/v2/imagesaver/ImageSaver;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/hardware/camera2/CameraAccessException;,
            Lcom/android/camera/one/v2/camera2proxy/CameraCaptureSessionClosedException;,
            Lcom/android/camera/one/v2/core/ResourceAcquisitionFailedException;
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "imageExposureUpdatable":Lcom/android/camera/async/Updatable;, "Lcom/android/camera/async/Updatable<Ljava/lang/Void;>;"
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mFrameServer:Lcom/android/camera/one/v2/core/FrameServer;

    invoke-interface {v7}, Lcom/android/camera/one/v2/core/FrameServer;->createExclusiveSession()Lcom/android/camera/one/v2/core/FrameServer$Session;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .local v6, "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    const/4 v9, 0x0

    .line 67
    :try_start_1
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mImageReader:Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/camera/one/v2/sharedimagereader/ManagedImageReader;->createStream(I)Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v3

    .line 66
    .local v3, "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    const/4 v8, 0x0

    .line 68
    :try_start_2
    new-instance v1, Lcom/android/camera/async/UpdatableCountDownLatch;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Lcom/android/camera/async/UpdatableCountDownLatch;-><init>(I)V

    .line 69
    .local v1, "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    iget-object v7, p0, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->mBuilderFactory:Lcom/android/camera/one/v2/core/RequestBuilder$Factory;

    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/android/camera/one/v2/core/RequestBuilder$Factory;->create(I)Lcom/android/camera/one/v2/core/RequestBuilder;

    move-result-object v5

    .line 71
    .local v5, "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    invoke-virtual {v5, v3}, Lcom/android/camera/one/v2/core/RequestBuilder;->addStream(Lcom/android/camera/one/v2/core/CaptureStream;)V

    .line 72
    new-instance v4, Lcom/android/camera/one/v2/photo/MetadataFuture;

    invoke-direct {v4}, Lcom/android/camera/one/v2/photo/MetadataFuture;-><init>()V

    .line 73
    .local v4, "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    invoke-virtual {v5, v4}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 74
    invoke-static {p1}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 75
    invoke-static {v1}, Lcom/android/camera/one/v2/core/ResponseListeners;->forFrameExposure(Lcom/android/camera/async/Updatable;)Lcom/android/camera/one/v2/core/ResponseListener;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/camera/one/v2/core/RequestBuilder;->addResponseListener(Lcom/android/camera/one/v2/core/ResponseListener;)V

    .line 76
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/camera/one/v2/core/Request;

    const/4 v10, 0x0

    invoke-virtual {v5}, Lcom/android/camera/one/v2/core/RequestBuilder;->build()Lcom/android/camera/one/v2/core/Request;

    move-result-object v11

    aput-object v11, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    sget-object v10, Lcom/android/camera/one/v2/core/FrameServer$RequestType;->NON_REPEATING:Lcom/android/camera/one/v2/core/FrameServer$RequestType;

    invoke-interface {v6, v7, v10}, Lcom/android/camera/one/v2/core/FrameServer$Session;->submitRequest(Ljava/util/List;Lcom/android/camera/one/v2/core/FrameServer$RequestType;)V

    .line 81
    invoke-virtual {v1}, Lcom/android/camera/async/UpdatableCountDownLatch;->await()V

    .line 82
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    .line 84
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->getNext()Lcom/android/camera/one/v2/camera2proxy/ImageProxy;

    move-result-object v2

    .line 85
    .local v2, "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    invoke-virtual {v4}, Lcom/android/camera/one/v2/photo/MetadataFuture;->getMetadata()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v7

    const/4 v10, 0x1

    invoke-interface {p2, v2, v7, v10}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->addFullSizeImage(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Z)V

    .line 86
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 87
    if-eqz v3, :cond_0

    if-eqz v8, :cond_3

    :try_start_3
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    if-eqz v9, :cond_6

    :try_start_4
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 95
    :cond_1
    :goto_1
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    .line 97
    .end local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .end local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :goto_2
    return-void

    .line 87
    .restart local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .restart local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_0
    move-exception v7

    :try_start_5
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 66
    .end local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .end local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_1
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 87
    :catchall_0
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_3
    if-eqz v6, :cond_2

    if-eqz v8, :cond_7

    :try_start_7
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    :goto_4
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .end local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_2
    move-exception v0

    .line 88
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    :try_start_9
    sget-object v7, Lcom/android/camera/one/v2/photo/SimpleImageCaptureCommand;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TimeoutException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Timeout when running command : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 95
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catchall_1
    move-exception v7

    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    throw v7

    .line 87
    .restart local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .restart local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :cond_3
    :try_start_a
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    .end local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .end local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catchall_2
    move-exception v7

    move-object v8, v9

    goto :goto_3

    .line 66
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catch_3
    move-exception v7

    :try_start_b
    throw v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 87
    :catchall_3
    move-exception v8

    move-object v12, v8

    move-object v8, v7

    move-object v7, v12

    :goto_5
    if-eqz v3, :cond_4

    if-eqz v8, :cond_5

    :try_start_c
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_4
    :goto_6
    :try_start_d
    throw v7

    :catch_4
    move-exception v10

    invoke-virtual {v8, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-interface {v3}, Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    .restart local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .restart local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_5
    move-exception v7

    :try_start_e
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_e
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_e .. :try_end_e} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_1

    .line 90
    .end local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .end local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .end local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :catch_6
    move-exception v7

    .line 95
    invoke-interface {p2}, Lcom/android/camera/one/v2/imagesaver/ImageSaver;->close()V

    goto :goto_2

    .line 87
    .restart local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .restart local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .restart local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .restart local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    .restart local v6    # "session":Lcom/android/camera/one/v2/core/FrameServer$Session;
    :cond_6
    :try_start_f
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V

    goto :goto_1

    .end local v1    # "exposureLatch":Lcom/android/camera/async/UpdatableCountDownLatch;, "Lcom/android/camera/async/UpdatableCountDownLatch<Ljava/lang/Void;>;"
    .end local v2    # "image":Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .end local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    .end local v4    # "metadataFuture":Lcom/android/camera/one/v2/photo/MetadataFuture;
    .end local v5    # "photoRequest":Lcom/android/camera/one/v2/core/RequestBuilder;
    :catch_7
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-interface {v6}, Lcom/android/camera/one/v2/core/FrameServer$Session;->close()V
    :try_end_f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_f .. :try_end_f} :catch_2
    .catch Lcom/android/camera/async/BufferQueue$BufferQueueClosedException; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto :goto_4

    .restart local v3    # "imageStream":Lcom/android/camera/one/v2/sharedimagereader/imagedistributor/ImageStream;
    :catchall_4
    move-exception v7

    goto :goto_5
.end method
