.class public Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;
.super Ljava/lang/Object;
.source "DualSightImageProcessor.java"

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
        "Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;",
        ">;",
        "Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;"
    }
.end annotation


# static fields
.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mDSImageProcessor:Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;

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

.field private final mService:Ljava/util/concurrent/ExecutorService;

.field private final mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DualSightImageProcessor"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/ex/camera2/portability/CaptureIntent;Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZILcom/android/camera/stats/profiler/Profile;)V
    .locals 11
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
    .param p2, "singleImageProcessor"    # Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;
    .param p3, "listener"    # Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .param p4, "imageEngineFactoryBase"    # Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;
    .param p5, "requiredImgNum"    # I
    .param p6, "targetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p7, "slaveTargetCaptureSize"    # Lcom/android/camera/util/Size;
    .param p8, "deviceRotation"    # I
    .param p9, "imageGenerator"    # Lcom/android/camera/opengl/image/ImageGenerator;
    .param p10, "beautySetting"    # Z
    .param p11, "beautyLevelSetting"    # I
    .param p12, "guard"    # Lcom/android/camera/stats/profiler/Profile;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 65
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    .line 68
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 69
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mInfinite:Z

    .line 70
    const/16 v10, 0x100

    move-object v1, p4

    move-object v2, p0

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v1 .. v10}, Lcom/thirdparty/arcsoft/engine/ImageEngineFactorySwitch$ImageEngineFactoryBase;->newDualSightImageEngine(Lcom/thirdparty/arcsoft/engine/ImageEngineBase$OnProcessStateListener;ILcom/android/camera/util/Size;Lcom/android/camera/util/Size;ILcom/android/camera/opengl/image/ImageGenerator;ZII)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    .line 71
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "ImageEngine created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 73
    iput-object p2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mDSImageProcessor:Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;

    .line 74
    iput-object p3, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    .line 75
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    .line 76
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "ImageProcessor created"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mImageInfo:Lcom/google/common/util/concurrent/SettableFuture;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/thirdparty/arcsoft/engine/ImageEngineBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mYuvImageProcessListener:Lcom/android/camera/one/v2/imageprocessor/YuvImageBackendImageProcessor$YuvImageProcessListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mInfinite:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public abort()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 205
    :goto_0
    return-void

    .line 192
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "abort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$4;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$4;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public addFullSizeImage(Lcom/android/camera/one/CameraType;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
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
    :try_start_0
    invoke-interface {p3}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :catch_0
    move-exception v0

    .line 86
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

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 8
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
    .line 92
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mDSImageProcessor:Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->DUALSIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {p1}, Lcom/android/camera/one/DualSightCamType;->getType()I

    move-result v3

    new-instance v7, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;

    invoke-direct {v7, p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$1;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p0

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/one/v2/imageprocessor/DSImageProcessor;->convertImageAndProcess(Lcom/android/camera/one/DualSightCamType;Lcom/android/ex/camera2/portability/CaptureIntent;ILcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 110
    return-void
.end method

.method public addFullSizeImage(Lcom/android/camera/one/DualSightCamType;[B)V
    .locals 6
    .param p1, "dualSightCamType"    # Lcom/android/camera/one/DualSightCamType;
    .param p2, "photoData"    # [B

    .prologue
    .line 114
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] TS addFullSizeImage"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mImageEngine:Lcom/thirdparty/arcsoft/engine/ImageEngineBase;

    sget-object v1, Lcom/android/camera/one/CameraType;->BAYER:Lcom/android/camera/one/CameraType;

    invoke-virtual {p1}, Lcom/android/camera/one/DualSightCamType;->getType()I

    move-result v3

    iget-boolean v2, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mInfinite:Z

    if-nez v2, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/thirdparty/arcsoft/engine/ImageEngineBase;->addFrame(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/DualSightCamType;I[BZ)V

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public addRawImage(Lcom/android/camera/one/CameraType;Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
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
    .line 129
    .local p3, "metadata":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/android/camera/one/v2/camera2proxy/TotalCaptureResultProxy;>;"
    :try_start_0
    invoke-interface {p2}, Lcom/android/camera/one/v2/camera2proxy/ImageProxy;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Flow error : this method should not be call here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :catch_0
    move-exception v0

    .line 133
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

.method public cancel()V
    .locals 3

    .prologue
    .line 209
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 224
    :goto_0
    return-void

    .line 211
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancel"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$5;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$5;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 211
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
    .line 229
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 183
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->abort()V

    .line 185
    return-void
.end method

.method public onPostImage(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "postImage"    # [B

    .prologue
    .line 306
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 311
    if-eqz p4, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$8;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$8;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 308
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
    .line 299
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 301
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onPostProcessDone"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessAbort()V
    .locals 2

    .prologue
    .line 233
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onProcessAbort"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public onProcessDone(III[B)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "jepgData"    # [B

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 289
    :goto_0
    return-void

    .line 259
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 262
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$7;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;[BII)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 259
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
    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unexpect callback : onProcessDone(Bokeh_Info bokehInfo)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onProcessError(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    .line 238
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 253
    :goto_0
    return-void

    .line 240
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 243
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$6;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 240
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onSuccess(Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V
    .locals 3
    .param p1, "result"    # Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 158
    sget-object v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess : result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 159
    if-nez p1, :cond_1

    .line 160
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "process error : get empty result."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "get empty result"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->onFailure(Ljava/lang/Throwable;)V

    .line 179
    :goto_1
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 166
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$3;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 178
    :goto_2
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 176
    :cond_2
    :try_start_1
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 40
    check-cast p1, Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;

    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->onSuccess(Lcom/android/camera/one/v2/imageprocessor/JpegImageToProcess;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "start fail"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 142
    monitor-exit v1

    .line 154
    :goto_0
    return-void

    .line 144
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget-object v0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;->mService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor$2;-><init>(Lcom/android/camera/one/v2/imageprocessor/DualSightImageProcessor;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
