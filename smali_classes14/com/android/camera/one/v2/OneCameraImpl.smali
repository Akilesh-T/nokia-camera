.class public Lcom/android/camera/one/v2/OneCameraImpl;
.super Lcom/android/camera/one/AbstractOneCamera;
.source "OneCameraImpl.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;,
        Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;
    }
.end annotation


# static fields
.field private static final DEBUG_FOCUS_LOG:Z

.field private static final DEBUG_WRITE_CAPTURE_DATA:Z

.field private static final FOCUS_HOLD_MILLIS:I

.field private static final JPEG_QUALITY:Ljava/lang/Byte;

.field private static final RAW_DIRECTORY:Ljava/io/File;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private static final sCaptureImageFormat:I


# instance fields
.field private mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

.field private final mCameraHandler:Landroid/os/Handler;

.field private final mCameraThread:Landroid/os/HandlerThread;

.field private final mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final mCaptureImageReader:Landroid/media/ImageReader;

.field private final mCaptureQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private mControlAFMode:I

.field private mCropRegion:Landroid/graphics/Rect;

.field private final mDevice:Landroid/hardware/camera2/CameraDevice;

.field private final mDirectionProvider:Lcom/android/camera/one/CameraDirectionProvider;

.field private final mFullSizeAspectRatio:F

.field private volatile mIsClosed:Z

.field private mLastControlAfStateFrameNumber:J

.field private mLastPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

.field private mLastResultAFState:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field private final mLensRange:Lcom/android/camera/ui/motion/LinearScale;

.field private mPreviewSurface:Landroid/view/Surface;

.field private final mReturnToContinuousAFRunnable:Ljava/lang/Runnable;

.field private mTakePictureRunnable:Ljava/lang/Runnable;

.field private mTakePictureStartMillis:J

.field private mTakePictureWhenLensIsStopped:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 132
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "OneCameraImpl2"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 135
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->writeCaptureData()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/one/v2/OneCameraImpl;->DEBUG_WRITE_CAPTURE_DATA:Z

    .line 137
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showFrameDebugLog()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/one/v2/OneCameraImpl;->DEBUG_FOCUS_LOG:Z

    .line 140
    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->JPEG_QUALITY:Ljava/lang/Byte;

    .line 147
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->isCaptureDngEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    sput v0, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    .line 151
    invoke-static {}, Lcom/android/camera/one/Settings3A;->getFocusHoldMillis()I

    move-result v0

    sput v0, Lcom/android/camera/one/v2/OneCameraImpl;->FOCUS_HOLD_MILLIS:I

    .line 154
    invoke-static {}, Lcom/android/camera/one/v2/AutoFocusHelper;->getZeroWeightRegion()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 173
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    const-string v2, "DNG"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->RAW_DIRECTORY:Ljava/io/File;

    return-void

    .line 147
    :cond_0
    const/16 v0, 0x100

    goto :goto_0
.end method

