.class public Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;
.super Ljava/lang/Object;
.source "DCYUVImageProcessor.java"

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

.field private final mProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mRequiredImgNum:I

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DC_YUVImgProcessor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;II[BIFILandroid/graphics/Point;Lcom/android/camera/stats/profiler/Profile;)V
    .locals 13
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "singleImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "imageEngineFactoryBase"    # Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .param p5, "requiredImgNum"    # I
    .param p6, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p7, "currentIso"    # I
    .param p8, "slaveCurrentIso"    # I
    .param p9, "calibrationData"    # [B
    .param p10, "dualCamLayoutOrientation"    # I
    .param p11, "horizontalViewAngle"    # F
    .param p12, "blurIntensity"    # I
    .param p13, "focusPosiiton"    # Landroid/graphics/Point;
    .param p14, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 61
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    .line 64
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 65
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mInfinite:Z

    .line 66
    iput-object p1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 67
    move/from16 v0, p5

    iput v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mRequiredImgNum:I

    .line 68
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_0

    .line 69
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mInfinite:Z

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    const/16 v7, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newDCNightShotImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIIIII[B)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "ImageEngine created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 78
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    .line 79
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    .line 80
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    .line 81
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "DC_ImageProcessor created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 82
    return-void

    .line 70
    :cond_0
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v1, p1, :cond_1

    .line 71
    iget-boolean v4, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mInfinite:Z

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    const/16 v7, 0x11

    move-object/from16 v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move-object/from16 v12, p13

    invoke-virtual/range {v1 .. v12}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newDCImageRefocusImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;IZIII[BIFILandroid/graphics/Point;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    goto :goto_0

    .line 73
    :cond_1
    const/4 v1, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;->onProcessError(I)V

    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknow capture intent :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mInfinite:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mRequiredImgNum:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 181
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 196
    :goto_0
    return-void

    .line 183
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$4;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 183
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
    .line 86
    .local p4, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    iget-object v2, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    new-instance v7, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$1;

    invoke-direct {v7, p0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)V

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->convertImageAndProcess(Lcom/android/camera/one/CameraType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 104
    return-void
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
    .line 109
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :catch_0
    move-exception v0

    .line 113
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
    .line 119
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
    .line 124
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mSingleImageProcessor:Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/one/v2/imageprocessor/SingleImageProcessor;->saveAndCloseRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 125
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 201
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 215
    :goto_0
    return-void

    .line 202
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$5;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$5;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 174
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 175
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->abort()V

    .line 176
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 317
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostImage"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPostProcessDone([B)V
    .locals 3
    .param p1, "jepgData"    # [B

    .prologue
    .line 310
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 312
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostProcessDone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessAbort()V
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "jepgData"    # [B

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 275
    :goto_0
    return-void

    .line 250
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 253
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$7;

    invoke-direct {v1, p0, p4}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$7;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessDone(Lcom/android/camera/mpo/Bokeh_Info;)V
    .locals 3
    .param p1, "bokehInfo"    # Lcom/android/camera/mpo/Bokeh_Info;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 306
    :goto_0
    return-void

    .line 281
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProcessDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/mpo/Bokeh_Info;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$8;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;Lcom/android/camera/mpo/Bokeh_Info;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 281
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 244
    :goto_0
    return-void

    .line 231
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 234
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$6;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 148
    sget-object v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 149
    if-nez p1, :cond_1

    .line 150
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process error : get empty result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty result"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->onFailure(Ljava/lang/Throwable;)V

    .line 170
    :goto_1
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$3;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 169
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 167
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "process stop : ignore result."

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    check-cast p1, Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/YUVImageToProcess;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 132
    monitor-exit v1

    .line 144
    :goto_0
    return-void

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor$2;-><init>(Lcom/android/camera/one/v2/imageprocessor/DCYUVImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
