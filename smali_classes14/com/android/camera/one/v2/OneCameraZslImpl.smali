.class public Lcom/android/camera/one/v2/OneCameraZslImpl;
.super Lcom/android/camera/one/AbstractOneCamera;
.source "OneCameraZslImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;,
        Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;,
        Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final FOCUS_RESUME_CALLBACK_TOKEN:Ljava/lang/String; = "RESUME_CONTINUOUS_AF"

.field private static final JPEG_QUALITY:I

.field private static final MAX_CAPTURE_IMAGES:I = 0xc

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final ZSL_ENABLED:Z = true

.field private static final sCaptureImageFormat:I = 0x23


# instance fields
.field ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCameraListenerHandler:Landroid/os/Handler;

.field private final mCameraListenerThread:Landroid/os/HandlerThread;

.field private final mCameraThread:Landroid/os/HandlerThread;

.field private final mCaptureImageReader:Landroid/media/ImageReader;

.field private mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCapturedImageTimestamps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mCropRegion:Landroid/graphics/Rect;

.field private final mDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mDirection:Lcom/android/camera/one/CameraDirectionProvider;

.field private final mFullSizeAspectRatio:F

.field private final mImageSaverThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private volatile mIsClosed:Z

.field private final mJpegByteBufferPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLensRange:Lcom/android/camera/ui/motion/LinearScale;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mPreviewSurface:Landroid/view/Surface;