.method constructor <init>(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CameraCharacteristics;Lcom/android/camera/util/Size;)V
    .locals 4
    .param p1, "device"    # Landroid/hardware/camera2/CameraDevice;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "pictureSize"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct {p0}, Lcom/android/camera/one/AbstractOneCamera;-><init>()V

    .line 176
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mControlAFMode:I

    .line 178
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastResultAFState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 180
    iput-boolean v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureWhenLensIsStopped:Z

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 188
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$1;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/OneCameraImpl$1;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mReturnToContinuousAFRunnable:Ljava/lang/Runnable;

    .line 199
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mZoomValue:F

    .line 203
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 204
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastControlAfStateFrameNumber:J

    .line 211
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$2;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/OneCameraImpl$2;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 293
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureQueue:Ljava/util/LinkedList;

    .line 296
    iput-boolean v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mIsClosed:Z

    .line 300
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$3;

    invoke-direct {v0, p0}, Lcom/android/camera/one/v2/OneCameraImpl$3;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 328
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    .line 329
    iput-object p2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 330
    invoke-static {p2}, Lcom/android/camera/ui/focus/LensRangeCalculator;->getDiopterToRatioCalculator(Landroid/hardware/camera2/CameraCharacteristics;)Lcom/android/camera/ui/motion/LinearScale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    .line 331
    new-instance v0, Lcom/android/camera/one/CameraDirectionProvider;

    invoke-direct {v0, p2}, Lcom/android/camera/one/CameraDirectionProvider;-><init>(Landroid/hardware/camera2/CameraCharacteristics;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDirectionProvider:Lcom/android/camera/one/CameraDirectionProvider;

    .line 332
    invoke-static {p2}, Lcom/android/camera/one/v2/OneCameraImpl;->calculateFullSizeAspectRatio(Landroid/hardware/camera2/CameraCharacteristics;)F

    move-result v0

    iput v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mFullSizeAspectRatio:F

    .line 340
    sget v0, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 341
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraImpl;->getDefaultPictureSize()Lcom/android/camera/util/Size;

    move-result-object p3

    .line 344
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OneCamera2"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraThread:Landroid/os/HandlerThread;

    .line 345
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 346
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    .line 348
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v0

    .line 349
    invoke-virtual {p3}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    sget v2, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/4 v3, 0x2

    .line 348
    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    .line 351
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 352
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "New Camera2 based OneCameraImpl created."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method static synthetic access$002(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$100()[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->ZERO_WEIGHT_3A_REGION:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/one/v2/OneCameraImpl;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->onCaptureCompleted(Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Landroid/view/Surface;
    .param p2, "x2"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl;->setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CameraCaptureSession;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/one/v2/OneCameraImpl;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mZoomValue:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/camera/one/v2/OneCameraImpl;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # F

    .prologue
    .line 97
    iput p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mZoomValue:F

    return p1
.end method

.method static synthetic access$1602(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCropRegion:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/one/v2/OneCameraImpl;F)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # F

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/one/v2/OneCameraImpl;[Landroid/hardware/camera2/params/MeteringRectangle;)[Landroid/hardware/camera2/params/MeteringRectangle;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # [Landroid/hardware/camera2/params/MeteringRectangle;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/camera/one/v2/OneCameraImpl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mControlAFMode:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/one/v2/OneCameraImpl;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->repeatingPreview(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;
    .param p1, "x1"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->autofocusStateChangeDispatcher(Landroid/hardware/camera2/CaptureResult;)V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 97
    sget-boolean v0, Lcom/android/camera/one/v2/OneCameraImpl;->DEBUG_FOCUS_LOG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/one/OneCamera$LensStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLensStateListener:Lcom/android/camera/one/OneCamera$LensStateListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/one/v2/OneCameraImpl;)Lcom/android/camera/ui/motion/LinearScale;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/one/v2/OneCameraImpl;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLensRange:Lcom/android/camera/ui/motion/LinearScale;

    return-object v0
.end method

.method private static acquireJpegBytesAndClose(Landroid/media/Image;)[B
    .locals 6
    .param p0, "image"    # Landroid/media/Image;

    .prologue
    .line 883
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_0

    .line 884
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 885
    .local v3, "plane0":Landroid/media/Image$Plane;
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 901
    .end local v3    # "plane0":Landroid/media/Image$Plane;
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v1, v4, [B

    .line 902
    .local v1, "imageBytes":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 903
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 904
    invoke-virtual {p0}, Landroid/media/Image;->close()V

    .line 905
    return-object v1

    .line 886
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "imageBytes":[B
    :cond_0
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_2

    .line 887
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 889
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    sget-object v4, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Compressing JPEG with software encoder."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 890
    new-instance v4, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;

    invoke-direct {v4, p0}, Lcom/android/camera/one/v2/camera2proxy/AndroidImageProxy;-><init>(Landroid/media/Image;)V

    sget-object v5, Lcom/android/camera/one/v2/OneCameraImpl;->JPEG_QUALITY:Ljava/lang/Byte;

    .line 891
    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    .line 890
    invoke-static {v4, v0, v5}, Lcom/android/camera/util/JpegUtilNative;->compressJpegFromYUV420Image(Lcom/android/camera/one/v2/camera2proxy/ImageProxy;Ljava/nio/ByteBuffer;I)I

    move-result v2

    .line 893
    .local v2, "numBytes":I
    if-gez v2, :cond_1

    .line 894
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error compressing jpeg."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 896
    :cond_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 898
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "numBytes":I
    :cond_2
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Unsupported image format."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .prologue
    .line 625
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 626
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 627
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 628
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mControlAFMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 629
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 631
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 631
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 633
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 634
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 633
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 635
    return-void
.end method

.method private autofocusStateChangeDispatcher(Landroid/hardware/camera2/CaptureResult;)V
    .locals 9
    .param p1, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 700
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastControlAfStateFrameNumber:J

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 701
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastControlAfStateFrameNumber:J

    .line 707
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    .line 708
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/one/v2/AutoFocusHelper;->stateFromCamera2State(I)Lcom/android/camera/one/OneCamera$AutoFocusState;

    move-result-object v1

    .line 711
    .local v1, "resultAFState":Lcom/android/camera/one/OneCamera$AutoFocusState;
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-ne v1, v2, :cond_5

    :cond_2
    const/4 v0, 0x1

    .line 716
    .local v0, "lensIsStopped":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureWhenLensIsStopped:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 718
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 719
    iput-boolean v3, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureWhenLensIsStopped:Z

    .line 723
    :cond_3
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastResultAFState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-eq v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    if-eqz v2, :cond_4

    .line 724
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v8, v8}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v4

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/android/camera/one/OneCamera$FocusStateListener;->onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V

    .line 726
    :cond_4
    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastResultAFState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_0

    .end local v0    # "lensIsStopped":Z
    :cond_5
    move v0, v3

    .line 711
    goto :goto_1
.end method

.method private static calculateFullSizeAspectRatio(Landroid/hardware/camera2/CameraCharacteristics;)F
    .locals 3
    .param p0, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;

    .prologue
    .line 809
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 810
    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 811
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
    .line 798
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0, p1}, Lcom/android/camera/one/v2/AutoFocusHelper;->cropRegionForZoom(Landroid/hardware/camera2/CameraCharacteristics;F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private onCaptureCompleted(Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;)V
    .locals 5
    .param p1, "capture"    # Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    .prologue
    .line 826
    sget v2, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 827
    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->RAW_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->RAW_DIRECTORY:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create RAW directory."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 832
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->RAW_DIRECTORY:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v4}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".dng"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 833
    .local v0, "dngFile":Ljava/io/File;
    iget-object v2, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->image:Landroid/media/Image;

    iget-object v3, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, v3, v4, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->writeDngBytesAndClose(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/io/File;)V

    .line 842
    .end local v0    # "dngFile":Ljava/io/File;
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->broadcastReadyState(Z)V

    .line 843
    iget-object v2, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->parameters:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v2, v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    iget-object v3, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->session:Lcom/android/camera/session/CaptureSession;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureTaken(Lcom/android/camera/session/CaptureSession;)V

    .line 844
    return-void

    .line 838
    :cond_1
    iget-object v2, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->image:Landroid/media/Image;

    invoke-static {v2}, Lcom/android/camera/one/v2/OneCameraImpl;->acquireJpegBytesAndClose(Landroid/media/Image;)[B

    move-result-object v1

    .line 839
    .local v1, "imageBytes":[B
    iget-object v2, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->parameters:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    iget-object v3, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->session:Lcom/android/camera/session/CaptureSession;

    iget-object v4, p1, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;->totalCaptureResult:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/camera/one/v2/OneCameraImpl;->saveJpegPicture([BLcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V

    goto :goto_0
.end method

.method private repeatingPreview(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 645
    :try_start_0
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x1

    .line 646
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 647
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 648
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 649
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 650
    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5, v6, v7}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 652
    sget-object v4, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Sent repeating Preview request, zoom = %.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mZoomValue:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return v2

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not access camera setting up preview."

    invoke-static {v2, v4, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v2, v3

    .line 656
    goto :goto_0
.end method

.method private resumeContinuousAFAfterDelay(I)V
    .locals 4
    .param p1, "millis"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mReturnToContinuousAFRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 689
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mReturnToContinuousAFRunnable:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 690
    return-void
.end method

.method private saveJpegPicture([BLcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;Landroid/hardware/camera2/CaptureResult;)V
    .locals 24
    .param p1, "jpegData"    # [B
    .param p2, "captureParams"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p3, "session"    # Lcom/android/camera/session/CaptureSession;
    .param p4, "result"    # Landroid/hardware/camera2/CaptureResult;

    .prologue
    .line 502
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->heading:I

    move/from16 v17, v0

    .line 503
    .local v17, "heading":I
    const/4 v7, 0x0

    .line 504
    .local v7, "width":I
    const/4 v8, 0x0

    .line 505
    .local v8, "height":I
    const/4 v9, 0x0

    .line 506
    .local v9, "rotation":I
    const/4 v10, 0x0

    .line 508
    .local v10, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_0
    new-instance v14, Lcom/android/camera/exif/ExifInterface;

    invoke-direct {v14}, Lcom/android/camera/exif/ExifInterface;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .end local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    .local v14, "exif":Lcom/android/camera/exif/ExifInterface;
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/camera/exif/ExifInterface;->readExif([B)V

    .line 511
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    invoke-virtual {v14, v4}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v18

    .line 512
    .local v18, "w":Ljava/lang/Integer;
    if-nez v18, :cond_1

    .line 513
    :goto_0
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    invoke-virtual {v14, v4}, Lcom/android/camera/exif/ExifInterface;->getTagIntValue(I)Ljava/lang/Integer;

    move-result-object v16

    .line 514
    .local v16, "h":Ljava/lang/Integer;
    if-nez v16, :cond_2

    .line 517
    :goto_1
    invoke-static {v14}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v9

    .line 520
    if-ltz v17, :cond_0

    .line 521
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v5, "M"

    invoke-virtual {v14, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v11

    .line 524
    .local v11, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v5, Lcom/android/camera/exif/Rational;

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    move-wide/from16 v0, v20

    move-wide/from16 v2, v22

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v14, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v12

    .line 527
    .local v12, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v14, v11}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 528
    invoke-virtual {v14, v12}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 530
    .end local v11    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v12    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    new-instance v4, Lcom/android/camera/util/ExifUtil;

    invoke-direct {v4, v14}, Lcom/android/camera/util/ExifUtil;-><init>(Lcom/android/camera/exif/ExifInterface;)V

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lcom/android/camera/one/v2/camera2proxy/AndroidCaptureResultProxy;-><init>(Landroid/hardware/camera2/CaptureResult;)V

    .line 531
    invoke-static {v6}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v6

    .line 532
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v19

    .line 530
    move-object/from16 v0, v19

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/camera/util/ExifUtil;->populateExif(Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/google/common/base/Optional;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v10, v14

    .line 537
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v16    # "h":Ljava/lang/Integer;
    .end local v18    # "w":Ljava/lang/Integer;
    .restart local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    :goto_2
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v6

    move-object/from16 v4, p3

    move-object/from16 v5, p1

    invoke-interface/range {v4 .. v10}, Lcom/android/camera/session/CaptureSession;->saveAndFinish([BLcom/google/common/base/Optional;IIILcom/android/camera/exif/ExifInterface;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    .line 539
    .local v15, "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    new-instance v4, Lcom/android/camera/one/v2/OneCameraImpl$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/android/camera/one/v2/OneCameraImpl$5;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;)V

    invoke-static {v15, v4}, Lcom/google/common/util/concurrent/Futures;->addCallback(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;)V

    .line 550
    return-void

    .line 512
    .end local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v15    # "futureUri":Lcom/google/common/util/concurrent/ListenableFuture;, "Lcom/google/common/util/concurrent/ListenableFuture<Lcom/google/common/base/Optional<Landroid/net/Uri;>;>;"
    .restart local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v18    # "w":Ljava/lang/Integer;
    :cond_1
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_0

    .line 514
    .restart local v16    # "h":Ljava/lang/Integer;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    goto :goto_1

    .line 533
    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v16    # "h":Ljava/lang/Integer;
    .end local v18    # "w":Ljava/lang/Integer;
    .restart local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    :catch_0
    move-exception v13

    .line 534
    .local v13, "e":Ljava/io/IOException;
    :goto_3
    sget-object v4, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Could not read exif from gcam jpeg"

    invoke-static {v4, v5, v13}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 535
    const/4 v10, 0x0

    goto :goto_2

    .line 533
    .end local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v13    # "e":Ljava/io/IOException;
    .restart local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    :catch_1
    move-exception v13

    move-object v10, v14

    .end local v14    # "exif":Lcom/android/camera/exif/ExifInterface;
    .restart local v10    # "exif":Lcom/android/camera/exif/ExifInterface;
    goto :goto_3
.end method

.method private sendAutoFocusTriggerCaptureRequest(Ljava/lang/Object;)V
    .locals 6
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 668
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 669
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 670
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mControlAFMode:I

    .line 671
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 672
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 673
    invoke-virtual {v0, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 674
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v5, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 677
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->repeatingPreview(Ljava/lang/Object;)Z

    .line 678
    sget v2, Lcom/android/camera/one/v2/OneCameraImpl;->FOCUS_HOLD_MILLIS:I

    invoke-direct {p0, v2}, Lcom/android/camera/one/v2/OneCameraImpl;->resumeContinuousAFAfterDelay(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :goto_0
    return-void

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not execute preview request."

    invoke-static {v2, v3, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setup(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 5
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 577
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v2, :cond_0

    .line 578
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 579
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 581
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 582
    .local v1, "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v2, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    new-instance v3, Lcom/android/camera/one/v2/OneCameraImpl$7;

    invoke-direct {v3, p0, p2}, Lcom/android/camera/one/v2/OneCameraImpl$7;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    iget-object v4, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v1    # "outputSurfaces":Ljava/util/List;, "Ljava/util/List<Landroid/view/Surface;>;"
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "ex":Landroid/hardware/camera2/CameraAccessException;
    sget-object v2, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Could not set up capture session"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 614
    invoke-interface {p2}, Lcom/android/camera/one/OneCamera$CaptureReadyCallback;->onSetupFailed()V

    goto :goto_0
.end method

.method private setupAsync(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V
    .locals 2
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "listener"    # Lcom/android/camera/one/OneCamera$CaptureReadyCallback;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/one/v2/OneCameraImpl$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl$6;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 566
    return-void
.end method

.method private static writeDngBytesAndClose(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CameraCharacteristics;Ljava/io/File;)V
    .locals 8
    .param p0, "image"    # Landroid/media/Image;
    .param p1, "captureResult"    # Landroid/hardware/camera2/TotalCaptureResult;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "dngFile"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 859
    :try_start_0
    new-instance v0, Landroid/hardware/camera2/DngCreator;

    invoke-direct {v0, p2, p1}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .local v0, "dngCreator":Landroid/hardware/camera2/DngCreator;
    const/4 v3, 0x0

    .line 860
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 859
    .local v2, "outputStream":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 863
    :try_start_2
    invoke-virtual {v0, v2, p0}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    .line 864
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 865
    invoke-virtual {p0}, Landroid/media/Image;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 866
    if-eqz v2, :cond_0

    if-eqz v5, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 870
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully stored DNG file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 871
    .end local v0    # "dngCreator":Landroid/hardware/camera2/DngCreator;
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :goto_2
    return-void

    .line 866
    .restart local v0    # "dngCreator":Landroid/hardware/camera2/DngCreator;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 859
    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 866
    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v4

    :goto_3
    if-eqz v0, :cond_2

    if-eqz v5, :cond_7

    :try_start_7
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_2
    :goto_4
    :try_start_8
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .end local v0    # "dngCreator":Landroid/hardware/camera2/DngCreator;
    :catch_2
    move-exception v1

    .line 867
    .local v1, "e":Ljava/io/IOException;
    sget-object v3, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Could not store DNG file"

    invoke-static {v3, v4, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 866
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "dngCreator":Landroid/hardware/camera2/DngCreator;
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 859
    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    :try_start_a
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 866
    :catchall_2
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_5
    if-eqz v2, :cond_4

    if-eqz v4, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_4
    :goto_6
    :try_start_c
    throw v3

    :catch_4
    move-exception v6

    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    :catch_5
    move-exception v4

    :try_start_d
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    goto :goto_1

    .end local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v4

    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_4

    .restart local v2    # "outputStream":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object v4, v5

    goto :goto_5
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 469
    iget-boolean v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mIsClosed:Z

    if-eqz v1, :cond_0

    .line 470
    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Camera is already closed."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 483
    :goto_0
    return-void

    .line 474
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    .line 475
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    :cond_1
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mIsClosed:Z

    .line 481
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 482
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Could not abort captures in progress."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 933
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/device/CameraId;->from(Ljava/lang/String;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentScene()Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;
    .locals 1

    .prologue
    .line 948
    sget-object v0, Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;->AUTO:Lcom/android/camera/one/v2/photo/SceneDetector$SceneMode;

    return-object v0
.end method

.method public getDefaultPictureSize()Lcom/android/camera/util/Size;
    .locals 11

    .prologue
    .line 912
    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 913
    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 914
    .local v0, "configs":Landroid/hardware/camera2/params/StreamConfigurationMap;
    sget v8, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    .line 917
    .local v3, "supportedSizes":[Landroid/util/Size;
    const/4 v8, 0x0

    aget-object v2, v3, v8

    .line 919
    .local v2, "largestSupportedSize":Landroid/util/Size;
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v4, v8

    .line 920
    .local v4, "largestSupportedSizePixels":J
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_1

    .line 921
    aget-object v8, v3, v1

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v8

    aget-object v9, v3, v1

    invoke-virtual {v9}, Landroid/util/Size;->getHeight()I

    move-result v9

    mul-int/2addr v8, v9

    int-to-long v6, v8

    .line 922
    .local v6, "numPixels":J
    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    .line 923
    aget-object v2, v3, v1

    .line 924
    move-wide v4, v6

    .line 920
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
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
    .line 497
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDirectionProvider:Lcom/android/camera/one/CameraDirectionProvider;

    invoke-virtual {v0}, Lcom/android/camera/one/CameraDirectionProvider;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method public getFullSizeAspectRatio()F
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mFullSizeAspectRatio:F

    return v0
.end method

.method public getMaxZoom()F
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

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
    .line 938
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSlaveMaxZoom()F
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getSupportedPreviewSizes()[Lcom/android/camera/util/Size;
    .locals 3

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 487
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 488
    .local v0, "config":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/Size;->convert([Landroid/util/Size;)[Lcom/android/camera/util/Size;

    move-result-object v1

    return-object v1
.end method

.method public getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;
    .locals 1

    .prologue
    .line 943
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFlashRequired()Z
    .locals 1

    .prologue
    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public pickMotionPreviewDataCallbackSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 794
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 7
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 765
    if-nez p1, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraImpl;->getDefaultPictureSize()Lcom/android/camera/util/Size;

    move-result-object p1

    .line 770
    :cond_0
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 771
    .local v1, "pictureAspectRatio":F
    invoke-virtual {p0}, Lcom/android/camera/one/v2/OneCameraImpl;->getSupportedPreviewSizes()[Lcom/android/camera/util/Size;

    move-result-object v3

    .line 775
    .local v3, "supportedSizes":[Lcom/android/camera/util/Size;
    sget v4, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 776
    .local v0, "aspectRatioTolerance":Ljava/lang/Double;
    :goto_0
    float-to-double v4, v1

    invoke-static {v3, v4, v5, v0}, Lcom/android/camera/CaptureModuleUtil;->getOptimalPreviewSize([Lcom/android/camera/util/Size;DLjava/lang/Double;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 778
    .local v2, "size":Lcom/android/camera/util/Size;
    sget-object v4, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Selected preview size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 779
    return-object v2

    .line 775
    .end local v0    # "aspectRatioTolerance":Ljava/lang/Double;
    .end local v2    # "size":Lcom/android/camera/util/Size;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pickSlavePreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "pictureSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 789
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;
    .locals 1
    .param p1, "videoSize"    # Lcom/android/camera/util/Size;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 784
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 465
    return-void
.end method

.method public setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/v2/photo/BokehResultListener;

    .prologue
    .line 397
    return-void
.end method

.method public setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$FaceDetectionListener;

    .prologue
    .line 392
    return-void
.end method

.method public setSceneModeChangeListener(Lcom/android/camera/one/OneCamera$SceneModeChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneModeChangeListener;

    .prologue
    .line 402
    return-void
.end method

.method public setSceneRecognitionListener(Lcom/android/camera/one/OneCamera$SceneRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/one/OneCamera$SceneRecognitionListener;

    .prologue
    .line 407
    return-void
.end method

.method public setSlaveZoom(F)V
    .locals 0
    .param p1, "zoom"    # F

    .prologue
    .line 761
    return-void
.end method

.method public setZoom(F)V
    .locals 1
    .param p1, "zoom"    # F

    .prologue
    .line 753
    iput p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mZoomValue:F

    .line 754
    invoke-direct {p0, p1}, Lcom/android/camera/one/v2/OneCameraImpl;->cropRegionForZoom(F)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCropRegion:Landroid/graphics/Rect;

    .line 755
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->repeatingPreview(Ljava/lang/Object;)Z

    .line 756
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
    .line 458
    iput-object p1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mPreviewSurface:Landroid/view/Surface;

    .line 459
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {p0, v0, p9}, Lcom/android/camera/one/v2/OneCameraImpl;->setupAsync(Landroid/view/Surface;Lcom/android/camera/one/OneCamera$CaptureReadyCallback;)V

    .line 460
    return-void
.end method

.method public takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 2
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureWhenLensIsStopped:Z

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 366
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->broadcastReadyState(Z)V

    .line 368
    new-instance v0, Lcom/android/camera/one/v2/OneCameraImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl$4;-><init>(Lcom/android/camera/one/v2/OneCameraImpl;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureRunnable:Ljava/lang/Runnable;

    .line 374
    iget-object v0, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    iput-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastPictureCallback:Lcom/android/camera/one/OneCamera$PictureCallback;

    .line 375
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureStartMillis:J

    .line 379
    iget-object v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mLastResultAFState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    if-ne v0, v1, :cond_1

    .line 380
    sget-object v0, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Waiting until scan is done before taking shot."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureWhenLensIsStopped:Z

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl;->takePictureNow(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0
.end method

.method public takePictureNow(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V
    .locals 11
    .param p1, "params"    # Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .param p2, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    const/4 v10, 0x1

    .line 413
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mTakePictureStartMillis:J

    sub-long v2, v6, v8

    .line 414
    .local v2, "dt":J
    sget-object v6, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Taking shot with extra AF delay of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 417
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v7, 0x2

    .line 418
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 419
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    sget-object v6, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->CAPTURE:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 420
    invoke-direct {p0, v0}, Lcom/android/camera/one/v2/OneCameraImpl;->addBaselineCaptureKeysToRequest(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 423
    sget v6, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    .line 424
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x1

    .line 425
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 424
    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 432
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 433
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 434
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 436
    .local v5, "request":Landroid/hardware/camera2/CaptureRequest;
    sget-boolean v6, Lcom/android/camera/one/v2/OneCameraImpl;->DEBUG_WRITE_CAPTURE_DATA:Z

    if-eqz v6, :cond_1

    .line 437
    iget-object v6, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->debugDataFolder:Ljava/io/File;

    const-string v7, "normal_capture_debug"

    invoke-static {v6, v7}, Lcom/android/camera/one/v2/OneCameraImpl;->makeDebugDir(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "debugDataDir":Ljava/lang/String;
    sget-object v6, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writing capture data to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 440
    const-string v6, "Normal Capture"

    new-instance v7, Ljava/io/File;

    const-string v8, "capture.txt"

    invoke-direct {v7, v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6, v5, v7}, Lcom/android/camera/util/CaptureDataSerializer;->toFile(Ljava/lang/String;Landroid/hardware/camera2/CameraMetadata;Ljava/io/File;)V

    .line 444
    .end local v1    # "debugDataDir":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCameraHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    iget-object v7, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureQueue:Ljava/util/LinkedList;

    monitor-enter v7

    .line 452
    :try_start_1
    iget-object v6, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCaptureQueue:Ljava/util/LinkedList;

    new-instance v8, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;

    invoke-direct {v8, p1, p2}, Lcom/android/camera/one/v2/OneCameraImpl$InFlightCapture;-><init>(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    invoke-virtual {v6, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 453
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 454
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    :goto_1
    return-void

    .line 426
    .restart local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :cond_2
    :try_start_2
    sget v6, Lcom/android/camera/one/v2/OneCameraImpl;->sCaptureImageFormat:I

    const/16 v7, 0x100

    if-ne v6, v7, :cond_0

    .line 427
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v7, Lcom/android/camera/one/v2/OneCameraImpl;->JPEG_QUALITY:Ljava/lang/Byte;

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 428
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget v7, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->orientation:I

    iget-object v8, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 429
    invoke-static {v7, v8}, Lcom/android/camera/util/CameraUtil;->getJpegRotation(ILandroid/hardware/camera2/CameraCharacteristics;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 428
    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 445
    .end local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    :catch_0
    move-exception v4

    .line 446
    .local v4, "e":Landroid/hardware/camera2/CameraAccessException;
    sget-object v6, Lcom/android/camera/one/v2/OneCameraImpl;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "Could not access camera for still image capture."

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0, v10}, Lcom/android/camera/one/v2/OneCameraImpl;->broadcastReadyState(Z)V

    .line 448
    iget-object v6, p1, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;->callback:Lcom/android/camera/one/OneCamera$PictureCallback;

    invoke-interface {v6}, Lcom/android/camera/one/OneCamera$PictureCallback;->onPictureTakingFailed()V

    goto :goto_1

    .line 453
    .end local v4    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v5    # "request":Landroid/hardware/camera2/CaptureRequest;
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6
.end method

.method public triggerFocusAndMeterAtPoint(FF)V
    .locals 3
    .param p1, "nx"    # F
    .param p2, "ny"    # F

    .prologue
    .line 731
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 733
    .local v0, "sensorOrientation":I
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/one/v2/AutoFocusHelper;->aeRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAERegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 735
    iget-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mCropRegion:Landroid/graphics/Rect;

    invoke-static {p1, p2, v1, v0}, Lcom/android/camera/one/v2/AutoFocusHelper;->afRegionsForNormalizedCoord(FFLandroid/graphics/Rect;I)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/one/v2/OneCameraImpl;->mAFRegions:[Landroid/hardware/camera2/params/MeteringRectangle;

    .line 738
    sget-object v1, Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;->TAP_TO_FOCUS:Lcom/android/camera/one/v2/OneCameraImpl$RequestTag;

    invoke-direct {p0, v1}, Lcom/android/camera/one/v2/OneCameraImpl;->sendAutoFocusTriggerCaptureRequest(Ljava/lang/Object;)V

    .line 739
    return-void
.end method
