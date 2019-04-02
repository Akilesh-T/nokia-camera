.class public Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;
.super Ljava/lang/Object;
.source "PanoramaImageProcessor.java"

# interfaces
.implements Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;
.implements Lcom/google/common/util/concurrent/FutureCallback;
.implements Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/one/v2/imageprocessor/ImageProcessor;",
        "Lcom/google/common/util/concurrent/FutureCallback",
        "<",
        "Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;",
        ">;",
        "Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private final mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

.field private final mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture",
            "<",
            "Lcom/android/camera/processing/imagebackend/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInfinite:Z

.field private mLastTimeStamp:J

.field private final mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoImageProcessor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;Lcom/android/camera/util/Size;FFLcom/android/camera/burst/BurstController;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 10
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "singleImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "imageEngineFactoryBase"    # Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .param p5, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p6, "horizontalViewAngle"    # F
    .param p7, "verticalViewAngle"    # F
    .param p8, "burstController"    # Lcom/android/camera/burst/BurstController;
    .param p9, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mLastTimeStamp:J

    .line 61
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 62
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    .line 65
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 66
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mInfinite:Z

    .line 67
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 68
    invoke-virtual {p5}, Lcom/android/camera/util/Size;->width()I

    move-result v4

    invoke-virtual {p5}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    const/16 v6, 0x11

    move-object v2, p4

    move-object v3, p0

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newPanoramaImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IIIFFLcom/android/camera/burst/BurstController;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 69
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "ImageEngine created"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    .line 72
    iput-object p3, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    .line 73
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    .line 76
    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "ImageProcessor created"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mInfinite:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 193
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 208
    :goto_0
    return-void

    .line 195
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$4;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 8
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "index"    # I
    .param p3, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/CameraType;",
            "I",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V

    .line 85
    monitor-exit v1

    .line 107
    :goto_0
    return-void

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v7, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$1;

    invoke-direct {v7, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->convertImageAndProcess(Lcom/android/camera/one/CameraType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/one/DualSightCamType;",
            "Lcom/android/camera/one/v2/camera2proxy/ImageProxy;",
            "Lcom/google/common/util/concurrent/ListenableFuture",
            "<",
            "Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :catch_0
    move-exception v0

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;[B)V
    .locals 2
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "photoData"    # [B

    .prologue
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .param p1, "cameraType"    # Lcom/android/camera/one/CameraType;
    .param p2, "imageProxy"    # Lcom/android/camera/one/v2/camera2proxy/ImageProxy;
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
    .line 127
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 128
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 227
    :goto_0
    return-void

    .line 214
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$5;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 231
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 247
    :goto_0
    return-void

    .line 233
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 235
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "finish"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$6;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$6;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 246
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 233
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 186
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFailure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->abort()V

    .line 188
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostImage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    if-eqz p4, :cond_0

    .line 336
    const/16 v0, 0x100

    if-ne p3, v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$9;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;II[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPostProcessDone([B)V
    .locals 3
    .param p1, "jepgData"    # [B

    .prologue
    .line 323
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostProcessDone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessAbort()V
    .locals 2

    .prologue
    .line 251
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "jepgData"    # [B

    .prologue
    .line 275
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 313
    :goto_0
    return-void

    .line 277
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$8;

    invoke-direct {v1, p0, p1, p2, p4}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$8;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;II[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 2
    .param p1, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 318
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onProcessDone(Bokeh_Info bokehInfo)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 256
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 271
    :goto_0
    return-void

    .line 258
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$7;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$7;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
    .locals 6
    .param p1, "result"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 154
    sget-object v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess : result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 155
    if-nez p1, :cond_1

    .line 156
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process error : get empty result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty result"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->onFailure(Ljava/lang/Throwable;)V

    .line 182
    :goto_1
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mFinish:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 165
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 166
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 167
    iget-wide v2, p1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mTimestamp:J

    iget-wide v4, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mLastTimeStamp:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    .line 168
    iget-wide v2, p1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;->mTimestamp:J

    iput-wide v2, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mLastTimeStamp:J

    .line 169
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$3;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 181
    :cond_3
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 179
    :cond_4
    :try_start_3
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "process stop : ignore result."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    check-cast p1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 135
    monitor-exit v1

    .line 150
    :goto_0
    return-void

    .line 137
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor$2;-><init>(Lcom/android/camera/one/v2/imageprocessor/PanoramaImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
