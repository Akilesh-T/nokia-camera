.class public Lcom/android/camera/PanoramaModule;
.super Lcom/android/camera/CameraModule;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/PanoramaController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PanoramaModule$AutoFocusCallback;,
        Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PanoramaModule$ResizeBundle;
    }
.end annotation


# static fields
.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final DEFAULT_PANORAMA_QUALITY:Ljava/lang/String; = "middle"

.field private static final FEATURE_PANORAMA_QUALITY:Ljava/lang/String; = "camera.panorama.quality"

.field public static final KEY_PANORAMA_QUALITY:Ljava/lang/String; = "pref_panorama_quality"

.field public static final PANORAMA_QUALITY_HIGH:Ljava/lang/String; = "high"

.field public static final PANORAMA_QUALITY_HIGH_INT:I = 0x7a1200

.field public static final PANORAMA_QUALITY_LOW:Ljava/lang/String; = "low"

.field public static final PANORAMA_QUALITY_LOW_INT:I = 0x1e8480

.field public static final PANORAMA_QUALITY_MIDDLE:Ljava/lang/String; = "middle"

.field public static final PANORAMA_QUALITY_MIDDLE_INT:I = 0x4c4b40

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2


# instance fields
.field private final PANORAMA_MAX_LENGTH_RATIO:I

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/PanoramaModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field private mAwbLockSupported:Z

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field protected mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

.field private final mCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mDebugUri:Landroid/net/Uri;

.field private mDeviceOrientation:I

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mJpegRotation:I

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaActionSoundLoaded:Z

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mPaused:Z

.field private mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShouldResizeTo16x9:Z

.field private mShutterSoundEnabled:Z

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mUI:Lcom/android/camera/PanoramaUI;

.field private mVolumeButtonClickedFlag:Z

