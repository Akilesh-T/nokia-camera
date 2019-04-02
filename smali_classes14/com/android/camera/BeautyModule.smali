.class public Lcom/android/camera/BeautyModule;
.super Lcom/android/camera/CameraModule;
.source "BeautyModule.java"

# interfaces
.implements Lcom/android/camera/BeautyController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BeautyModule$PosPostViewPictureCallback;,
        Lcom/android/camera/BeautyModule$Memento;,
        Lcom/android/camera/BeautyModule$SavePictureCallback;,
        Lcom/android/camera/BeautyModule$AddThumbnailBundle;,
        Lcom/android/camera/BeautyModule$PostPreviewFrameCallback;,
        Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;,
        Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;,
        Lcom/android/camera/BeautyModule$PictureCallbackFactory;,
        Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;,
        Lcom/android/camera/BeautyModule$MediaSaveListener;,
        Lcom/android/camera/BeautyModule$AutoFocusMoveCallback;,
        Lcom/android/camera/BeautyModule$AutoFocusCallback;,
        Lcom/android/camera/BeautyModule$JpegPictureCallback;,
        Lcom/android/camera/BeautyModule$ResizeBundle;,
        Lcom/android/camera/BeautyModule$RawPictureCallback;,
        Lcom/android/camera/BeautyModule$PostViewPictureCallback;,
        Lcom/android/camera/BeautyModule$ShutterCallback;,
        Lcom/android/camera/BeautyModule$MainHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_SELFIE_BOKEH:I = 0x8

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final USE_POST_PROCESS:Z


# instance fields
.field private final mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/BeautyModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field private mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field private mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mDebugUri:Landroid/net/Uri;

.field private final mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayAsFlashRunnable:Ljava/lang/Runnable;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusStartTime:J

.field private mFrontCameraMirrorEnabled:Z

.field public mFrontFlashTriggered:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private final mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureSizes:Lcom/android/camera/util/Size;

.field private final mPostHandler:Landroid/os/Handler;

.field private final mPostViewPictureCallback:Lcom/android/camera/BeautyModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

.field private final mRawPictureCallback:Lcom/android/camera/BeautyModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedMetadataStarted:Z

.field private mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mSelfieBokeh:Z

.field private mShouldResizeTo16x9:Z

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mSnapshotOnIdle:Z

.field private mTimerDuration:I

.field private mUI:Lcom/android/camera/BeautyUI;

.field private mUpdateSet:I

.field private final mUseZSL:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumeButtonClickedFlag:Z

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 363
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/BeautyModule;->mPendingSwitchCameraId:I

    .line 157
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mVolumeButtonClickedFlag:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFaceDetectionStarted:Z

    .line 166
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mReceivedMetadataStarted:Z

    .line 167
    iput-object v1, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 175
    new-instance v0, Lcom/android/camera/BeautyModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$1;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 191
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFrontCameraMirrorEnabled:Z

    .line 192
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mWatermarkEnabled:Z

    .line 194
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mCompassTagEnabled:Z

    .line 196
    iput v2, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    .line 197
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mSnapshotOnIdle:Z

    .line 206
    new-instance v0, Lcom/android/camera/BeautyModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$PostViewPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mPostViewPictureCallback:Lcom/android/camera/BeautyModule$PostViewPictureCallback;

    .line 208
    new-instance v0, Lcom/android/camera/BeautyModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$RawPictureCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mRawPictureCallback:Lcom/android/camera/BeautyModule$RawPictureCallback;

    .line 210
    new-instance v0, Lcom/android/camera/BeautyModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$AutoFocusCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mAutoFocusCallback:Lcom/android/camera/BeautyModule$AutoFocusCallback;

    .line 212
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/BeautyModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 219
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 238
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFrontFlashTriggered:Z

    .line 248
    new-instance v0, Lcom/android/camera/BeautyModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$MainHandler;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mPostHandler:Landroid/os/Handler;

    .line 261
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mCameraPreviewParamsReady:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mSelfieBokeh:Z

    .line 269
    new-instance v0, Lcom/android/camera/BeautyModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$2;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 302
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mShouldResizeTo16x9:Z

    .line 527
    new-instance v0, Lcom/android/camera/BeautyModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$5;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1081
    new-instance v0, Lcom/android/camera/BeautyModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$8;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    .line 1152
    new-instance v0, Lcom/android/camera/BeautyModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$9;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 364
    return-void

    :cond_0
    move-object v0, v1

    .line 212
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/BeautyModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/BeautyModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/BeautyModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    return p1
.end method