.field private final mReadyStateManager:Lcom/android/camera/util/ListenerCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/util/ListenerCombiner",
            "<",
            "Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCameraZslImpl2"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 106
    const/4 v0, 0x2

    .line 107
    invoke-static {v0}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(I)I

    move-result v0

    sput v0, Lcom/android/camera/one/v2/OneCameraZslImpl;->JPEG_QUALITY:I

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 10
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x0

    .line 302
    invoke-direct {p0}, Lcom/android/camera/one/AbstractOneCamera;-><init>()V

    .line 148
    invoke-static {}, Lcom/android/camera/one/v2/AutoFocusHelper;->getZeroWeightRegion()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 180
    iput-boolean v8, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mIsClosed:Z

    .line 194
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCapturedImageTimestamps:Ljava/util/Set;

    .line 201
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mJpegByteBufferPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 205
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mZoomValue:F

    .line 209
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 210
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 212
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 233
    new-instance v0, Lcom/android/camera/util/ListenerCombiner;

    const-class v1, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    new-instance v3, Lcom/android/camera/one/v2/OneCameraZslImpl$1;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$1;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-direct {v0, v1, v3}, Lcom/android/camera/util/ListenerCombiner;-><init>(Ljava/lang/Class;Lcom/android/camera/util/ListenerCombiner$StateChangeListener;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mReadyStateManager:Lcom/android/camera/util/ListenerCombiner;

    .line 303
    sget-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Creating new OneCameraZslImpl"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 306
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 308
    invoke-static {p2}, Lcom/android/camera/ui/focus/LensRangeCalculator;->getDiopterToRatioCalculator(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    .line 309
    new-instance v0, Lcom/android/camera/one/CameraDirectionProvider;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v0, v1}, Lcom/android/camera/one/CameraDirectionProvider;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDirection:Lcom/android/camera/one/CameraDirectionProvider;

    .line 310
    invoke-static {p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->calculateFullSizeAspectRatio(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mFullSizeAspectRatio:F

    .line 312
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneCamera2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraThread:Landroid/os/HandlerThread;

    .line 314
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraThread:Landroid/os/HandlerThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 315
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 316
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    .line 318
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneCamera2-Listener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraListenerThread:Landroid/os/HandlerThread;

    .line 319
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 320
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraListenerHandler:Landroid/os/Handler;

    .line 324
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getNumCpuCores()I

    move-result v2

    .line 325
    .local v2, "numEncodingCores":I
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mImageSaverThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 328
    new-instance v0, Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraListenerHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mImageSaverThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, v9, v1, v3}, Lcom/android/camera/one/v2/ImageCaptureManager;-><init>(ILandroid/os/Handler;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    .line 331
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    new-instance v1, Lcom/android/camera/one/v2/OneCameraZslImpl$2;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$2;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/one/v2/ImageCaptureManager;->setCaptureReadyListener(Lcom/android/camera/one/v2/ImageCaptureManager$CaptureReadyListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v3, Lcom/android/camera/one/v2/OneCameraZslImpl$3;

    invoke-direct {v3, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$3;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/one/v2/ImageCaptureManager;->addMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)V

    .line 358
    if-nez p3, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->getDefaultPictureSize()Lcom/android/camera/util/Size;

    move-result-object p3

    .line 363
    :cond_0
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    .line 364
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    const/16 v3, 0x23

    .line 363
    invoke-static {v0, v1, v3, v9}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 367
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 368
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0, v8}, Landroid/media/MediaActionSound;->load(I)V

    .line 369
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/one/v2/OneCameraZslImpl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->broadcastReadyState(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/one/v2/OneCameraZslImpl;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCapturedImageTimestamps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->onShutterInvokeUI(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/android/camera/one/v2/OneCameraZslImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/one/v2/OneCameraZslImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mZoomValue:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/one/v2/OneCameraZslImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # F

    .prologue
    .line 102
    iput p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mZoomValue:F

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/one/v2/OneCameraZslImpl;F)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # F

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/one/v2/OneCameraZslImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendRepeatingCaptureRequest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/util/ListenerCombiner;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mReadyStateManager:Lcom/android/camera/util/ListenerCombiner;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/media/Image;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Landroid/media/Image;
    .param p2, "x2"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p3, "x3"    # Lcom/android/camera/session/CaptureSession;
    .param p4, "x4"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/one/v2/OneCameraZslImpl;->savePicture(Landroid/media/Image;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$400()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/ui/motion/LinearScale;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/OneCameraZslImpl;)Lcom/android/camera/one/v2/ImageCaptureManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraZslImpl;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendSingleRequest(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)Z

    move-result v0

    return v0
.end method

.method private acquireJpegBytes(Landroid/media/Image;I)[B
    .locals 7
    .param p1, "img"    # Landroid/media/Image;
    .param p2, "degrees"    # I

    .prologue
    .line 1050
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    const/16 v6, 0x100

    if-ne v5, v6, :cond_0

    .line 1051
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 1052
    .local v4, "plane0":Landroid/media/Image$Plane;
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1054
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v1, v5, [B

    .line 1055
    .local v1, "imageBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1056
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v2, v1

    .line 1080
    .end local v1    # "imageBytes":[B
    .end local v4    # "plane0":Landroid/media/Image$Plane;
    .local v2, "imageBytes":[B
    :goto_0
    return-object v2

    .line 1058
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "imageBytes":[B
    :cond_0
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_3

    .line 1059
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mJpegByteBufferPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v5}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 1060
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_1

    .line 1061
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v6

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1064
    :cond_1
    new-instance v5, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v5, p1}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    sget v6, Lcom/android/camera/one/v2/OneCameraZslImpl;->JPEG_QUALITY:I

    invoke-static {v5, v0, v6, p2}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1068
    .local v3, "numBytes":I
    if-gez v3, :cond_2

    .line 1069
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Error compressing jpeg."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1072
    :cond_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1074
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v1, v5, [B

    .line 1075
    .restart local v1    # "imageBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1077
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1078
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mJpegByteBufferPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v5, v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 1080
    .end local v1    # "imageBytes":[B
    .restart local v2    # "imageBytes":[B
    goto :goto_0

    .line 1082
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "imageBytes":[B
    .end local v3    # "numBytes":I
    :cond_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Unsupported image format."

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private addFlashToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .param p2, "flashMode"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .prologue
    const/4 v2, 0x1

    .line 764
    sget-object v0, Lcom/android/camera/one/v2/OneCameraZslImpl$12;->$SwitchMap$com$android$camera$one$OneCamera$PhotoCaptureParameters$Flash:[I

    invoke-virtual {p2}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 779
    :goto_0
    return-void

    .line 766
    :pswitch_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    .line 767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 766
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 768
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 771
    :pswitch_1
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 772
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 775
    :pswitch_2
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 776
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 775
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 764
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 758
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 759
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 760
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 761
    return-void
.end method

.method private static calculateFullSizeAspectRatio(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 3
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 1013
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1014
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1015
    .local v0, "activeArraySize":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    return v1
.end method

.method private cropRegionForZoom(F)Landroid/graphics/Rect;
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/AutoFocusHelper;->cropRegionForZoom(Landroid/hardware/camera2/CameraCharacteristics;F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getImageSizeForOrientation(III)Lcom/android/camera/util/Size;
    .locals 2
    .param p1, "originalWidth"    # I
    .param p2, "originalHeight"    # I
    .param p3, "orientation"    # I

    .prologue
    .line 1028
    if-eqz p3, :cond_0

    const/16 v0, 0xb4

    if-ne p3, v0, :cond_1

    .line 1029
    :cond_0
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p1, p2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1031
    :goto_0
    return-object v0

    .line 1030
    :cond_1
    const/16 v0, 0x5a

    if-eq p3, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_3

    .line 1031
    :cond_2
    new-instance v0, Lcom/android/camera/util/Size;

    invoke-direct {v0, p2, p1}, Lcom/android/camera/util/Size;-><init>(II)V

    goto :goto_0

    .line 1033
    :cond_3
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Orientation not supported."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onShutterInvokeUI(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V
    .locals 2
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .prologue
    .line 440
    iget-object v0, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera$PictureCallback;->onQuickExpose()V

    .line 442
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 443
    return-void
.end method

.method private savePicture(Landroid/media/Image;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V
    .locals 15
    .param p1, "image"    # Landroid/media/Image;
    .param p2, "captureParams"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p3, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p4, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 646
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->heading:I

    .line 647
    .local v13, "heading":I
    move-object/from16 v0, p2

    iget v2, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result v9

    .line 649
    .local v9, "degrees":I
    new-instance v8, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v8}, Lcom/android/camera/exif/ExifInterface;-><init>()V

    .line 652
    .local v8, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3, v9}, Lcom/android/camera/one/v2/OneCameraZslImpl;->getImageSizeForOrientation(III)Lcom/android/camera/util/Size;

    move-result-object v14

    .line 655
    .local v14, "size":Lcom/android/camera/util/Size;
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 656
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 658
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    const/4 v3, 0x1

    .line 659
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v2

    .line 658
    invoke-virtual {v8, v2}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 662
    if-ltz v13, :cond_0

    .line 663
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v3, "M"

    invoke-virtual {v8, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v10

    .line 665
    .local v10, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v2, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v3, Lcom/android/camera/exif/Rational;

    int-to-long v4, v13

    const-wide/16 v6, 0x1

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    .line 666
    invoke-virtual {v8, v2, v3}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v11

    .line 667
    .local v11, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v8, v10}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 668
    invoke-virtual {v8, v11}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 670
    .end local v10    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v11    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    new-instance v2, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v2, v8}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;

    move-object/from16 v0, p4

    invoke-direct {v4, v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 671
    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 672
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    .line 670
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V

    .line 674
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9}, Lcom/android/camera/one/v2/OneCameraZslImpl;->acquireJpegBytes(Landroid/media/Image;I)[B

    move-result-object v3

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v4

    .line 675
    invoke-virtual {v14}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v14}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    move-object/from16 v2, p3

    .line 673
    invoke-interface/range {v2 .. v8}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v12

    .line 676
    .local v12, "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    new-instance v2, Lcom/android/camera/one/v2/OneCameraZslImpl$8;

    move-object/from16 v0, p2

    invoke-direct {v2, p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl$8;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    invoke-static {v12, v2}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 687
    return-void
.end method

.method private sendAutoExposureTriggerRequest(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;)Z
    .locals 7
    .param p1, "flashMode"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .prologue
    const/4 v2, 0x1

    .line 899
    sget-object v3, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "sendAutoExposureTriggerRequest()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 903
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 908
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 911
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 914
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 916
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    .line 917
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 916
    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 919
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 920
    invoke-direct {p0, v0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addFlashToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;)V

    .line 922
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 927
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 925
    :catch_0
    move-exception v1

    .line 926
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not execute auto exposure trigger request."

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 927
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendAutoFocusHoldRequest()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 973
    sget-object v4, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "sendAutoFocusHoldRequest()"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 977
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 982
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 985
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 988
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 990
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 991
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 993
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 996
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not execute auto focus hold request."

    invoke-static {v2, v4, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 1001
    goto :goto_0
.end method

.method private sendAutoFocusTriggerRequest()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    .line 934
    sget-object v3, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "sendAutoFocusTriggerRequest()"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 938
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 943
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 946
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 949
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 951
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 953
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 954
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 956
    iget-object v3, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 959
    :catch_0
    move-exception v1

    .line 960
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not execute auto focus trigger request."

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 961
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendRepeatingBurstCaptureRequest()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 870
    sget-object v4, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "sendRepeatingBurstCaptureRequest()"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 874
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 877
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 880
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 881
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x3

    .line 882
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 881
    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 883
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 885
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 886
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 888
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 890
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 892
    :catch_0
    move-exception v1

    .line 893
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not send repeating burst capture request."

    invoke-static {v2, v4, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 894
    goto :goto_0
.end method

.method private sendRepeatingCaptureRequest()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 788
    sget-object v4, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "sendRepeatingCaptureRequest()"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 797
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 800
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 803
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 805
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x4

    .line 806
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 805
    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 807
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 809
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 810
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 812
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 814
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 816
    :catch_0
    move-exception v1

    .line 818
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not execute zero-shutter-lag repeating request."

    invoke-static {v2, v4, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 822
    goto :goto_0
.end method

.method private sendSingleRequest(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)Z
    .locals 9
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 833
    sget-object v5, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "sendSingleRequest()"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 836
    :try_start_0
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 838
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 841
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 843
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 845
    sget-object v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .line 846
    .local v2, "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    invoke-direct {p0, v0, v2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addFlashToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;)V

    .line 847
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->addRegionsToCaptureRequestBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 849
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 850
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 853
    sget-object v5, Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;->EXPLICIT_CAPTURE:Lcom/android/camera/one/v2/OneCameraZslImpl$RequestTag;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 861
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v2    # "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    :goto_0
    return v3

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v3, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not execute single still capture request."

    invoke-static {v3, v5, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v4

    .line 865
    goto :goto_0
.end method

.method private setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 5
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_0

    .line 715
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 716
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 718
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 719
    .local v1, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera/one/v2/OneCameraZslImpl$10;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl$10;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    .end local v1    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_0
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not set up capture session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 753
    invoke-interface {p2}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    goto :goto_0
.end method

.method private setupAsync(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 2
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/one/v2/OneCameraZslImpl$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl$9;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 703
    return-void
.end method

.method private startAFCycle()V
    .locals 8

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    const-string v1, "RESUME_CONTINUOUS_AF"

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1091
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendAutoFocusTriggerRequest()Z

    .line 1096
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendAutoFocusHoldRequest()Z

    .line 1100
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/one/v2/OneCameraZslImpl$11;

    invoke-direct {v1, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$11;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    const-string v2, "RESUME_CONTINUOUS_AF"

    .line 1108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/camera/one/Settings3A;->getFocusHoldMillis()I

    move-result v3

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 1100
    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 1109
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 612
    iget-boolean v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 613
    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Camera is already closed."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 626
    :goto_0
    return-void

    .line 617
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mIsClosed:Z

    .line 622
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 623
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 624
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    invoke-virtual {v1}, Lcom/android/camera/one/v2/ImageCaptureManager;->close()V

    .line 625
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v1, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Could not abort captures in progress."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1181
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 1196
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public getDefaultPictureSize()Lcom/android/camera/util/Size;
    .locals 11

    .prologue
    .line 419
    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 420
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 421
    .local v0, "configs":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v8, 0x23

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 424
    .local v3, "supportedSizes":[Landroid/util/Size;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 426
    .local v2, "largestSupportedSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v4, v8

    .line 427
    .local v4, "largestSupportedSizePixels":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_1

    .line 428
    aget-object v8, v3, v1

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v6, v8

    .line 429
    .local v6, "numPixels":J
    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 430
    aget-object v2, v3, v1

    .line 431
    move-wide v4, v6

    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 435
    .end local v6    # "numPixels":J
    :cond_1
    new-instance v8, Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v9

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    return-object v8
.end method

.method public getDirection()Lcom/android/camera/one/OneCamera$Facing;
    .locals 1

    .prologue
    .line 640
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mDirection:Lcom/android/camera/one/CameraDirectionProvider;

    invoke-virtual {v0}, Lcom/android/camera/one/CameraDirectionProvider;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method public getFullSizeAspectRatio()F
    .locals 1

    .prologue
    .line 635
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mFullSizeAspectRatio:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 2

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSlaveCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 1186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveMaxZoom()F
    .locals 1

    .prologue
    .line 1159
    const/4 v0, 0x0

    return v0
.end method

.method public getSupportedPreviewSizes()[Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 629
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 630
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 631
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;
    .locals 1

    .prologue
    .line 1191
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFlashRequired()Z
    .locals 1

    .prologue
    .line 1201
    const/4 v0, 0x0

    return v0
.end method

.method public pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1149
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 4
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1127
    if-nez p1, :cond_0

    .line 1130
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->getDefaultPictureSize()Lcom/android/camera/util/Size;

    move-result-object p1

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1133
    .local v0, "pictureAspectRatio":F
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->getSupportedPreviewSizes()[Lcom/android/camera/util/Size;

    move-result-object v1

    float-to-double v2, v0

    invoke-static {v1, v2, v3}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;D)Lcom/android/camera/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1144
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1139
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 608
    return-void
.end method

.method public setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 403
    return-void
.end method

.method public setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    .prologue
    .line 398
    return-void
.end method

.method public setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V
    .locals 3
    .param p1, "lensStateListener"    # Lcom/android/camera/one/OneCamera$LensStateListener;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    if-nez v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v2, Lcom/android/camera/one/v2/OneCameraZslImpl$4;

    invoke-direct {v2, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$4;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/one/v2/ImageCaptureManager;->addMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)V

    .line 392
    :cond_0
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    .line 393
    return-void
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 408
    return-void
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 413
    return-void
.end method

.method public setSlaveZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 1172
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 1164
    iput p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mZoomValue:F

    .line 1165
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCropRegion:Landroid/graphics/Rect;

    .line 1166
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendRepeatingCaptureRequest()Z

    .line 1167
    return-void
.end method

.method public startPreview(Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Landroid/view/Surface;Lcom/android/camera/async/Lifetime;Lcom/android/camera/opengl/image/ImageGeneratorProvider;Lcom/android/camera/burst/BurstFacade;Lcom/android/camera/one/OneCameraCaptureSetting;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 1
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "slaveSurface"    # Landroid/view/Surface;
    .param p3, "previewCallbackSurface"    # Landroid/view/Surface;
    .param p4, "slavePreviewCallbackSurface"    # Landroid/view/Surface;
    .param p5, "localPreviewLifetime"    # Lcom/android/camera/async/Lifetime;
    .param p6, "imageGeneratorProvider"    # Lcom/android/camera/opengl/image/ImageGeneratorProvider;
    .param p7, "burstFacade"    # Lcom/android/camera/burst/BurstFacade;
    .param p8, "captureSetting"    # Lcom/android/camera/one/OneCameraCaptureSetting;
    .param p9, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 602
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, p9}, Lcom/android/camera/one/v2/OneCameraZslImpl;->setupAsync(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    .line 603
    return-void
.end method

.method public takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 8
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 450
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mReadyStateManager:Lcom/android/camera/util/ListenerCombiner;

    sget-object v6, Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;->CAPTURE_NOT_IN_PROGRESS:Lcom/android/camera/one/v2/OneCameraZslImpl$ReadyStateRequirement;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/util/ListenerCombiner;->setInput(Ljava/lang/Enum;Z)Z

    .line 452
    const/4 v3, 0x1

    .line 456
    .local v3, "useZSL":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v4, "zslConstraints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;>;"
    new-instance v5, Lcom/android/camera/one/v2/OneCameraZslImpl$5;

    invoke-direct {v5, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$5;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v2, "singleCaptureConstraint":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/one/v2/ImageCaptureManager$CapturedImageConstraint;>;"
    new-instance v5, Lcom/android/camera/one/v2/OneCameraZslImpl$6;

    invoke-direct {v5, p0}, Lcom/android/camera/one/v2/OneCameraZslImpl$6;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    if-eqz v3, :cond_3

    .line 532
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    new-instance v6, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/one/v2/ImageCaptureManager;->tryCaptureExistingImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)Z

    move-result v0

    .line 534
    .local v0, "capturedPreviousFrame":Z
    if-eqz v0, :cond_0

    .line 535
    sget-object v5, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "Saving previous frame"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 536
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->onShutterInvokeUI(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    .line 597
    :goto_0
    return-void

    .line 538
    :cond_0
    sget-object v5, Lcom/android/camera/one/v2/OneCameraZslImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "No good image Available.  Capturing next available good image."

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 543
    sget-object v1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->OFF:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    .line 545
    .local v1, "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->ON:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    if-eq v1, v5, :cond_1

    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;

    if-ne v1, v5, :cond_2

    .line 559
    :cond_1
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    new-instance v6, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    invoke-virtual {v5, v6, v2}, Lcom/android/camera/one/v2/ImageCaptureManager;->captureNextImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)V

    .line 562
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v7, Lcom/android/camera/one/v2/OneCameraZslImpl$7;

    invoke-direct {v7, p0, p1}, Lcom/android/camera/one/v2/OneCameraZslImpl$7;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/one/v2/ImageCaptureManager;->addMetadataChangeListener(Landroid/hardware/camera2/CaptureResult$Key;Lcom/android/camera/one/v2/ImageCaptureManager$MetadataChangeListener;)V

    .line 580
    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/OneCameraZslImpl;->sendAutoExposureTriggerRequest(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;)Z

    goto :goto_0

    .line 587
    :cond_2
    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCaptureManager:Lcom/android/camera/one/v2/ImageCaptureManager;

    new-instance v6, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraZslImpl$ImageCaptureTask;-><init>(Lcom/android/camera/one/v2/OneCameraZslImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    invoke-virtual {v5, v6, v4}, Lcom/android/camera/one/v2/ImageCaptureManager;->captureNextImage(Lcom/android/camera/one/v2/ImageCaptureManager$ImageCaptureListener;Ljava/util/List;)V

    goto :goto_0

    .line 595
    .end local v0    # "capturedPreviousFrame":Z
    .end local v1    # "flashMode":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$Flash;
    :cond_3
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    const-string v6, "Non-ZSL capture not yet supported"

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public triggerFocusAndMeterAtPoint(FF)V
    .locals 3
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1119
    .local v0, "sensorOrientation":I
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/one/v2/AutoFocusHelper;->aeRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1120
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/one/v2/AutoFocusHelper;->afRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraZslImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 1122
    invoke-direct {p0}, Lcom/android/camera/one/v2/OneCameraZslImpl;->startAFCycle()V

    .line 1123
    return-void
.end method