.field platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoramaModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 4
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 208
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 95
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    .line 128
    iput-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mVolumeButtonClickedFlag:Z

    .line 152
    iput-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mCompassTagEnabled:Z

    .line 154
    iput v3, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 161
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PanoramaModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    .line 184
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/PanoramaModule;->PANORAMA_MAX_LENGTH_RATIO:I

    .line 186
    new-instance v0, Lcom/android/camera/PanoramaModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PanoramaModule$AutoFocusCallback;-><init>(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mAutoFocusCallback:Lcom/android/camera/PanoramaModule$AutoFocusCallback;

    .line 191
    iput-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSoundLoaded:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mShutterSoundEnabled:Z

    .line 202
    iput-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mShouldResizeTo16x9:Z

    .line 434
    new-instance v0, Lcom/android/camera/PanoramaModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$3;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    .line 209
    return-void

    :cond_0
    move-object v0, v1

    .line 161
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaModule;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaModule;->setError(IZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PanoramaUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mShouldResizeTo16x9:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaModule;Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # Lcom/android/camera/PanoramaModule$ResizeBundle;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->cropJpegDataToAspectRatio(Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mCompassTagEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/PanoramaModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->onError()V

    return-void
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->playShutterSound()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/PanoramaModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->showPanoCompleteUI()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 367
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 368
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PanoramaModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$2;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 375
    return-void
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1200
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1215
    :goto_0
    return v1

    .line 1204
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1205
    sget-object v2, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1210
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 1211
    sget-object v2, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1215
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1153
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1156
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1158
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1159
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1161
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 1165
    :cond_0
    return-void
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/PanoramaModule$ResizeBundle;)Lcom/android/camera/PanoramaModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/PanoramaModule$ResizeBundle;

    .prologue
    .line 398
    iget-object v1, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->jpegData:[B

    .line 399
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 400
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->targetAspectRatio:F

    .line 402
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 403
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 404
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 409
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 410
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 411
    .local v2, "newHeight":I
    move v3, v6

    .line 416
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 417
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 419
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 431
    :cond_0
    :goto_1
    return-object p1

    .line 413
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 414
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 423
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 424
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 425
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 427
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 429
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 430
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/PanoramaModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method public static getPanoQualityFromProp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1700
    const-string v1, "camera.panorama.quality"

    const-string v2, "middle"

    invoke-static {v1, v2}, Lcom/android/ex/camera2/portability/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1701
    .local v0, "ret":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1702
    const-string v0, "middle"

    .line 1704
    :cond_0
    return-object v0
.end method

.method private getPanoQualitySizeStr()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1737
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1738
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_panorama_quality"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1739
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1742
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local v1    # "value":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private initPanoUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1666
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_1

    .line 1667
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getCaptureLayoutHelper()Lcom/android/camera/CaptureLayoutHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    .line 1668
    new-instance v0, Lcom/android/camera/PanoramaUIQC;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCaptureLayoutHelper:Lcom/android/camera/CaptureLayoutHelper;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/android/camera/PanoramaUIQC;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;Lcom/android/camera/CaptureLayoutHelper;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    .line 1672
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 1673
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1674
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1675
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->changePanoModeOptions(Z)V

    .line 1676
    return-void

    .line 1669
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->platform:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    sget-object v1, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v0, v1, :cond_0

    .line 1670
    new-instance v0, Lcom/android/camera/PanoramaUIMTK;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/camera/PanoramaUIMTK;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PanoramaController;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 1617
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1618
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mFocusAreaSupported:Z

    .line 1619
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMeteringAreaSupported:Z

    .line 1620
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAeLockSupported:Z

    .line 1621
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAwbLockSupported:Z

    .line 1622
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 1623
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mContinuousFocusSupported:Z

    .line 1624
    return-void
.end method

.method private initializeFirstTime()V
    .locals 3

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 349
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 350
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_shutter_sound_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mShutterSoundEnabled:Z

    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    .line 353
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->addIdleHandler()V

    .line 355
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 926
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 949
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 950
    return-void

    .line 928
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMirror:Z

    .line 929
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 931
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 933
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 934
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 935
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 936
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 937
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 940
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 942
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    .line 943
    invoke-virtual {v4}, Lcom/android/camera/PanoramaUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 944
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 945
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 362
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 363
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_shutter_sound_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mShutterSoundEnabled:Z

    .line 364
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    return v0
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 200
    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 250
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 251
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 252
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 254
    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setCameraState(I)V

    .line 255
    return-void
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 707
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 708
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 709
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 710
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "override flash setting to: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 715
    :cond_0
    sget-object v3, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private playShutterSound()V
    .locals 2

    .prologue
    .line 1767
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 1768
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSoundLoaded:Z

    if-eqz v0, :cond_0

    .line 1769
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 1772
    :cond_0
    return-void
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 276
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 275
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 274
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 277
    return-void
.end method

.method private setAfAeAwbLock()V
    .locals 3

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1346
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1347
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setAutoExposureLockIfSupported()V

    .line 1348
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1350
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1351
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1352
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setFocusAreasIfSupported()V

    .line 1353
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setMeteringAreasIfSupported()V

    .line 1354
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1319
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 1322
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1326
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 1329
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 1593
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 1594
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateCameraParametersInitialize()V

    .line 1597
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 1598
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateCameraParametersZoom()V

    .line 1601
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 1602
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateCameraParametersPreference()V

    .line 1605
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    .line 1606
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1608
    :cond_3
    return-void
.end method

.method private setCameraState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 632
    iput p1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    .line 633
    const-string v0, "nostate"

    .line 634
    .local v0, "tCameraState":Ljava/lang/String;
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    packed-switch v1, :pswitch_data_0

    .line 650
    :goto_0
    sget-object v1, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 651
    return-void

    .line 636
    :pswitch_0
    const-string v0, "PANO_STOPPED"

    .line 637
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setShutterMovable(Z)V

    goto :goto_0

    .line 640
    :pswitch_1
    const-string v0, "PANO_PREVIEW"

    .line 641
    goto :goto_0

    .line 643
    :pswitch_2
    const-string v0, "PANO_PROGRESS"

    .line 644
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/PanoramaModule;->setShutterMovable(Z)V

    goto :goto_0

    .line 647
    :pswitch_3
    const-string v0, "PANO_FOCUSING"

    goto :goto_0

    .line 634
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 5

    .prologue
    .line 1169
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v2

    iput v2, p0, Lcom/android/camera/PanoramaModule;->mDisplayRotation:I

    .line 1170
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1171
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    invoke-interface {v2, v3}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1172
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v2, p0, Lcom/android/camera/PanoramaModule;->mDisplayRotation:I

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/PanoramaModule;->mDisplayOrientation:I

    .line 1174
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_0

    .line 1175
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v3, p0, Lcom/android/camera/PanoramaModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1178
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_1

    .line 1179
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v3, p0, Lcom/android/camera/PanoramaModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1182
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 1183
    .local v1, "tDegree":I
    sget-object v2, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PanoramaModule;->mDisplayRotation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PanoramaModule;->mDisplayOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1186
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/camera/PanoramaUI;->setOrientation(IZ)V

    .line 1187
    return-void
.end method

.method private setError(IZ)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "isFail"    # Z

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PanoramaUI;->setErrorCode(IZ)V

    .line 1682
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 1332
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1333
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1335
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .prologue
    .line 1338
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1341
    :cond_0
    return-void
.end method

.method private setPanoQualitySizeStr(Ljava/lang/String;)V
    .locals 3
    .param p1, "picQualitySize"    # Ljava/lang/String;

    .prologue
    .line 1746
    invoke-static {}, Lcom/android/camera/app/CameraServicesImpl;->instance()Lcom/android/camera/app/CameraServicesImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraServicesImpl;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1747
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "default_scope"

    const-string v2, "pref_panorama_quality"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    return-void
.end method

.method private setShutterMovable(Z)V
    .locals 1
    .param p1, "movable"    # Z

    .prologue
    .line 1775
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setShutterMovable(Z)V

    .line 1777
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1191
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1192
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1193
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->startPreview()V

    .line 1194
    return-void
.end method

.method private showPanoCompleteUI()V
    .locals 2

    .prologue
    .line 1685
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaUI;->releasePanoView()V

    .line 1686
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaUI;->showUIWhenPanoStop()V

    .line 1687
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaUI;->pregressControl(Z)V

    .line 1688
    return-void
.end method

.method private showPanoStartUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1691
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1692
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->changePanoModeOptions(Z)V

    .line 1694
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaUI;->hideUIWhenPanoStart()V

    .line 1695
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 1222
    sget-object v1, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1223
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 1224
    sget-object v1, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1267
    :cond_0
    :goto_0
    return-void

    .line 1229
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setDisplayOrientation()V

    .line 1236
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 1238
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1240
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1242
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1247
    new-instance v0, Lcom/android/camera/PanoramaModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaModule$4;-><init>(Lcom/android/camera/PanoramaModule;)V

    .line 1260
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1261
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1262
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto :goto_0

    .line 1264
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1559
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1569
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 1564
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 1567
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1283
    sget-object v1, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "updateCameraParametersInitialize"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1286
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 1287
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1293
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1294
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 1297
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1298
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1301
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1302
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 1305
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1306
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCusPreviewMaxFPSEnable(Z)V

    .line 1308
    :cond_4
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 1358
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "updateCameraParametersPreference"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1361
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setAutoExposureLockIfSupported()V

    .line 1366
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1367
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setFocusAreasIfSupported()V

    .line 1368
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setMeteringAreasIfSupported()V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1372
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1373
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1374
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1375
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 1374
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 1380
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersPictureQuality()V

    .line 1386
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersExposureCompensation()V

    .line 1389
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersSceneMode()V

    .line 1392
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersZslMode()V

    .line 1395
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersLongShot()V

    .line 1398
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersTouchAfAec()V

    .line 1400
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 1401
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 1375
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1315
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 1508
    const/4 v0, 0x0

    .line 1509
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1510
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 1511
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 1512
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 1513
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 1514
    move v0, v3

    .line 1519
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1520
    return-void

    .line 1516
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid exposure range: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParametersFlashMode()V
    .locals 2

    .prologue
    .line 1551
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1552
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1553
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1555
    :cond_0
    return-void
.end method

.method private updateParametersLongShot()V
    .locals 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableLongShot(Z)V

    .line 1424
    :cond_0
    return-void
.end method

.method private updateParametersPictureQuality()V
    .locals 3

    .prologue
    .line 1502
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1504
    .local v0, "jpegQuality":I
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 1505
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 10

    .prologue
    .line 1459
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v5, :cond_1

    .line 1460
    sget-object v5, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "attempting to set picture size without caemra device"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1464
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1465
    .local v4, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1466
    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v6

    .line 1465
    invoke-static {v5, v6, v4}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 1468
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaModule;->getPanoQualitySize(Landroid/hardware/Camera$Parameters;)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 1469
    .local v2, "pictureSize":Lcom/android/camera/util/Size;
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1470
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1472
    sget-boolean v5, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v5, :cond_2

    .line 1473
    const-string v5, "1836x3264"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1474
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mShouldResizeTo16x9:Z

    .line 1482
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1484
    .local v3, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    int-to-double v6, v5

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    int-to-double v8, v5

    div-double/2addr v6, v8

    .line 1483
    invoke-static {v3, v6, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1485
    .local v0, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v1, Lcom/android/camera/util/Size;

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1486
    .local v1, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v0, v1}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1487
    sget-object v5, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting preview size. optimal: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "original: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1488
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1490
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5, v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1491
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1494
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1495
    sget-object v5, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "updating aspect ratio"

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1496
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-float v6, v6

    .line 1497
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1496
    invoke-virtual {v5, v6}, Lcom/android/camera/PanoramaUI;->updatePreviewAspectRatio(F)V

    goto/16 :goto_0

    .line 1476
    .end local v0    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v1    # "original":Lcom/android/camera/util/Size;
    .end local v3    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_1
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 1523
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 1525
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1526
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 1532
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1533
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1542
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersFlashMode()V

    .line 1545
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1546
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1547
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 1546
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1548
    return-void

    .line 1536
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 1537
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_0

    .line 1538
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 1439
    iget-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1440
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 1441
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 1442
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1443
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 1444
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 1445
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1446
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1448
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 1433
    :cond_0
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 2

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 1411
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "enable ZSL : true"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1415
    :goto_0
    return-void

    .line 1413
    :cond_0
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ZSL not supported, this feature will not work!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSceneMode()V
    .locals 2

    .prologue
    .line 697
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 700
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 701
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 700
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PanoramaModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 703
    :cond_0
    return-void
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public autoFocus()V
    .locals 3

    .prologue
    .line 1050
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->checkBeforeFoucs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    :goto_0
    return-void

    .line 1054
    :cond_0
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mAutoFocusCallback:Lcom/android/camera/PanoramaModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1056
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1057
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1062
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "cancelAutoFocus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->checkBeforeFoucs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1068
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 655
    sget-object v4, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "capture"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 658
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-ne v4, v6, :cond_1

    .line 659
    :cond_0
    const/4 v4, 0x0

    .line 677
    :goto_0
    return v4

    .line 661
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/camera/PanoramaModule;->setCameraState(I)V

    .line 663
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/PanoramaModule;->mCaptureStartTime:J

    .line 665
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 666
    .local v2, "loc":Landroid/location/Location;
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v4, v2}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 668
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 669
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 670
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    iput v4, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    .line 671
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v1

    .line 672
    .local v1, "isFrontCamera":Z
    iget v4, p0, Lcom/android/camera/PanoramaModule;->mDeviceOrientation:I

    invoke-static {v3, v4, v1}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/PanoramaModule;->mJpegRotation:I

    .line 674
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setAfAeAwbLock()V

    .line 675
    iget-object v4, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v6, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/android/camera/PanoramaModule;->mCapturePanoramaCallback:Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndStartPanorama(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CapturePanoramaCallback;)V

    .line 677
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public checkBeforeFoucs()Z
    .locals 3

    .prologue
    .line 1039
    const/4 v0, 0x0

    .line 1040
    .local v0, "ifsuccess":Z
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-nez v1, :cond_1

    .line 1043
    :cond_0
    const/4 v0, 0x1

    .line 1045
    :cond_1
    return v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1001
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1002
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1003
    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1006
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1008
    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1009
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSoundLoaded:Z

    .line 1011
    :cond_1
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 296
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 298
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 299
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 300
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 301
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideGridLines:Z

    .line 302
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 303
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 304
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 305
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 306
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v3, :cond_0

    .line 307
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 308
    new-instance v3, Lcom/android/camera/PanoramaModule$1;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaModule$1;-><init>(Lcom/android/camera/PanoramaModule;)V

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 315
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 316
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 317
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 318
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 319
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 320
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 323
    :cond_0
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 324
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 326
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 327
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 329
    return-object v0

    :cond_1
    move v1, v2

    .line 326
    goto :goto_0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 1628
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 288
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 289
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 289
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPanoPicSizeByQuality(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 10
    .param p1, "tPparameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1708
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1710
    .local v2, "size":Landroid/hardware/Camera$Size;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    .line 1712
    .local v7, "tSupportSize":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {}, Lcom/android/camera/PanoramaModule;->getPanoQualityFromProp()Ljava/lang/String;

    move-result-object v1

    .line 1713
    .local v1, "quality":Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 1715
    const v5, 0x4c4b40

    .line 1716
    .local v5, "tQualityInt":I
    const-string v8, "high"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1717
    const v5, 0x7a1200

    .line 1722
    :cond_0
    :goto_0
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "size":Landroid/hardware/Camera$Size;
    check-cast v2, Landroid/hardware/Camera$Size;

    .line 1723
    .restart local v2    # "size":Landroid/hardware/Camera$Size;
    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v4

    .line 1724
    .local v4, "tAbsoluteOut":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 1725
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    .line 1726
    .local v6, "tSize":Landroid/hardware/Camera$Size;
    iget v8, v6, Landroid/hardware/Camera$Size;->width:I

    iget v9, v6, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    sub-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1727
    .local v3, "tAbsoluteInt":I
    if-le v4, v3, :cond_1

    .line 1728
    move v4, v3

    .line 1729
    move-object v2, v6

    .line 1724
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1718
    .end local v0    # "i":I
    .end local v3    # "tAbsoluteInt":I
    .end local v4    # "tAbsoluteOut":I
    .end local v6    # "tSize":Landroid/hardware/Camera$Size;
    :cond_2
    const-string v8, "low"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1719
    const v5, 0x1e8480

    goto :goto_0

    .line 1733
    .end local v5    # "tQualityInt":I
    :cond_3
    return-object v2
.end method

.method public getPanoQualitySize(Landroid/hardware/Camera$Parameters;)Lcom/android/camera/util/Size;
    .locals 8
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 1752
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->getPanoQualitySizeStr()Ljava/lang/String;

    move-result-object v4

    .line 1753
    .local v4, "tQualitySize":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1754
    const-string v6, "x"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1755
    .local v0, "mStrList":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1756
    .local v5, "tWidth":I
    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1757
    .local v2, "tHeight":I
    new-instance v1, Lcom/android/camera/util/Size;

    invoke-direct {v1, v5, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1763
    .end local v0    # "mStrList":[Ljava/lang/String;
    .end local v2    # "tHeight":I
    .end local v5    # "tWidth":I
    .local v1, "pictureSize":Lcom/android/camera/util/Size;
    :goto_0
    return-object v1

    .line 1759
    .end local v1    # "pictureSize":Lcom/android/camera/util/Size;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/PanoramaModule;->getPanoPicSizeByQuality(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1760
    .local v3, "tPictureSize":Landroid/hardware/Camera$Size;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/camera/PanoramaModule;->setPanoQualitySizeStr(Ljava/lang/String;)V

    .line 1761
    new-instance v1, Lcom/android/camera/util/Size;

    iget v6, v3, Landroid/hardware/Camera$Size;->width:I

    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    .restart local v1    # "pictureSize":Lcom/android/camera/util/Size;
    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 282
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 3
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 222
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 224
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 227
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaModule;->mCameraId:I

    .line 234
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    new-instance v1, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 238
    new-instance v1, Lcom/android/camera/SoundPlayer;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 239
    new-instance v1, Landroid/media/MediaActionSound;

    invoke-direct {v1}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 241
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initPanoUI()V

    .line 242
    return-void
.end method

.method public isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1612
    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 246
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 1088
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1089
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onShutterButtonClick()V

    .line 1090
    const/4 v0, 0x1

    .line 1092
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaUI;->onBackPressed()Z

    move-result v0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 5
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 721
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onCameraAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 722
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 725
    :cond_0
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 727
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initializeCapabilities()V

    .line 732
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v0, :cond_1

    .line 733
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initializeFocusManager()V

    .line 735
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 738
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 739
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 741
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 744
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    if-nez v0, :cond_3

    .line 745
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 746
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 756
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateParametersPictureSize()V

    .line 757
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setCameraParameters(I)V

    .line 758
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->updateSceneMode()V

    .line 760
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->startPreview()V

    .line 762
    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 763
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v0, p0, Lcom/android/camera/PanoramaModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 765
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto :goto_0

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 748
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_1
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 852
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 853
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 854
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 857
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1098
    sget-object v2, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyDown keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1099
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return v0

    .line 1100
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1127
    goto :goto_0

    .line 1104
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 1105
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1106
    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1110
    goto :goto_0

    .line 1112
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1113
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1119
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1123
    invoke-virtual {p0, v0}, Lcom/android/camera/PanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1100
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1132
    sget-object v2, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onKeyUp keyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1133
    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1149
    :cond_0
    :goto_0
    return v0

    .line 1134
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1149
    goto :goto_0

    .line 1137
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 1138
    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mVolumeButtonClickedFlag:Z

    .line 1139
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1142
    goto :goto_0

    .line 1144
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1145
    invoke-virtual {p0, v1}, Lcom/android/camera/PanoramaModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1134
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 1015
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setDisplayOrientation()V

    .line 1016
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1639
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1633
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1634
    return-void

    .line 1633
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1657
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 1653
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 266
    :cond_0
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 840
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PanoramaModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaModule$5;-><init>(Lcom/android/camera/PanoramaModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1649
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 782
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonClick: mCameraState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVolumeButtonClickedFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PanoramaModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 785
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 786
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 787
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/PanoramaModule;->mVolumeButtonClickedFlag:Z

    .line 815
    :goto_0
    return-void

    .line 791
    :cond_1
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 793
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 795
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 796
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0, v4}, Lcom/android/camera/PanoramaUI;->showShutterButton(Z)V

    .line 797
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaUI;->pregressControl(Z)V

    .line 799
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPanorama()V

    goto :goto_0

    .line 802
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 803
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not enough space or storage not ready. remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 804
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 803
    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 805
    iput-boolean v4, p0, Lcom/android/camera/PanoramaModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 809
    :cond_3
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 810
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    iget-object v0, v0, Lcom/android/camera/PanoramaUI;->mFocusRing:Lcom/android/camera/ui/focus/FocusRing;

    invoke-interface {v0}, Lcom/android/camera/ui/focus/FocusRing;->stopFocusAnimations()V

    .line 812
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->capture()Z

    .line 813
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->showPanoStartUI()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 776
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 778
    :goto_0
    return-void

    .line 777
    :cond_0
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 819
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 823
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 824
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 827
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 828
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 829
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 830
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 831
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 834
    iget-object v5, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 770
    iput-object p1, p0, Lcom/android/camera/PanoramaModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 771
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->checkBeforeFoucs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onSingleTapUp error"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 954
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "pause"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 956
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaUI;->onPause()V

    .line 957
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 960
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 961
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->abortCapture()V

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->stopPreview()V

    .line 969
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 970
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 971
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 974
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->closeCamera()V

    .line 978
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 980
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 981
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 982
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 984
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 986
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_2

    .line 987
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 988
    iput-object v2, p0, Lcom/android/camera/PanoramaModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_3

    .line 991
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 994
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 995
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 996
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 997
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 861
    sget-object v1, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "resume"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 862
    iput-boolean v3, p0, Lcom/android/camera/PanoramaModule;->mPaused:Z

    .line 864
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 865
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 866
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 869
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSoundLoaded:Z

    if-nez v1, :cond_1

    .line 870
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v3}, Landroid/media/MediaActionSound;->load(I)V

    .line 871
    iput-boolean v4, p0, Lcom/android/camera/PanoramaModule;->mMediaActionSoundLoaded:Z

    .line 874
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 875
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_2

    .line 908
    :goto_0
    return-void

    .line 880
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    .line 884
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 886
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 888
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->requestCameraOpen()V

    .line 892
    iget-boolean v1, p0, Lcom/android/camera/PanoramaModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_4

    .line 893
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initializeFirstTime()V

    .line 904
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 906
    invoke-virtual {p0}, Lcom/android/camera/PanoramaModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 907
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    goto :goto_0

    .line 895
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->initializeSecondTime()V

    .line 896
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaUI;->initPanoramaUI()V

    .line 897
    iget-object v1, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaUI;->showButtonWhenPanoStop()V

    goto :goto_1
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 1577
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 1578
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 1579
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 1580
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1581
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1582
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1587
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 1585
    :cond_0
    sget-object v3, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid exposure range: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 682
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 685
    :goto_0
    return-void

    .line 684
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mUI:Lcom/android/camera/PanoramaUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PanoramaUI;->setOrientation(IZ)V

    .line 1662
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public stopFaceDetection()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1271
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PanoramaModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1272
    sget-object v0, Lcom/android/camera/PanoramaModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1273
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1275
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaModule;->setCameraState(I)V

    .line 1276
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1279
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1280
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1020
    iget v0, p0, Lcom/android/camera/PanoramaModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1021
    invoke-direct {p0}, Lcom/android/camera/PanoramaModule;->setDisplayOrientation()V

    .line 1023
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/camera/PanoramaModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 335
    return-void
.end method