.method static synthetic access$1300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/BeautyModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/BeautyModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/camera/BeautyModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/BeautyModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1600(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/BeautyModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFrontCameraMirrorEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/camera/BeautyModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/BeautyModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/BeautyModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/camera/BeautyModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/BeautyModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/android/camera/BeautyModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/BeautyModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2602(Lcom/android/camera/BeautyModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/BeautyModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/camera/BeautyModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/BeautyModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/BeautyModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/BeautyModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/BeautyModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/camera/BeautyModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/BeautyModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/BeautyModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/BeautyModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/camera/BeautyModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/BeautyModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/BeautyModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule;->doCapture(Z)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/BeautyModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/BeautyModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/BeautyModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/BeautyModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mRawPictureCallback:Lcom/android/camera/BeautyModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/BeautyModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/BeautyModule;)Lcom/android/camera/BeautyModule$PostViewPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPostViewPictureCallback:Lcom/android/camera/BeautyModule$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/BeautyModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mWatermarkEnabled:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/camera/BeautyModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/BeautyModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$ResizeBundle;)Lcom/android/camera/BeautyModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # Lcom/android/camera/BeautyModule$ResizeBundle;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule;->cropJpegDataToAspectRatio(Lcom/android/camera/BeautyModule$ResizeBundle;)Lcom/android/camera/BeautyModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->onError()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/BeautyModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyModule;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 677
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 678
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/BeautyModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyModule$7;-><init>(Lcom/android/camera/BeautyModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 685
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->animateFlash()V

    .line 1079
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1620
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1621
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1620
    :goto_0
    return v0

    .line 1621
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 417
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->cancelCountDown()V

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 422
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 423
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 424
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 425
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 426
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 427
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setDisplayOrientation()V

    .line 317
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/BeautyModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/BeautyModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyModule$3;-><init>(Lcom/android/camera/BeautyModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1770
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1789
    :goto_0
    return v1

    .line 1774
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1775
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1779
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1780
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 1781
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1785
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_3

    .line 1786
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: parameters for preview is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1789
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1727
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1728
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->stopFaceDetection()V

    .line 1729
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->stopReceivedMetadataCallback()V

    .line 1730
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1731
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1733
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1734
    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1735
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    .line 1736
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1737
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 1740
    :cond_0
    return-void
.end method

.method private createMemento(Landroid/location/Location;Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;)Lcom/android/camera/BeautyModule$Memento;
    .locals 8
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "pictureCallbackFactory"    # Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3108
    new-instance v0, Lcom/android/camera/BeautyModule$Memento;

    invoke-direct {v0, p0, v7}, Lcom/android/camera/BeautyModule$Memento;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    .line 3110
    .local v0, "memento":Lcom/android/camera/BeautyModule$Memento;
    invoke-static {v0, p1}, Lcom/android/camera/BeautyModule$Memento;->access$6102(Lcom/android/camera/BeautyModule$Memento;Landroid/location/Location;)Landroid/location/Location;

    .line 3111
    invoke-static {v0, p2}, Lcom/android/camera/BeautyModule$Memento;->access$3302(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;)Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    .line 3113
    iget v2, p0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$2202(Lcom/android/camera/BeautyModule$Memento;I)I

    .line 3114
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$6302(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 3115
    iget v2, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$1802(Lcom/android/camera/BeautyModule$Memento;I)I

    .line 3116
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$6402(Lcom/android/camera/BeautyModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3117
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$1902(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 3118
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$6502(Lcom/android/camera/BeautyModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3119
    invoke-static {v0, v6}, Lcom/android/camera/BeautyModule$Memento;->access$6602(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3120
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mShouldResizeTo16x9:Z

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$6702(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3121
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$6802(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 3122
    iget-wide v2, p0, Lcom/android/camera/BeautyModule;->mCaptureStartTime:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/BeautyModule$Memento;->access$6902(Lcom/android/camera/BeautyModule$Memento;J)J

    .line 3123
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mCompassTagEnabled:Z

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$7002(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3124
    invoke-static {v0, v6}, Lcom/android/camera/BeautyModule$Memento;->access$7102(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3125
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mMirror:Z

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$1702(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3126
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFrontFlashTriggered:Z

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$7202(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3128
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v4, p0, Lcom/android/camera/BeautyModule;->mCaptureStartTime:J

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 3129
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v1

    .line 3130
    .local v1, "nameEntity":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    iget-object v2, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$2302(Lcom/android/camera/BeautyModule$Memento;Ljava/lang/String;)Ljava/lang/String;

    .line 3131
    iget-wide v2, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/BeautyModule$Memento;->access$6002(Lcom/android/camera/BeautyModule$Memento;J)J

    .line 3133
    invoke-static {v0, v6}, Lcom/android/camera/BeautyModule$Memento;->access$7302(Lcom/android/camera/BeautyModule$Memento;Z)Z

    .line 3135
    new-instance v2, Lcom/android/camera/BeautyModule$MediaSaveListener;

    invoke-direct {v2, p0, v7}, Lcom/android/camera/BeautyModule$MediaSaveListener;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    invoke-static {v0, v2}, Lcom/android/camera/BeautyModule$Memento;->access$5902(Lcom/android/camera/BeautyModule$Memento;Lcom/android/camera/BeautyModule$MediaSaveListener;)Lcom/android/camera/BeautyModule$MediaSaveListener;

    .line 3136
    return-object v0
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/BeautyModule$ResizeBundle;)Lcom/android/camera/BeautyModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/BeautyModule$ResizeBundle;

    .prologue
    .line 894
    iget-object v1, p1, Lcom/android/camera/BeautyModule$ResizeBundle;->jpegData:[B

    .line 895
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/BeautyModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 896
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/BeautyModule$ResizeBundle;->targetAspectRatio:F

    .line 898
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 899
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 900
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 904
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 905
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 906
    .local v2, "newHeight":I
    move v3, v6

    .line 911
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 912
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 914
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 926
    :cond_0
    :goto_1
    return-object p1

    .line 908
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 909
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 918
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 919
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 920
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 922
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 924
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 925
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/BeautyModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private doCapture(Z)V
    .locals 21
    .param p1, "animateBefore"    # Z

    .prologue
    .line 1122
    sget-object v4, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "doCapture"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1123
    if-eqz p1, :cond_0

    .line 1124
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BeautyModule;->animateAfterShutter()V

    .line 1126
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v4

    sget-object v5, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v4, v5, :cond_1

    .line 1127
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/BeautyModule;->stopFaceDetection()V

    .line 1129
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v18

    .line 1130
    .local v18, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/BeautyModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 1133
    sget-object v4, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCaptureMetering:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1135
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BeautyModule;->updateJpegRotation()V

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1137
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/BeautyModule;->setFrontCameraMirror(I)V

    .line 1139
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BeautyModule;->getPictureCallbackFactory()Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;

    move-result-object v20

    .line 1140
    .local v20, "picCbFactory":Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/camera/BeautyModule;->createMemento(Landroid/location/Location;Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;)Lcom/android/camera/BeautyModule$Memento;

    move-result-object v19

    .line 1142
    .local v19, "memento":Lcom/android/camera/BeautyModule$Memento;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->getHandler()Landroid/os/Handler;

    move-result-object v6

    new-instance v7, Lcom/android/camera/BeautyModule$ShutterCallback;

    if-nez p1, :cond_2

    const/4 v8, 0x1

    .line 1143
    :goto_0
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->IsUsePostProcess()Z

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v7, v0, v8, v1, v9}, Lcom/android/camera/BeautyModule$ShutterCallback;-><init>(Lcom/android/camera/BeautyModule;ZLcom/android/camera/BeautyModule$Memento;Z)V

    .line 1144
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->getRawPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v8

    .line 1145
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->getPostViewPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v9

    .line 1146
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->getJpegPictureCallback(Lcom/android/camera/BeautyModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/BeautyModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    .line 1147
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;->IsUsePostProcess()Z

    move-result v14

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v16

    const/16 v17, 0x0

    .line 1142
    invoke-virtual/range {v4 .. v17}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V

    .line 1148
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/BeautyModule;->mCaptureStartTime:J

    invoke-virtual {v4, v6, v7}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1150
    return-void

    .line 1142
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private focusAndCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1387
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_0

    .line 1388
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/BeautyUI;->setSwipingEnabled(Z)V

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1396
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1397
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mSnapshotOnIdle:Z

    .line 1403
    :goto_0
    return-void

    .line 1401
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mSnapshotOnIdle:Z

    .line 1402
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private getPictureCallbackFactory()Lcom/android/camera/BeautyModule$PictureCallbackFactoryBase;
    .locals 2

    .prologue
    .line 2580
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mWatermarkEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$WaterMarkPictureCallbackFactory;-><init>(Lcom/android/camera/BeautyModule;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BeautyModule$PostPictureCallbackFactory;-><init>(Lcom/android/camera/BeautyModule;Lcom/android/camera/BeautyModule$1;)V

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2332
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2333
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFocusAreaSupported:Z

    .line 2334
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mMeteringAreaSupported:Z

    .line 2335
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mAeLockSupported:Z

    .line 2336
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mAwbLockSupported:Z

    .line 2337
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 2338
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mContinuousFocusSupported:Z

    .line 2339
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 650
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->initializeFirstTime()V

    .line 658
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 660
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 662
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    .line 663
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->addIdleHandler()V

    .line 665
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1522
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1523
    return-void

    .line 1501
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mMirror:Z

    .line 1502
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1504
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1506
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 1507
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 1508
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 1509
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 1510
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1507
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/BeautyModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1515
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    .line 1516
    invoke-virtual {v4}, Lcom/android/camera/BeautyUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 1517
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1518
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 1519
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 672
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 673
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BeautyUI;->initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 674
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1487
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1486
    return v0
.end method

.method private isResumeFromLockscreen()Z
    .locals 2

    .prologue
    .line 1529
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1530
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1531
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1530
    :goto_0
    return v1

    .line 1531
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->openCameraCommon()V

    .line 481
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 300
    return-void
.end method

.method private onPreviewStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 435
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 441
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 442
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 443
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 444
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->resumeFaceDetection()V

    .line 445
    invoke-direct {p0, v2}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    .line 446
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->startFaceDetection()V

    .line 447
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->startReceivedMetadataCallback()V

    .line 448
    return-void
.end method

.method private openCameraCommon()V
    .locals 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BeautyUI;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 629
    return-void
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 1230
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 1231
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1232
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1233
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1235
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1238
    :cond_0
    sget-object v3, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 514
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "BeautyModule.OpenCameraAndPreview"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 516
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 521
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 520
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 519
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 522
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "requestCamera"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 525
    :cond_1
    return-void
.end method

.method private resetCameraParameter()V
    .locals 2

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_1

    .line 2499
    :cond_0
    :goto_0
    return-void

    .line 2497
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    .line 2498
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 3

    .prologue
    .line 637
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 638
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-nez v0, :cond_0

    .line 639
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Settings manager is null!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 644
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_exposure_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 2378
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 2379
    const/4 v1, 0x0

    .line 2381
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2382
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2383
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2387
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2390
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2384
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2385
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2387
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1935
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1936
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 1938
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1942
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 1945
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 2281
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2282
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateCameraParametersInitialize()V

    .line 2285
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2286
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateCameraParametersZoom()V

    .line 2289
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2290
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateCameraParametersPreference()V

    .line 2293
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 2294
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParameterSelfieBokeh()V

    .line 2297
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_4

    .line 2298
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->BEAUTY:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 2299
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2301
    :cond_4
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 2306
    iget v0, p0, Lcom/android/camera/BeautyModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/BeautyModule;->mUpdateSet:I

    .line 2307
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2310
    iput v1, p0, Lcom/android/camera/BeautyModule;->mUpdateSet:I

    .line 2321
    :cond_0
    :goto_0
    return-void

    .line 2312
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2313
    iget v0, p0, Lcom/android/camera/BeautyModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    .line 2314
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateSceneMode()V

    .line 2315
    iput v1, p0, Lcom/android/camera/BeautyModule;->mUpdateSet:I

    goto :goto_0

    .line 2317
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2318
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1061
    iput p1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    .line 1062
    packed-switch p1, :pswitch_data_0

    .line 1072
    :pswitch_0
    return-void

    .line 1062
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setDisplayOrientation()V
    .locals 4

    .prologue
    .line 1743
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    .line 1744
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1745
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1746
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/BeautyModule;->mDisplayOrientation:I

    .line 1747
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    iget v2, p0, Lcom/android/camera/BeautyModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/BeautyUI;->setDisplayOrientation(I)V

    .line 1748
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1749
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/BeautyModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1752
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 1753
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1755
    :cond_1
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BeautyModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1757
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 1948
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1949
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1951
    :cond_0
    return-void
.end method

.method private setFrontCameraMirror(I)V
    .locals 3
    .param p1, "jpegOrientation"    # I

    .prologue
    .line 1188
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mFrontCameraMirrorEnabled:Z

    if-eqz v1, :cond_0

    .line 1189
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1203
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    .line 1194
    .local v0, "cameraOrientation":I
    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 1196
    :cond_2
    if-eqz p1, :cond_3

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_4

    .line 1197
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0
.end method

.method private setMeteringAreasIfSupported()V
    .locals 3

    .prologue
    .line 1954
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 1955
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1959
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 1964
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v0

    .line 1962
    .local v0, "defaultMode":Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    goto :goto_0
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1761
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1763
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->startPreview()V

    .line 1764
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 1796
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 1797
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1802
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1806
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setDisplayOrientation()V

    .line 1810
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 1812
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1814
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1820
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersPictureSize()V

    .line 1821
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/BeautyModule;->setSelfieBokeh(Z)V

    .line 1823
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    .line 1824
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_3

    .line 1825
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "setCameraParameters done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1828
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1830
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_4

    .line 1831
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "setPreviewTexture done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1834
    :cond_4
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1835
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_5

    .line 1836
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "startPreview"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1840
    :cond_5
    new-instance v0, Lcom/android/camera/BeautyModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyModule$10;-><init>(Lcom/android/camera/BeautyModule;)V

    .line 1857
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1858
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1859
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto/16 :goto_0

    .line 1861
    :cond_6
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->cancelCountDown()V

    .line 488
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->resetPreviewOverlay()V

    .line 489
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 491
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 492
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/BeautyModule;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 493
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->closeCamera()V

    .line 495
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->requestCameraOpen()V

    .line 496
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->clearFaces()V

    .line 497
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 501
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mMirror:Z

    .line 502
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mMirror:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 504
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/BeautyModule;->setSelfieBokeh(Z)V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2247
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2257
    :goto_0
    return-void

    .line 2250
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 2252
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 2255
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1898
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 1899
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1900
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1903
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1905
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1906
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 1909
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1910
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1913
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1914
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 1917
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1918
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCusPreviewMaxFPSEnable(Z)V

    .line 1920
    :cond_4
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 1969
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2011
    :cond_0
    :goto_0
    return-void

    .line 1973
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setAutoExposureLockIfSupported()V

    .line 1974
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1975
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setFocusAreasIfSupported()V

    .line 1976
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setMeteringAreasIfSupported()V

    .line 1979
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1980
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1981
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1982
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1983
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 1982
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 1988
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersPictureQuality()V

    .line 1994
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersExposureCompensation()V

    .line 1997
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersSceneMode()V

    .line 2000
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersZslMode()V

    .line 2003
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersTouchAfAec()V

    .line 2006
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersBeautyMode()V

    .line 2008
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 2009
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 1983
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1925
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/BeautyModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1927
    :cond_0
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2474
    iget-boolean v4, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2488
    :goto_0
    return-void

    .line 2479
    :cond_0
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2480
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2481
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2482
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2483
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2485
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    .line 2486
    sget-object v4, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/BeautyModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParameterSelfieBokeh()V
    .locals 2

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mSelfieBokeh:Z

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSelfieBokeh(Z)V

    .line 1931
    :cond_0
    return-void
.end method

.method private updateParametersAutoHDRMode()V
    .locals 2

    .prologue
    .line 2084
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2085
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableAutoHDR(Z)V

    .line 2087
    :cond_0
    return-void
.end method

.method private updateParametersBeautyMode()V
    .locals 7

    .prologue
    const/16 v6, 0xc8

    .line 2062
    const/4 v0, -0x1

    .line 2063
    .local v0, "beautyLevel":I
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BEAUTY:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2064
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2065
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_beauty_level_key"

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f08035f

    .line 2066
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2065
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 2069
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "beautyLevel : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2070
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2071
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableBeauty(Z)V

    .line 2078
    :goto_0
    return-void

    .line 2073
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableBeauty(Z)V

    .line 2074
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget v3, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    div-int v3, v6, v3

    mul-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setBeautySkin(I)V

    .line 2075
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget v3, Lcom/android/camera/BeautyController;->BEAUTY_CONTROL_LEVEL:I

    div-int v3, v6, v3

    mul-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setBeautyWhite(I)V

    .line 2076
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setBeautyFlawlessLevel(I)V

    goto :goto_0
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 2155
    const/4 v0, 0x0

    .line 2156
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2157
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 2158
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 2159
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 2160
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 2161
    move v0, v3

    .line 2166
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2167
    return-void

    .line 2163
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2204
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2206
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2207
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2210
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v2, v5, :cond_0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v5, :cond_1

    .line 2212
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2213
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2217
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2218
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2219
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2220
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v3

    .line 2221
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2222
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2223
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "unlock flash Required"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2225
    :cond_2
    monitor-exit v3

    .line 2243
    :goto_0
    return-void

    .line 2225
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2227
    :cond_3
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 2228
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2229
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2230
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    .line 2228
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2231
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2232
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 2235
    :cond_6
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2236
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 2237
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2238
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2239
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    move v2, v4

    .line 2237
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2240
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2241
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 2235
    :cond_8
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_1

    :cond_9
    move v2, v3

    .line 2239
    goto :goto_2
.end method

.method private updateParametersPictureQuality()V
    .locals 3

    .prologue
    .line 2149
    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2151
    .local v0, "jpegQuality":I
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 2152
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 10

    .prologue
    .line 2095
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v6, :cond_0

    .line 2096
    sget-object v6, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "attempting to set picture size without caemra device"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2146
    :goto_0
    return-void

    .line 2100
    :cond_0
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 2101
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2102
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v7

    .line 2101
    invoke-static {v6, v7, v5}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 2105
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 2108
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2109
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v7

    .line 2108
    invoke-virtual {v6, v7, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/BeautyModule;->mPictureSizes:Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v7, p0, Lcom/android/camera/BeautyModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2118
    sget-boolean v6, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v6, :cond_1

    .line 2119
    const-string v6, "1836x3264"

    iget-object v7, p0, Lcom/android/camera/BeautyModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2120
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/BeautyModule;->mShouldResizeTo16x9:Z

    .line 2128
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2129
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mPictureSizes:Lcom/android/camera/util/Size;

    .line 2130
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/camera/BeautyModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 2129
    invoke-static {v4, v6, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 2131
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 2132
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v2, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2133
    sget-object v6, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting preview size. optimal: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "original: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2134
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2136
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v7, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2137
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2140
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    if-eqz v6, :cond_3

    .line 2141
    sget-object v6, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "updating aspect ratio"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2142
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-float v7, v7

    .line 2143
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 2142
    invoke-virtual {v6, v7}, Lcom/android/camera/BeautyUI;->updatePreviewAspectRatio(F)V

    .line 2145
    :cond_3
    sget-object v6, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preview size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2105
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v4    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_1

    .line 2111
    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v1

    .line 2112
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v6, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 2122
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/BeautyModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_2
.end method

.method private updateParametersSceneMode()V
    .locals 5

    .prologue
    .line 2170
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 2171
    .local v1, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2174
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->isMtkPlatform()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    :goto_0
    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2178
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2179
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v2, v3, :cond_0

    .line 2180
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 2185
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2186
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2195
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersFlashMode()V

    .line 2198
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2199
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2200
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    .line 2199
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2201
    return-void

    .line 2174
    :cond_1
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 2189
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2190
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v2, :cond_0

    .line 2191
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_1
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 2044
    iget-boolean v3, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2056
    :cond_0
    :goto_0
    return-void

    .line 2045
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 2046
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 2047
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2048
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 2049
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2050
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2051
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2053
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 2038
    :cond_0
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 5

    .prologue
    .line 2017
    const/4 v0, 0x0

    .line 2018
    .local v0, "enableZSL":Z
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2019
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2020
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2023
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enable ZSL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2024
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2025
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 2026
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_1

    .line 2027
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusOverlayManager;->setIsUseZSL(Z)V

    .line 2029
    :cond_1
    return-void
.end method

.method private updateSceneMode()V
    .locals 2

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_1

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 1223
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/BeautyModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 1212
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public autoFocus()V
    .locals 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1634
    :goto_0
    return-void

    .line 1629
    :cond_0
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1630
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/BeautyModule;->mFocusStartTime:J

    .line 1631
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mAutoFocusCallback:Lcom/android/camera/BeautyModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1632
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1633
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1644
    :goto_0
    return-void

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    .line 1643
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1094
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v0

    .line 1118
    :goto_0
    return v2

    .line 1101
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/BeautyModule;->mCaptureStartTime:J

    .line 1105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/BeautyModule;->mPostViewPictureCallbackTime:J

    .line 1106
    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFrontFlashTriggered:Z

    .line 1108
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFrontFlashTriggered:Z

    .line 1111
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyUI;->pauseFaceDetection()V

    .line 1112
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyUI;->clearFaces()V

    .line 1113
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v3, :cond_3

    move v0, v2

    .line 1116
    .local v0, "animateBefore":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->doCapture(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1601
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1603
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1605
    :cond_0
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 591
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 593
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 594
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 595
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 596
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 597
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 598
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 599
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 600
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_0

    .line 601
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 602
    new-instance v1, Lcom/android/camera/BeautyModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyModule$6;-><init>(Lcom/android/camera/BeautyModule;)V

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 609
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 610
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 611
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 612
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 613
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 614
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 617
    :cond_0
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 618
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 619
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 621
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 623
    return-object v0

    :cond_1
    move v1, v3

    .line 597
    goto :goto_0

    :cond_2
    move v2, v3

    .line 621
    goto :goto_1
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2358
    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 583
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 584
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 584
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 368
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 577
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 377
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 379
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 380
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_beauty_level_key"

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f08035f

    .line 381
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 380
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 382
    .local v1, "level":I
    new-instance v3, Lcom/android/camera/BeautyUI;

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5, v1}, Lcom/android/camera/BeautyUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/BeautyController;Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    .line 383
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 387
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    :cond_0
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/BeautyModule;->mCameraId:I

    .line 394
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 396
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v3, p0}, Lcom/android/camera/BeautyUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 398
    new-instance v3, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 399
    new-instance v3, Lcom/android/camera/SoundPlayer;

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 402
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0f00ba

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v3, Lcom/android/camera/BeautyModule$4;

    invoke-direct {v3, p0}, Lcom/android/camera/BeautyModule$4;-><init>(Lcom/android/camera/BeautyModule;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2325
    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2327
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2325
    :cond_0
    :goto_0
    return v0

    .line 2327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyModeListState(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2503
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 2504
    .local v0, "viewVisible":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/BeautyUI;->setViewVisible(I)V

    .line 2505
    :cond_0
    return-void

    .line 2503
    .end local v0    # "viewVisible":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1665
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1244
    sget-object v2, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1245
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onCameraAvailable"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1251
    :cond_1
    iput-object p1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1253
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->initializeCapabilities()V

    .line 1260
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/BeautyModule;->mZoomValue:F

    .line 1261
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v2, :cond_2

    .line 1262
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->initializeFocusManager()V

    .line 1264
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 1267
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1268
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1270
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1271
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1273
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1274
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1275
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1282
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1284
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1285
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_5
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    .line 1289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mCameraPreviewParamsReady:Z

    .line 1290
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_6

    .line 1291
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "mCameraPreviewParamsReady"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1294
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->startPreview()V

    .line 1296
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1298
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->onCameraOpened()V

    .line 1300
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1301
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 1303
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1304
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0

    .line 1276
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_7
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1277
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_1
.end method

.method public onControlBarUpdate(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 475
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 476
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_beauty_level_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 477
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1419
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1420
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1421
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1425
    :goto_0
    return-void

    .line 1424
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1670
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1698
    :cond_0
    :goto_0
    return v0

    .line 1671
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1698
    goto :goto_0

    .line 1675
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 1676
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1677
    invoke-virtual {p0, v0}, Lcom/android/camera/BeautyModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1681
    goto :goto_0

    .line 1683
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1684
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1690
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1694
    invoke-virtual {p0, v0}, Lcom/android/camera/BeautyModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1671
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
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1703
    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1723
    :cond_0
    :goto_0
    return v0

    .line 1704
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1723
    goto :goto_0

    .line 1707
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    .line 1708
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1709
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->cancelCountDown()V

    goto :goto_0

    .line 1711
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mVolumeButtonClickedFlag:Z

    .line 1712
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1716
    goto :goto_0

    .line 1718
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1719
    invoke-virtual {p0, v1}, Lcom/android/camera/BeautyModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1704
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
    .line 1609
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setDisplayOrientation()V

    .line 1610
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2369
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2363
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2364
    return-void

    .line 2363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2471
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2467
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 465
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 452
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewUIReady"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 456
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->startPreview()V

    .line 457
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 1407
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1408
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/BeautyModule$11;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyModule$11;-><init>(Lcom/android/camera/BeautyModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2400
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1881
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1882
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersFlashMode()V

    .line 1887
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1888
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraParametersWhenIdle(I)V

    .line 1893
    :cond_1
    :goto_1
    return-void

    .line 1883
    :cond_2
    const-string v0, "pref_beauty_level_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1884
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->updateParametersBeautyMode()V

    goto :goto_0

    .line 1890
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_1

    .line 1891
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1347
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1349
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1350
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/BeautyModule;->mVolumeButtonClickedFlag:Z

    .line 1384
    :goto_0
    return-void

    .line 1354
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1357
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 1358
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1359
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1358
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1360
    iput-boolean v6, p0, Lcom/android/camera/BeautyModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 1363
    :cond_2
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/BeautyModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1366
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1367
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1368
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1369
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 1371
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    .line 1372
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1373
    .local v0, "countDownDuration":I
    iput v0, p0, Lcom/android/camera/BeautyModule;->mTimerDuration:I

    .line 1374
    if-lez v0, :cond_3

    .line 1376
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1377
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1378
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1379
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/BeautyUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 1382
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 1315
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1317
    :goto_0
    return-void

    .line 1316
    :cond_0
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

.method public onShutterButtonLongPressed()V
    .locals 4

    .prologue
    .line 1321
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1322
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 1323
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    const/4 v7, 0x1

    .line 1327
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 1343
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 1331
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 1332
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1335
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 1336
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 1337
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 1338
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 1339
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1340
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 1341
    iget-object v5, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5, v3}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/android/camera/BeautyModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 1310
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1648
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1661
    :cond_0
    :goto_0
    return-void

    .line 1656
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1660
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 2344
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2354
    :cond_0
    :goto_0
    return-void

    .line 2347
    :cond_1
    iput p1, p0, Lcom/android/camera/BeautyModule;->mZoomValue:F

    .line 2348
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/BeautyModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2353
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1536
    sget-object v1, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1537
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    .line 1539
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_0

    .line 1540
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "PhotoModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1541
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1542
    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 1545
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1546
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1550
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/watermark/WatermarkImageSaver;->finish()V

    .line 1551
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1552
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1556
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eqz v1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1563
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->stopPreview()V

    .line 1564
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->cancelCountDown()V

    .line 1566
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_2

    .line 1567
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1568
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1571
    :cond_2
    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1574
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1576
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v1, :cond_3

    .line 1577
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 1578
    iput-object v3, p0, Lcom/android/camera/BeautyModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1581
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->resetCameraParameter()V

    .line 1582
    invoke-virtual {p0, v4}, Lcom/android/camera/BeautyModule;->setSelfieBokeh(Z)V

    .line 1583
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->closeCamera()V

    .line 1584
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1585
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyUI;->onPause()V

    .line 1587
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/BeautyModule;->mPendingSwitchCameraId:I

    .line 1588
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_4

    .line 1589
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1591
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1592
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1593
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1595
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1596
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1597
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    .line 1431
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 1432
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1433
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1436
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 1440
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1442
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1444
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1445
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_2

    .line 1480
    :goto_0
    return-void

    .line 1450
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->requestCameraOpen()V

    .line 1452
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/BeautyModule;->mJpegPictureCallbackTime:J

    .line 1453
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/BeautyModule;->mZoomValue:F

    .line 1455
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/BeautyModule;->mOnResumeTime:J

    .line 1456
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->checkDisplayRotation()V

    .line 1460
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_4

    .line 1461
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1470
    :goto_1
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_front_camera_mirror_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/BeautyModule;->mFrontCameraMirrorEnabled:Z

    .line 1472
    iget-boolean v1, p0, Lcom/android/camera/BeautyModule;->mWatermarkEnabled:Z

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1473
    invoke-static {}, Lcom/android/camera/watermark/WatermarkImageSaver;->getInstance()Lcom/android/camera/watermark/WatermarkImageSaver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/watermark/WatermarkImageSaver;->finish()V

    .line 1476
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1478
    invoke-virtual {p0}, Lcom/android/camera/BeautyModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1479
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    goto :goto_0

    .line 1463
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/camera/BeautyModule;->mDebugUri:Landroid/net/Uri;

    .line 2374
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 2265
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 2266
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 2267
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2268
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2269
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2270
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2275
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 2273
    :cond_0
    sget-object v3, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 1

    .prologue
    .line 1207
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    .line 1208
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/BeautyUI;->setOrientation(IZ)V

    .line 2493
    :cond_0
    return-void
.end method

.method public setSelfieBokeh(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/camera/BeautyModule;->mSelfieBokeh:Z

    .line 413
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/BeautyModule;->setCameraParameters(I)V

    .line 414
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 689
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 701
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 693
    iput-boolean v3, p0, Lcom/android/camera/BeautyModule;->mFaceDetectionStarted:Z

    .line 694
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    iget v1, p0, Lcom/android/camera/BeautyModule;->mDisplayOrientation:I

    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->isCameraFrontFacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BeautyUI;->onStartFaceDetection(IZ)V

    .line 695
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 696
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 697
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 698
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 699
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 471
    return-void
.end method

.method public startReceivedMetadataCallback()V
    .locals 3

    .prologue
    .line 2403
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2404
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mReceivedMetadataStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BeautyModule;->mReceivedMetadataStarted:Z

    .line 2410
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-nez v0, :cond_2

    .line 2411
    new-instance v0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    new-instance v1, Lcom/android/camera/BeautyModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyModule$12;-><init>(Lcom/android/camera/BeautyModule;)V

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2439
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 705
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 709
    iput-boolean v2, p0, Lcom/android/camera/BeautyModule;->mFaceDetectionStarted:Z

    .line 710
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 711
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 712
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 713
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 714
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->clearFaces()V

    .line 715
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mUI:Lcom/android/camera/BeautyUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyUI;->onStopFaceDetection()V

    .line 716
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1868
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/BeautyModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1869
    sget-object v0, Lcom/android/camera/BeautyModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1870
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1872
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/BeautyModule;->setCameraState(I)V

    .line 1873
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1874
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1876
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1877
    return-void
.end method

.method public stopReceivedMetadataCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2444
    iget-boolean v0, p0, Lcom/android/camera/BeautyModule;->mReceivedMetadataStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2463
    :cond_0
    :goto_0
    return-void

    .line 2448
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2449
    iput-boolean v3, p0, Lcom/android/camera/BeautyModule;->mReceivedMetadataStarted:Z

    .line 2450
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-eqz v0, :cond_2

    .line 2451
    iput-object v2, p0, Lcom/android/camera/BeautyModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2453
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    .line 2455
    iget-object v1, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2456
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2457
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2461
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2459
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1614
    iget v0, p0, Lcom/android/camera/BeautyModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/BeautyModule;->setDisplayOrientation()V

    .line 1617
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/camera/BeautyModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 634
    return-void
.end method
