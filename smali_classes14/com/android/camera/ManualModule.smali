.class public Lcom/android/camera/ManualModule;
.super Lcom/android/camera/CameraModule;
.source "ManualModule.java"

# interfaces
.implements Lcom/android/camera/ManualController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ManualModule$Memento;,
        Lcom/android/camera/ManualModule$SavePictureCallback;,
        Lcom/android/camera/ManualModule$AddThumbnailBundle;,
        Lcom/android/camera/ManualModule$ShutterFakeImageCallback;,
        Lcom/android/camera/ManualModule$WaterMarkPictureCallbackFactory;,
        Lcom/android/camera/ManualModule$PictureCallbackFactory;,
        Lcom/android/camera/ManualModule$PostPictureCallbackFactory;,
        Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;,
        Lcom/android/camera/ManualModule$MediaSaveListener;,
        Lcom/android/camera/ManualModule$AutoFocusMoveCallback;,
        Lcom/android/camera/ManualModule$AutoFocusCallback;,
        Lcom/android/camera/ManualModule$JpegPictureCallback;,
        Lcom/android/camera/ManualModule$ResizeBundle;,
        Lcom/android/camera/ManualModule$RawPictureCallback;,
        Lcom/android/camera/ManualModule$PostViewPictureCallback;,
        Lcom/android/camera/ManualModule$PosPostViewPictureCallback;,
        Lcom/android/camera/ManualModule$ShutterCallback;,
        Lcom/android/camera/ManualModule$MainHandler;
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

.field private static final UPDATE_PARAM_ZOOM:I = 0x2


# instance fields
.field private final mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/ManualModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBurstAvailableSize:J

.field private mBurstManager:Lcom/android/camera/burst/BurstManager;

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field private final mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

.field private mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field private mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mDebugUri:Landroid/net/Uri;

.field private final mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Lcom/android/ex/camera2/portability/CaptureIntent;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Ljava/lang/Integer;",
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

.field private mFrontCameraId:I

.field private mFrontCameraMirrorEnabled:Z

.field public mFrontFlashTriggered:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mInProEditMode:Z

.field private mIsBurstInProgress:Z

.field private mIsProModeEnabled:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mNeedResetManualIsoValue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureSizes:Lcom/android/camera/util/Size;

.field private final mPostHandler:Landroid/os/Handler;

.field private final mPostViewPictureCallback:Lcom/android/camera/ManualModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mRawPictureCallback:Lcom/android/camera/ManualModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedMetadataStarted:Z

.field private mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShouldResizeTo16x9:Z

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mSnapshotOnIdle:Z

.field private mTimerDuration:I

.field private mUI:Lcom/android/camera/ManualAbstractUI;

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

    const-string v1, "ManualModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 4
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 403
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 143
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    .line 149
    iput v3, p0, Lcom/android/camera/ManualModule;->mPendingSwitchCameraId:I

    .line 160
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mFaceDetectionStarted:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mReceivedMetadataStarted:Z

    .line 170
    iput-object v1, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 178
    new-instance v0, Lcom/android/camera/ManualModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$1;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 194
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mFrontCameraMirrorEnabled:Z

    .line 195
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mWatermarkEnabled:Z

    .line 196
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mInProEditMode:Z

    .line 198
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mCompassTagEnabled:Z

    .line 200
    iput v2, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    .line 201
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mSnapshotOnIdle:Z

    .line 208
    new-instance v0, Lcom/android/camera/ManualModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ManualModule$PostViewPictureCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mPostViewPictureCallback:Lcom/android/camera/ManualModule$PostViewPictureCallback;

    .line 209
    new-instance v0, Lcom/android/camera/ManualModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ManualModule$RawPictureCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mRawPictureCallback:Lcom/android/camera/ManualModule$RawPictureCallback;

    .line 210
    new-instance v0, Lcom/android/camera/ManualModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ManualModule$AutoFocusCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mAutoFocusCallback:Lcom/android/camera/ManualModule$AutoFocusCallback;

    .line 211
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/ManualModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ManualModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ManualModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 213
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    .line 214
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 215
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    .line 217
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 219
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 221
    new-instance v0, Lcom/android/camera/ManualModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$2;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 274
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mFrontFlashTriggered:Z

    .line 285
    new-instance v0, Lcom/android/camera/ManualModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$MainHandler;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mPostHandler:Landroid/os/Handler;

    .line 299
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mCameraPreviewParamsReady:Z

    .line 301
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    .line 302
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/ManualModule;->mBurstAvailableSize:J

    .line 307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mNeedResetManualIsoValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 309
    new-instance v0, Lcom/android/camera/ManualModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$3;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 342
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mShouldResizeTo16x9:Z

    .line 617
    new-instance v0, Lcom/android/camera/ManualModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$6;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1081
    new-instance v0, Lcom/android/camera/ManualModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$9;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    .line 2782
    new-instance v0, Lcom/android/camera/ManualModule$14;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$14;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 404
    return-void

    :cond_0
    move-object v0, v1

    .line 211
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->onError()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/ManualModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ManualModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->cancelCountDown(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/ManualModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/ManualModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/ManualModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/ManualModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/camera/ManualModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/ManualModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ManualModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/ManualModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2502(Lcom/android/camera/ManualModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/ManualModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ManualModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/ManualModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/ManualModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->doCapture(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParameterWhenPreviewStarted()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/ManualModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ManualModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/ManualModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$400()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/ManualModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/ManualModule;)Lcom/android/camera/burst/BurstManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/ManualModule;)Lcom/android/camera/ui/TouchCoordinate;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/camera/ManualModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/android/camera/ManualModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    return p1
.end method

.method static synthetic access$4902(Lcom/android/camera/ManualModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Z

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/ManualModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/android/camera/ManualModule;->mBurstAvailableSize:J

    return-wide v0
.end method

.method static synthetic access$5002(Lcom/android/camera/ManualModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # J

    .prologue
    .line 110
    iput-wide p1, p0, Lcom/android/camera/ManualModule;->mBurstAvailableSize:J

    return-wide p1
.end method

.method static synthetic access$5100(Lcom/android/camera/ManualModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mCompassTagEnabled:Z

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/ManualModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$5600(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mRawPictureCallback:Lcom/android/camera/ManualModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/ManualModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mPostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualModule$PostViewPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mPostViewPictureCallback:Lcom/android/camera/ManualModule$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ManualModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/ManualModule;Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->isPostProcessing(Lcom/android/ex/camera2/portability/CaptureIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/android/camera/ManualModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFrontCameraMirrorEnabled:Z

    return v0
.end method

.method static synthetic access$6600(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ManualModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$ResizeBundle;)Lcom/android/camera/ManualModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;
    .param p1, "x1"    # Lcom/android/camera/ManualModule$ResizeBundle;

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/camera/ManualModule;->cropJpegDataToAspectRatio(Lcom/android/camera/ManualModule$ResizeBundle;)Lcom/android/camera/ManualModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ManualModule;)Lcom/android/camera/ManualAbstractUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ManualModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualModule;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setupPreview()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 740
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 741
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/ManualModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$8;-><init>(Lcom/android/camera/ManualModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 748
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->animateFlash()V

    .line 1079
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1709
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown(Z)V
    .locals 2
    .param p1, "manualOnly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 470
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->cancelCountDown()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 475
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 476
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 477
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 479
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 480
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 481
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ManualAbstractUI;->setEditableMode(ZZ)V

    .line 483
    :cond_1
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 355
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setDisplayOrientation()V

    .line 357
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ManualModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ManualModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$4;-><init>(Lcom/android/camera/ManualModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1866
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1885
    :goto_0
    return v1

    .line 1870
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1871
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1875
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1876
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 1877
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1881
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_3

    .line 1882
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: parameters for preview is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1885
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1822
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1823
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->stopFaceDetection()V

    .line 1824
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->stopReceivedMetadataCallback()V

    .line 1825
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1826
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1828
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1829
    iput-object v2, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1830
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1831
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1832
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 1835
    :cond_0
    return-void
.end method

.method private createMemento(Landroid/location/Location;Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;I)Lcom/android/camera/ManualModule$Memento;
    .locals 7
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "pictureCallbackFactory"    # Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
    .param p3, "iso"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 3736
    new-instance v0, Lcom/android/camera/ManualModule$Memento;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/ManualModule$Memento;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    .line 3738
    .local v0, "memento":Lcom/android/camera/ManualModule$Memento;
    invoke-static {v0, p1}, Lcom/android/camera/ManualModule$Memento;->access$7402(Lcom/android/camera/ManualModule$Memento;Landroid/location/Location;)Landroid/location/Location;

    .line 3739
    invoke-static {v0, p2}, Lcom/android/camera/ManualModule$Memento;->access$2602(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    .line 3741
    iget v3, p0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$6502(Lcom/android/camera/ManualModule$Memento;I)I

    .line 3742
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$7602(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 3743
    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$6002(Lcom/android/camera/ManualModule$Memento;I)I

    .line 3744
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$7702(Lcom/android/camera/ManualModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3745
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$6102(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 3746
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$7802(Lcom/android/camera/ManualModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3747
    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$7902(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3748
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mShouldResizeTo16x9:Z

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$8002(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3749
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$8102(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 3750
    iget-wide v4, p0, Lcom/android/camera/ManualModule;->mCaptureStartTime:J

    invoke-static {v0, v4, v5}, Lcom/android/camera/ManualModule$Memento;->access$8202(Lcom/android/camera/ManualModule$Memento;J)J

    .line 3751
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mCompassTagEnabled:Z

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$8302(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3752
    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$8402(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3753
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mMirror:Z

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$5902(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3754
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mFrontFlashTriggered:Z

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$8502(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3756
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v4, p0, Lcom/android/camera/ManualModule;->mCaptureStartTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 3757
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v3}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v1

    .line 3758
    .local v1, "nameEntity":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    iget-object v3, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/android/camera/ManualModule$Memento;->access$2202(Lcom/android/camera/ManualModule$Memento;Ljava/lang/String;)Ljava/lang/String;

    .line 3759
    iget-wide v4, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    invoke-static {v0, v4, v5}, Lcom/android/camera/ManualModule$Memento;->access$7302(Lcom/android/camera/ManualModule$Memento;J)J

    .line 3761
    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$8602(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3762
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isEtAuto()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$8702(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3763
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isISOAuto()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$8802(Lcom/android/camera/ManualModule$Memento;Z)Z

    .line 3765
    new-instance v2, Lcom/android/camera/ManualModule$MediaSaveListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/ManualModule$MediaSaveListener;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    invoke-static {v0, v2}, Lcom/android/camera/ManualModule$Memento;->access$7202(Lcom/android/camera/ManualModule$Memento;Lcom/android/camera/ManualModule$MediaSaveListener;)Lcom/android/camera/ManualModule$MediaSaveListener;

    .line 3766
    invoke-static {v0, p3}, Lcom/android/camera/ManualModule$Memento;->access$9002(Lcom/android/camera/ManualModule$Memento;I)I

    .line 3768
    return-object v0
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/ManualModule$ResizeBundle;)Lcom/android/camera/ManualModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/ManualModule$ResizeBundle;

    .prologue
    .line 901
    iget-object v1, p1, Lcom/android/camera/ManualModule$ResizeBundle;->jpegData:[B

    .line 902
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/ManualModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 903
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/ManualModule$ResizeBundle;->targetAspectRatio:F

    .line 905
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 906
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 907
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 911
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 912
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 913
    .local v2, "newHeight":I
    move v3, v6

    .line 918
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 919
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 921
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 933
    :cond_0
    :goto_1
    return-object p1

    .line 915
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 916
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 925
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 926
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 927
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 929
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 931
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 932
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/ManualModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private doCapture(Z)V
    .locals 21
    .param p1, "animateBefore"    # Z

    .prologue
    .line 1123
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "doCapture"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1124
    if-eqz p1, :cond_0

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ManualModule;->animateAfterShutter()V

    .line 1127
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v3

    sget-object v4, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v3, v4, :cond_1

    .line 1128
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ManualModule;->stopFaceDetection()V

    .line 1130
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v18

    .line 1131
    .local v18, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, v18

    invoke-static {v3, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/ManualModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 1134
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureMetering:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1136
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ManualModule;->updateJpegRotation()V

    .line 1137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1138
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ManualModule;->setFrontCameraMirror(I)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 1142
    .local v17, "captureIntent":Lcom/android/ex/camera2/portability/CaptureIntent;
    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    move-object/from16 v0, v17

    if-ne v0, v3, :cond_2

    .line 1143
    sget-object v17, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 1144
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "override captureIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 1151
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSceneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1152
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastCaptureIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1155
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ManualModule;->needFakeImage()Z

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/ManualModule;->getPictureCallbackFactory(Z)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;

    move-result-object v20

    .line 1157
    .local v20, "picCbFactory":Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
    const/4 v14, -0x1

    .line 1158
    .local v14, "isoValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v4

    .line 1159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1160
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1161
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isoValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1163
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v14}, Lcom/android/camera/ManualModule;->createMemento(Landroid/location/Location;Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;I)Lcom/android/camera/ManualModule$Memento;

    move-result-object v19

    .line 1165
    .local v19, "memento":Lcom/android/camera/ManualModule$Memento;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->getHandler()Landroid/os/Handler;

    move-result-object v5

    if-nez p1, :cond_3

    const/4 v6, 0x1

    .line 1166
    :goto_0
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->getShutterCallback(ZLcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;

    move-result-object v6

    .line 1167
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->getRawPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v7

    .line 1168
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->getPostViewPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v8

    .line 1169
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->getJpegPictureCallback(Lcom/android/camera/ManualModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ManualModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    .line 1170
    invoke-virtual/range {v20 .. v20}, Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;->IsUsePostProcess()Z

    move-result v13

    .line 1171
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v15

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ManualModule;->isEtAuto()Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x1

    .line 1165
    :goto_1
    invoke-virtual/range {v3 .. v16}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V

    .line 1178
    return-void

    .line 1160
    .end local v19    # "memento":Lcom/android/camera/ManualModule$Memento;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1165
    .restart local v19    # "memento":Lcom/android/camera/ManualModule$Memento;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1171
    :cond_4
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private focusAndCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1446
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 1449
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1455
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1456
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mSnapshotOnIdle:Z

    .line 1462
    :goto_0
    return-void

    .line 1460
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mSnapshotOnIdle:Z

    .line 1461
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private getInitializedZoomValue()F
    .locals 1

    .prologue
    .line 3772
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private getPictureCallbackFactory(Z)Lcom/android/camera/ManualModule$PictureCallbackFactoryBase;
    .locals 2
    .param p1, "needFakeImage"    # Z

    .prologue
    .line 2963
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_1

    .line 2964
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mWatermarkEnabled:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/camera/ManualModule$WaterMarkPictureCallbackFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/ManualModule$WaterMarkPictureCallbackFactory;-><init>(Lcom/android/camera/ManualModule;ZZ)V

    .line 2967
    :goto_0
    return-object v0

    .line 2963
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v0, v1, :cond_0

    .line 2967
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mWatermarkEnabled:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/camera/ManualModule$WaterMarkPictureCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/android/camera/ManualModule$WaterMarkPictureCallbackFactory;-><init>(Lcom/android/camera/ManualModule;ZZ)V

    goto :goto_0

    .line 2964
    :cond_2
    new-instance v0, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ManualModule$PostPictureCallbackFactory;-><init>(Lcom/android/camera/ManualModule;Z)V

    goto :goto_0

    .line 2967
    :cond_3
    new-instance v0, Lcom/android/camera/ManualModule$PictureCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ManualModule$PictureCallbackFactory;-><init>(Lcom/android/camera/ManualModule;Lcom/android/camera/ManualModule$1;)V

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2560
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2561
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mFocusAreaSupported:Z

    .line 2562
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mMeteringAreaSupported:Z

    .line 2563
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mAeLockSupported:Z

    .line 2564
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mAwbLockSupported:Z

    .line 2565
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mContinuousFocusSupported:Z

    .line 2566
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 707
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->initializeFirstTime()V

    .line 715
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 717
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 718
    new-instance v0, Lcom/android/camera/burst/BurstManager;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/burst/BurstManager;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    .line 720
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    .line 721
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->addIdleHandler()V

    .line 723
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 1571
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1572
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1590
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1591
    return-void

    .line 1574
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mMirror:Z

    .line 1575
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1576
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1577
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 1578
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 1579
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 1580
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 1581
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1584
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/ManualModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v4}, Lcom/android/camera/ManualAbstractUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 1585
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1586
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 1587
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 729
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 730
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 732
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v0, :cond_0

    .line 733
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstManager;->prepareBurstSound()V

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualAbstractUI;->initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 737
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1560
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    return v0
.end method

.method private isEtAuto()Z
    .locals 4

    .prologue
    .line 3778
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3779
    .local v0, "etValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f080404

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isISOAuto()Z
    .locals 4

    .prologue
    .line 3784
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_manual_exposure_iso"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3785
    .local v0, "isoValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f080407

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isPostProcessing(Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p1, "capture"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 3230
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isResumeFromLockscreen()Z
    .locals 2

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1598
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSupportWideTele()Z
    .locals 1

    .prologue
    .line 2761
    const/4 v0, 0x0

    return v0
.end method

.method private needFakeImage()Z
    .locals 1

    .prologue
    .line 3795
    const/4 v0, 0x1

    return v0
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->openCameraCommon()V

    .line 576
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 340
    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 491
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 492
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 493
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 494
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->resumeFaceDetection()V

    .line 496
    invoke-direct {p0, v1}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 497
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->startFaceDetection()V

    .line 498
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->startReceivedMetadataCallback()V

    .line 499
    return-void
.end method

.method private openCameraCommon()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualAbstractUI;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 696
    return-void
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 1234
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 1235
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1236
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1237
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 1238
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1239
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1241
    :cond_0
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 613
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 615
    return-void
.end method

.method private resetAndApplyISOParameter()V
    .locals 14

    .prologue
    .line 2374
    sget-boolean v9, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v9

    sget-object v12, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->QUALCOMM:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-eq v9, v12, :cond_1

    .line 2418
    :cond_0
    :goto_0
    return-void

    .line 2377
    :cond_1
    sget-object v9, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v12, "resetISOParameter start"

    invoke-static {v9, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2379
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    .line 2380
    .local v8, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v9

    const-string v12, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v8, v9, v12}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2382
    .local v1, "etValue":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f080404

    invoke-virtual {v9, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2383
    .local v2, "isEtAuto":Z
    if-nez v2, :cond_2

    .line 2384
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualExposureTime()D

    move-result-wide v4

    .line 2385
    .local v4, "max":D
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualExposureTime()D

    move-result-wide v6

    .line 2386
    .local v6, "min":D
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 2387
    .local v10, "value":D
    cmpl-double v9, v10, v6

    if-ltz v9, :cond_4

    cmpg-double v9, v10, v4

    if-gtz v9, :cond_4

    .line 2388
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9, v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentExposureTime(D)V

    .line 2394
    .end local v4    # "max":D
    .end local v6    # "min":D
    .end local v10    # "value":D
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersZslMode()V

    .line 2396
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualISO()I

    move-result v6

    .line 2397
    .local v6, "min":I
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualISO()I

    move-result v4

    .line 2398
    .local v4, "max":I
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentISO()I

    move-result v0

    .line 2399
    .local v0, "currentISO":I
    add-int/lit8 v3, v0, -0x1

    .line 2400
    .local v3, "resetISOValue":I
    if-gt v0, v6, :cond_5

    .line 2401
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    add-int/lit8 v12, v6, 0x1

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentISO(I)V

    .line 2409
    :goto_2
    if-eqz v2, :cond_7

    .line 2410
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    .line 2415
    :goto_3
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v12, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2417
    :cond_3
    sget-object v9, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v12, "resetISOParameter end"

    invoke-static {v9, v12}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2390
    .end local v0    # "currentISO":I
    .end local v3    # "resetISOValue":I
    .local v4, "max":D
    .local v6, "min":D
    .restart local v10    # "value":D
    :cond_4
    sget-object v9, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid exposure time range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 2402
    .end local v10    # "value":D
    .restart local v0    # "currentISO":I
    .restart local v3    # "resetISOValue":I
    .local v4, "max":I
    .local v6, "min":I
    :cond_5
    if-le v0, v4, :cond_6

    .line 2403
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    add-int/lit8 v12, v4, -0x1

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentISO(I)V

    goto :goto_2

    .line 2405
    :cond_6
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentISO(I)V

    goto :goto_2

    .line 2412
    :cond_7
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    goto :goto_3
.end method

.method private resetCameraDefaultId(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "possibleValue"    # [Ljava/lang/String;

    .prologue
    .line 2765
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/camera/settings/SettingsManager;->setDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2766
    return-void
.end method

.method private resetCameraManualParameter()V
    .locals 2

    .prologue
    .line 2769
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_1

    .line 2780
    :cond_0
    :goto_0
    return-void

    .line 2771
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V

    .line 2772
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2773
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 2774
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    .line 2775
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    if-eqz v0, :cond_2

    .line 2776
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    .line 2779
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 2617
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 2618
    const/4 v1, 0x0

    .line 2620
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2621
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2622
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2626
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2629
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2623
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2624
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2626
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private setAfAeAwbLock()V
    .locals 3

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1192
    :cond_0
    :goto_0
    return-void

    .line 1183
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1184
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setAutoExposureLockIfSupported()V

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1187
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1188
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setFocusAreasIfSupported()V

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setMeteringAreasIfSupported()V

    .line 1191
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    goto :goto_0
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2063
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2064
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 2066
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 2073
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 2515
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2516
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateCameraParametersInitialize()V

    .line 2519
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2520
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateCameraParametersZoom()V

    .line 2523
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2524
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateCameraParametersPreference()V

    .line 2527
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    .line 2528
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2530
    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 2535
    iget v0, p0, Lcom/android/camera/ManualModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ManualModule;->mUpdateSet:I

    .line 2536
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2539
    iput v1, p0, Lcom/android/camera/ManualModule;->mUpdateSet:I

    .line 2550
    :cond_0
    :goto_0
    return-void

    .line 2541
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2542
    iget v0, p0, Lcom/android/camera/ManualModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraParameters(I)V

    .line 2543
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateSceneMode()V

    .line 2544
    iput v1, p0, Lcom/android/camera/ManualModule;->mUpdateSet:I

    goto :goto_0

    .line 2546
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2547
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1061
    iput p1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

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
    .line 1838
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    .line 1839
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1840
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualModule;->mDisplayOrientation:I

    .line 1841
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget v2, p0, Lcom/android/camera/ManualModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/ManualAbstractUI;->setDisplayOrientation(I)V

    .line 1842
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1843
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/ManualModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1846
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 1847
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1849
    :cond_1
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ManualModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1851
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 2076
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2077
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 2079
    :cond_0
    return-void
.end method

.method private setFrontCameraMirror(I)V
    .locals 3
    .param p1, "jpegOrientation"    # I

    .prologue
    .line 1195
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mFrontCameraMirrorEnabled:Z

    if-eqz v1, :cond_0

    .line 1196
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1200
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    .line 1201
    .local v0, "cameraOrientation":I
    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 1203
    :cond_2
    if-eqz p1, :cond_3

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_4

    .line 1204
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0

    .line 1206
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0
.end method

.method private setMeteringAreasIfSupported()V
    .locals 3

    .prologue
    .line 2082
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 2083
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 2086
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2087
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 2092
    :goto_0
    return-void

    .line 2089
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v0

    .line 2090
    .local v0, "defaultMode":Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    goto :goto_0
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1857
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1859
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->startPreview()V

    .line 1860
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 1892
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 1893
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1898
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1902
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setDisplayOrientation()V

    .line 1906
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 1907
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1909
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1915
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersPictureSize()V

    .line 1917
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/ManualModule;->setCameraParameters(I)V

    .line 1919
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1921
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1924
    new-instance v0, Lcom/android/camera/ManualModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$10;-><init>(Lcom/android/camera/ManualModule;)V

    .line 1945
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1946
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1947
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto :goto_0

    .line 1949
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    .line 579
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 606
    :goto_0
    return-void

    .line 582
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 583
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/ManualModule;->cancelCountDown(Z)V

    .line 584
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->resetPreviewOverlay()V

    .line 585
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 587
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->foldAllOptions()V

    .line 588
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 589
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 591
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ManualModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 592
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->closeCamera()V

    .line 593
    iget v1, p0, Lcom/android/camera/ManualModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    .line 595
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 596
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->requestCameraOpen()V

    .line 597
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->clearFaces()V

    .line 598
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 599
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/ManualModule;->mMirror:Z

    .line 603
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2484
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2492
    :goto_0
    return-void

    .line 2487
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 2488
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 2490
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2030
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 2031
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2032
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 2035
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 2037
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 2041
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2042
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 2045
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2046
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 2049
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2050
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCusPreviewMaxFPSEnable(Z)V

    .line 2052
    :cond_4
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2097
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2101
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setAutoExposureLockIfSupported()V

    .line 2102
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2103
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setFocusAreasIfSupported()V

    .line 2106
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setMeteringAreasIfSupported()V

    .line 2109
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2110
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2111
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v2

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v3, :cond_5

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 2114
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersPictureQuality()V

    .line 2120
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureCompensation()V

    .line 2123
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mNeedResetManualIsoValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2124
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->resetAndApplyISOParameter()V

    .line 2126
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureTimeAndISO()V

    .line 2129
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersWhiteBalance()V

    .line 2132
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersSceneMode()V

    .line 2135
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFeature()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eqz v0, :cond_3

    .line 2136
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersManualFocusMode()V

    .line 2140
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersZslMode()V

    .line 2143
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersTouchAfAec()V

    .line 2146
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFeature()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2147
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersMetering()V

    .line 2150
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 2151
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateAutoFocusMoveCallback()V

    goto/16 :goto_0

    :cond_5
    move v0, v1

    .line 2111
    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2056
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2057
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2059
    :cond_0
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2733
    iget-boolean v4, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2744
    :goto_0
    return-void

    .line 2738
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2739
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2740
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2741
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2742
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    .line 2743
    sget-object v4, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParameterWhenPreviewStarted()V
    .locals 2

    .prologue
    .line 2857
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2874
    :cond_0
    :goto_0
    return-void

    .line 2858
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2859
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v0, :cond_0

    .line 2861
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFeature()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->MANUAL_FOCUS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2862
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersManualFocusMode()V

    .line 2865
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    if-eqz v0, :cond_4

    .line 2866
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isISOAuto()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/camera/ManualModule;->resetAndApplyISOParameter()V

    .line 2867
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureTimeAndISO()V

    .line 2870
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2871
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method private updateParametersAutoHDRMode()V
    .locals 2

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableAutoHDR(Z)V

    .line 2209
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 2277
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2278
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_exposure_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2279
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 2280
    .local v0, "max":I
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 2281
    .local v1, "min":I
    if-lt v3, v1, :cond_0

    if-gt v3, v0, :cond_0

    .line 2282
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2286
    :goto_0
    return-void

    .line 2284
    :cond_0
    sget-object v4, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

.method private updateParametersExposureTimeAndISO()V
    .locals 14

    .prologue
    .line 2324
    sget-boolean v9, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-nez v9, :cond_0

    .line 2363
    :goto_0
    return-void

    .line 2326
    :cond_0
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    .line 2327
    .local v8, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v9

    const-string v12, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v8, v9, v12}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2328
    .local v0, "etValue":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v9}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v9

    const-string v12, "pref_camera_manual_exposure_iso"

    invoke-virtual {v8, v9, v12}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2329
    .local v3, "isoValue":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f080404

    invoke-virtual {v9, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2330
    .local v1, "isEtAuto":Z
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v12, 0x7f080407

    invoke-virtual {v9, v12}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2331
    .local v2, "isISOAuto":Z
    if-nez v1, :cond_1

    .line 2332
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualExposureTime()D

    move-result-wide v4

    .line 2333
    .local v4, "max":D
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualExposureTime()D

    move-result-wide v6

    .line 2334
    .local v6, "min":D
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 2335
    .local v10, "value":D
    cmpl-double v9, v10, v6

    if-ltz v9, :cond_3

    cmpg-double v9, v10, v4

    if-gtz v9, :cond_3

    .line 2336
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9, v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentExposureTime(D)V

    .line 2342
    .end local v4    # "max":D
    .end local v6    # "min":D
    .end local v10    # "value":D
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersZslMode()V

    .line 2344
    if-nez v2, :cond_2

    .line 2345
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxManualISO()I

    move-result v4

    .line 2346
    .local v4, "max":I
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinManualISO()I

    move-result v6

    .line 2347
    .local v6, "min":I
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 2348
    .local v10, "value":I
    if-lt v10, v6, :cond_4

    if-gt v10, v4, :cond_4

    .line 2349
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v9, v10}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentISO(I)V

    .line 2354
    .end local v4    # "max":I
    .end local v6    # "min":I
    .end local v10    # "value":I
    :cond_2
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 2355
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    goto/16 :goto_0

    .line 2338
    .local v4, "max":D
    .local v6, "min":D
    .local v10, "value":D
    :cond_3
    sget-object v9, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid exposure time range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 2351
    .local v4, "max":I
    .local v6, "min":I
    .local v10, "value":I
    :cond_4
    sget-object v9, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "invalid ISO range: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 2356
    .end local v4    # "max":I
    .end local v6    # "min":I
    .end local v10    # "value":I
    :cond_5
    if-nez v1, :cond_6

    if-eqz v2, :cond_6

    .line 2357
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->ISO_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    goto/16 :goto_0

    .line 2358
    :cond_6
    if-eqz v1, :cond_7

    if-nez v2, :cond_7

    .line 2359
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->EXP_TIME_PRIORITY:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    goto/16 :goto_0

    .line 2361
    :cond_7
    iget-object v9, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v12, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;->USER_SETTING:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;

    invoke-virtual {v9, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualExposureMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualExposureMode;)V

    goto/16 :goto_0
.end method

.method private updateParametersFlashMode()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2450
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2452
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2454
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v2, v5, :cond_0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v5, :cond_1

    .line 2455
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2458
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2459
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2460
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2461
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v3

    .line 2462
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2463
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2464
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "unlock flash Required"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2466
    :cond_2
    monitor-exit v3

    .line 2480
    :goto_0
    return-void

    .line 2466
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2468
    :cond_3
    iget-object v5, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 2469
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2470
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2471
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 2474
    :cond_6
    iget-object v5, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2475
    iget-object v5, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 2476
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2477
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2478
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 2474
    :cond_8
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_1

    :cond_9
    move v2, v3

    .line 2476
    goto :goto_2
.end method

.method private updateParametersManualFocusMode()V
    .locals 4

    .prologue
    .line 2310
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2311
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_manual_focus_mode"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2313
    .local v1, "value":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080406

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2315
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)V

    .line 2321
    :goto_0
    return-void

    .line 2317
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->MANUAL:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2318
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;->SCALE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setManualFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$ManualFocusMode;)V

    .line 2319
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentFocusScale(I)V

    goto :goto_0
.end method

.method private updateParametersMetering()V
    .locals 6

    .prologue
    .line 2289
    const/4 v1, 0x0

    .line 2290
    .local v1, "needClearMeteringArea":Z
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2291
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_metering_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2292
    .local v3, "value":Ljava/lang/String;
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 2293
    .local v0, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f080370

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2295
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v0

    .line 2303
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 2304
    iget-boolean v4, p0, Lcom/android/camera/ManualModule;->mMeteringAreaSupported:Z

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 2305
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 2307
    :cond_1
    return-void

    .line 2296
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f080372

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2297
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->FRAME_AVERAGE:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 2298
    const/4 v1, 0x1

    goto :goto_0

    .line 2299
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f080371

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2300
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->CENTER_WEIGHTED:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 2301
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private updateParametersPictureQuality()V
    .locals 3

    .prologue
    .line 2265
    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2266
    .local v0, "jpegQuality":I
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 2267
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 10

    .prologue
    .line 2217
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v6, :cond_0

    .line 2218
    sget-object v6, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "attempting to set picture size without caemra device"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2262
    :goto_0
    return-void

    .line 2222
    :cond_0
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 2223
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v7

    invoke-static {v6, v7, v5}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 2225
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 2228
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ManualModule;->mPictureSizes:Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v7, p0, Lcom/android/camera/ManualModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2236
    sget-boolean v6, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v6, :cond_1

    .line 2237
    const-string v6, "1836x3264"

    iget-object v7, p0, Lcom/android/camera/ManualModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2238
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/ManualModule;->mShouldResizeTo16x9:Z

    .line 2246
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 2247
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/camera/ManualModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v4, v6, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 2248
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 2249
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v2, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2250
    sget-object v6, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2251
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2253
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v7, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2254
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2257
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    if-eqz v6, :cond_3

    .line 2258
    sget-object v6, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "updating aspect ratio"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2259
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/camera/ManualAbstractUI;->updatePreviewAspectRatio(F)V

    .line 2261
    :cond_3
    sget-object v6, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2225
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v4    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_1

    .line 2229
    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v1

    .line 2230
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v6, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 2240
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/ManualModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_2
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 2423
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2425
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2426
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 2432
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2433
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2442
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersFlashMode()V

    .line 2445
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2446
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2447
    return-void

    .line 2436
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2437
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_0

    .line 2438
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 2189
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2200
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 2191
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 2192
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2193
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 2194
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2195
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2196
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2197
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2181
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 2183
    :cond_0
    return-void
.end method

.method private updateParametersWhiteBalance()V
    .locals 5

    .prologue
    .line 2270
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2271
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_whitebalance_mode_key"

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2272
    .local v2, "value":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 2273
    .local v1, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->whiteBalanceFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setWhiteBalance(Lcom/android/ex/camera2/portability/CameraCapabilities$WhiteBalance;)V

    .line 2274
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 5

    .prologue
    .line 2159
    const/4 v0, 0x0

    .line 2160
    .local v0, "enableZSL":Z
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2161
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2162
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2164
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isEtAuto()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2165
    const/4 v0, 0x0

    .line 2168
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2169
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2170
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 2171
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_1

    .line 2172
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusOverlayManager;->setIsUseZSL(Z)V

    .line 2174
    :cond_1
    return-void
.end method

.method private updateSceneMode()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_1

    .line 1231
    :cond_0
    :goto_0
    return-void

    .line 1228
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 1229
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ManualModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 1219
    const/4 v0, 0x0

    return v0
.end method

.method public autoFocus()V
    .locals 3

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1722
    :goto_0
    return-void

    .line 1717
    :cond_0
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1718
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ManualModule;->mFocusStartTime:J

    .line 1719
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAutoFocusCallback:Lcom/android/camera/ManualModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1720
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1721
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1732
    :goto_0
    return-void

    .line 1729
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1730
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1731
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraParameters(I)V

    goto :goto_0

    .line 1730
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1095
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1098
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v0

    .line 1119
    :goto_0
    return v2

    .line 1101
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ManualModule;->mCaptureStartTime:J

    .line 1105
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/ManualModule;->mPostViewPictureCallbackTime:J

    .line 1106
    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mFrontFlashTriggered:Z

    .line 1108
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1109
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1110
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mFrontFlashTriggered:Z

    .line 1111
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->pauseFaceDetection()V

    .line 1112
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->clearFaces()V

    .line 1113
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1115
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v3, :cond_3

    move v0, v2

    .line 1116
    .local v0, "animateBefore":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->doCapture(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1687
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1689
    iput-object v1, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v0, :cond_1

    .line 1692
    iput-object v1, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    .line 1694
    :cond_1
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 662
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 664
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 665
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 666
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 667
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 668
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_wide_tele_key"

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 669
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 671
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v2, :cond_0

    .line 672
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 673
    new-instance v2, Lcom/android/camera/ManualModule$7;

    invoke-direct {v2, p0}, Lcom/android/camera/ManualModule$7;-><init>(Lcom/android/camera/ManualModule;)V

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 679
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 680
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v2

    iput v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 681
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v2

    iput v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 684
    :cond_0
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 685
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 687
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    :goto_1
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 688
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 690
    return-object v0

    :cond_1
    move v2, v4

    .line 669
    goto :goto_0

    :cond_2
    move v3, v4

    .line 687
    goto :goto_1
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2597
    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    return v0
.end method

.method public getCurrentManualValueItemByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v1, "pref_camera_wide_tele_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "scope":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 545
    .end local v0    # "scope":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/ManualModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManualItemListByKey(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ManualDataUtil$ManualModeItemData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/camera/ManualDataUtil$ManualModeItemData;>;"
    const-string v1, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    invoke-static {v1, v2, v3}, Lcom/android/camera/ManualDataUtil;->getAndFilterAwbItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 571
    :cond_0
    :goto_0
    return-object v0

    .line 555
    :cond_1
    const-string v1, "pref_camera_manual_exposure_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getExposureCompensationItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 557
    :cond_2
    const-string v1, "pref_camera_metering_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 558
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getAutoExposureMetering(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 559
    :cond_3
    const-string v1, "pref_camera_manual_focus_mode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 560
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/camera/ManualDataUtil;->getFocusModes(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 561
    :cond_4
    const-string v1, "pref_camera_wide_tele_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 562
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isSupportWideTele()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getWideTeleOption(Landroid/content/Context;Lcom/android/camera/app/CameraProvider;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 564
    :cond_5
    const-string v1, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 565
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getAutoExposureTimeItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_6
    const-string v1, "pref_camera_manual_exposure_iso"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 567
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getISOItems(Landroid/content/Context;Lcom/android/ex/camera2/portability/CameraCapabilities;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_7
    const-string v1, "pref_camera_zoom_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxZoomRatio()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/camera/ManualDataUtil;->getZoomItems(Landroid/content/Context;F)Ljava/util/ArrayList;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 650
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 8
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 416
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 418
    const/4 v5, 0x0

    .line 419
    .local v5, "orientation":I
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    .line 423
    .local v7, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    .line 424
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    if-eqz v0, :cond_4

    .line 425
    const-string v0, "default_scope"

    const-string v1, "pref_camera_manual_pro_mode_enabled"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 426
    .local v4, "enabled":Z
    const-string v0, "default_scope"

    const-string v1, "pref_camera_manual_pro_mode_enabled"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    new-instance v0, Lcom/android/camera/ManualProModeUI;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ManualProModeUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ManualController;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    .line 428
    iput-boolean v4, p0, Lcom/android/camera/ManualModule;->mInProEditMode:Z

    .line 431
    .end local v4    # "enabled":Z
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    .line 441
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualModule;->mFrontCameraId:I

    .line 444
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isSupportWideTele()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 445
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 446
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_wide_tele_key"

    invoke-virtual {v7, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    .line 448
    :cond_2
    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/camera/ManualModule;->mFrontCameraId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ManualModule;->resetCameraDefaultId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget v2, p0, Lcom/android/camera/ManualModule;->mCameraId:I

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 454
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, p0}, Lcom/android/camera/ManualAbstractUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 456
    new-instance v0, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 457
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 460
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 461
    .local v6, "cancelButton":Landroid/view/View;
    new-instance v0, Lcom/android/camera/ManualModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualModule$5;-><init>(Lcom/android/camera/ManualModule;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    return-void

    .line 430
    .end local v6    # "cancelButton":Landroid/view/View;
    :cond_4
    new-instance v0, Lcom/android/camera/ManualUI;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2, v5}, Lcom/android/camera/ManualUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/ManualController;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    goto/16 :goto_0
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2554
    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2556
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2554
    :cond_0
    :goto_0
    return v0

    .line 2556
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyModeListState(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2753
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 2754
    .local v0, "viewVisible":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/ManualAbstractUI;->setViewVisible(I)V

    .line 2755
    :cond_0
    return-void

    .line 2753
    .end local v0    # "viewVisible":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1247
    sget-object v2, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1248
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1301
    :goto_0
    return-void

    .line 1251
    :cond_0
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1253
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->initializeCapabilities()V

    .line 1260
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->getInitializedZoomValue()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    .line 1261
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v2, :cond_1

    .line 1262
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->initializeFocusManager()V

    .line 1264
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 1267
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1268
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1270
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1271
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1273
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1274
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1275
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1282
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1284
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1285
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/ManualModule;->setCameraParameters(I)V

    .line 1289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mCameraPreviewParamsReady:Z

    .line 1291
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->startPreview()V

    .line 1293
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1295
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->onCameraOpened()V

    .line 1297
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/ManualModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 1299
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1300
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0

    .line 1276
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1277
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_1
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1478
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1479
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1480
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1484
    :goto_0
    return-void

    .line 1483
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 1

    .prologue
    .line 2878
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2882
    :cond_0
    :goto_0
    return-void

    .line 2879
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v0, :cond_0

    .line 2880
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstManager;->prepareBurstSound()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1763
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1792
    :cond_0
    :goto_0
    return v0

    .line 1764
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 1765
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1792
    goto :goto_0

    .line 1769
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 1770
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1771
    invoke-virtual {p0, v0}, Lcom/android/camera/ManualModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1775
    goto :goto_0

    .line 1777
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1778
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1784
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1788
    invoke-virtual {p0, v0}, Lcom/android/camera/ManualModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1765
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

    .line 1797
    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1818
    :cond_0
    :goto_0
    return v0

    .line 1798
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 1799
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1818
    goto :goto_0

    .line 1802
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    .line 1803
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1804
    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->cancelCountDown(Z)V

    goto :goto_0

    .line 1806
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    .line 1807
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1811
    goto :goto_0

    .line 1813
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1814
    invoke-virtual {p0, v1}, Lcom/android/camera/ManualModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1799
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
    .line 1698
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setDisplayOrientation()V

    .line 1699
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2608
    return-void
.end method

.method public onManualItemSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 523
    const-string v3, "pref_camera_wide_tele_key"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 524
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 525
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 526
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 527
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/camera/ManualModule;->mFrontCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 528
    .local v1, "possibleValue":[Ljava/lang/String;
    invoke-direct {p0, p2, v1}, Lcom/android/camera/ManualModule;->resetCameraDefaultId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 529
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ManualModule;->mPendingSwitchCameraId:I

    .line 531
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->switchCamera()V

    .line 541
    .end local v1    # "possibleValue":[Ljava/lang/String;
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    :goto_0
    return-void

    .line 535
    .end local v0    # "currentValue":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    .restart local v0    # "currentValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 537
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 538
    .restart local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2602
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2603
    return-void

    .line 2602
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2730
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2726
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 514
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 503
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 504
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->startPreview()V

    .line 505
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 1466
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1467
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1468
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1473
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 2633
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/ManualModule$12;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$12;-><init>(Lcom/android/camera/ManualModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2639
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1968
    const/4 v2, 0x0

    .line 1969
    .local v2, "needUpdateManualUI":Z
    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1970
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersFlashMode()V

    .line 2006
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 2007
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/ManualModule$11;

    invoke-direct {v5, p0, p2}, Lcom/android/camera/ManualModule$11;-><init>(Lcom/android/camera/ManualModule;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2015
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->isCameraIdle()Z

    move-result v4

    if-nez v4, :cond_b

    .line 2016
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/camera/ManualModule;->setCameraParametersWhenIdle(I)V

    .line 2025
    :cond_2
    :goto_1
    return-void

    .line 1971
    :cond_3
    const-string v4, "pref_camera_manual_focus_mode"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1972
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersManualFocusMode()V

    .line 1973
    const/4 v2, 0x1

    goto :goto_0

    .line 1974
    :cond_4
    const-string v4, "pref_camera_whitebalance_mode_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1975
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersWhiteBalance()V

    .line 1976
    const/4 v2, 0x1

    goto :goto_0

    .line 1977
    :cond_5
    const-string v4, "pref_camera_manual_exposure_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1978
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureCompensation()V

    .line 1979
    const/4 v2, 0x1

    goto :goto_0

    .line 1980
    :cond_6
    const-string v4, "pref_camera_metering_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1981
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersMetering()V

    .line 1982
    const/4 v2, 0x1

    goto :goto_0

    .line 1983
    :cond_7
    const-string v4, "pref_camera_wide_tele_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1986
    const-string v4, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1987
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureTimeAndISO()V

    .line 1988
    const/4 v2, 0x1

    goto :goto_0

    .line 1989
    :cond_8
    const-string v4, "pref_camera_manual_exposure_iso"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1990
    const/4 v2, 0x1

    .line 1991
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_exposure_iso"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1992
    .local v1, "isoValue":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f080407

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1993
    .local v0, "isISOAuto":Z
    if-eqz v0, :cond_9

    .line 1994
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mNeedResetManualIsoValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1996
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureTimeAndISO()V

    goto/16 :goto_0

    .line 1998
    .end local v0    # "isISOAuto":Z
    .end local v1    # "isoValue":Ljava/lang/String;
    :cond_a
    const-string v4, "pref_camera_zoom_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1999
    const/4 v2, 0x1

    .line 2000
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_zoom_key"

    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2001
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    .line 2002
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget v5, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    invoke-virtual {v4, v5}, Lcom/android/camera/ManualAbstractUI;->setZoom(F)V

    .line 2003
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateCameraParametersZoom()V

    goto/16 :goto_0

    .line 2018
    .end local v3    # "value":Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v4, :cond_2

    .line 2019
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mNeedResetManualIsoValue:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2020
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->resetAndApplyISOParameter()V

    .line 2021
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersExposureTimeAndISO()V

    .line 2023
    :cond_c
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto/16 :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1404
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1405
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    .line 1443
    :goto_0
    return-void

    .line 1409
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    if-eqz v1, :cond_2

    .line 1410
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore : mIsBurstInProgress"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1414
    :cond_2
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1417
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 1418
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1419
    iput-boolean v6, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 1422
    :cond_3
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1425
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1426
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1427
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1428
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 1431
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1432
    .local v0, "countDownDuration":I
    iput v0, p0, Lcom/android/camera/ManualModule;->mTimerDuration:I

    .line 1433
    if-lez v0, :cond_4

    .line 1435
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1436
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1437
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1438
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/ManualAbstractUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 1441
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1311
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1323
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1313
    if-nez p1, :cond_0

    .line 1314
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus:  mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsBurstInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1315
    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1318
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1319
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1320
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 1327
    iget-boolean v1, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonLongPressed : mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1330
    iget v1, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-ne v1, v5, :cond_0

    .line 1331
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1332
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Capabilities not support burst"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_shutter_control_boolean_key"

    .line 1337
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1338
    .local v0, "enableShutterControl":Z
    if-nez v0, :cond_3

    .line 1339
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "SettingsManager not enable ShutterControl"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1343
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1344
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010d

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 1350
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v1}, Lcom/android/camera/burst/BurstManager;->init()V

    .line 1351
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1352
    iput-boolean v5, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    .line 1353
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ManualModule;->mBurstAvailableSize:J

    .line 1354
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_5

    .line 1355
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateParametersSceneMode()V

    .line 1357
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->updateJpegRotation()V

    .line 1358
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/ManualModule;->mJpegRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1359
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v1, :cond_6

    .line 1360
    sget-object v1, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onShutterUp in focus mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1361
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1363
    :cond_6
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndStartBurst(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    goto/16 :goto_0

    .line 1345
    :cond_7
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1346
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010c

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto/16 :goto_1
.end method

.method public onShutterButtonSwiped(I)V
    .locals 7
    .param p1, "swiped"    # I

    .prologue
    .line 1371
    iget-boolean v4, p0, Lcom/android/camera/ManualModule;->mIsProModeEnabled:Z

    if-nez v4, :cond_1

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1373
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 1374
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 1375
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 1378
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v4}, Lcom/android/camera/ManualAbstractUI;->getEditableMode()Z

    move-result v0

    .line 1379
    .local v0, "isEditableMode":Z
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 1380
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    .line 1382
    .local v3, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_exposure_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_exposure_iso"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_manual_focus_mode"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_whitebalance_mode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_zoom_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    .end local v3    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_2
    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/ManualAbstractUI;->setEditableMode(ZZ)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1305
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 1306
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1736
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return-void

    .line 1741
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1745
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->foldAllOptions()V

    .line 1746
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v2, v2}, Lcom/android/camera/ManualAbstractUI;->setEditableMode(ZZ)V

    .line 1751
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mInProEditMode:Z

    .line 1753
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 2571
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2593
    :cond_0
    :goto_0
    return-void

    .line 2574
    :cond_1
    iput p1, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    .line 2575
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2591
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2592
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1603
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "pause"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1604
    iput-boolean v5, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    .line 1606
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1607
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1612
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1613
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1617
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eqz v3, :cond_0

    .line 1618
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1624
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->stopPreview()V

    .line 1625
    invoke-direct {p0, v5}, Lcom/android/camera/ManualModule;->cancelCountDown(Z)V

    .line 1627
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v3, :cond_1

    .line 1628
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1629
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1632
    :cond_1
    iput-object v7, p0, Lcom/android/camera/ManualModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1635
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1637
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v3, :cond_2

    .line 1638
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v4}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 1639
    iput-object v7, p0, Lcom/android/camera/ManualModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1642
    :cond_2
    iget v3, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    .line 1643
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->abortCapture()V

    .line 1644
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v3}, Lcom/android/camera/burst/BurstManager;->stop()V

    .line 1645
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v3, v4, :cond_3

    .line 1646
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v3, v5}, Lcom/android/camera/ManualAbstractUI;->setSwipingEnabled(Z)V

    .line 1648
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1651
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v3, :cond_5

    .line 1652
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v3}, Lcom/android/camera/burst/BurstManager;->release()V

    .line 1654
    :cond_5
    iput-boolean v6, p0, Lcom/android/camera/ManualModule;->mIsBurstInProgress:Z

    .line 1656
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->resetCameraManualParameter()V

    .line 1657
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->closeCamera()V

    .line 1660
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isSupportWideTele()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1661
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v0

    .line 1662
    .local v0, "id":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1663
    .local v1, "sId":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v6

    iget v4, p0, Lcom/android/camera/ManualModule;->mFrontCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-direct {p0, v1, v3}, Lcom/android/camera/ManualModule;->resetCameraDefaultId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1664
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1665
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1669
    .end local v0    # "id":I
    .end local v1    # "sId":Ljava/lang/String;
    :cond_6
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1670
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v3}, Lcom/android/camera/ManualAbstractUI;->onPause()V

    .line 1672
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/camera/ManualModule;->mPendingSwitchCameraId:I

    .line 1673
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_7

    .line 1674
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1675
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v3, v7}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1677
    :cond_7
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1678
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1679
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1681
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1682
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v2, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1683
    return-void
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1488
    iput-boolean v7, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    .line 1490
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v3, :cond_0

    .line 1491
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v4, 0x7f07001b

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1492
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v4, 0x7f07001c

    invoke-virtual {v3, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1495
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_1

    .line 1499
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1501
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1503
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1504
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_2

    .line 1554
    :goto_0
    return-void

    .line 1510
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isSupportWideTele()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1511
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_wide_tele_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1512
    .local v1, "id":I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1513
    .local v2, "sId":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v7

    iget v4, p0, Lcom/android/camera/ManualModule;->mFrontCameraId:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ManualModule;->resetCameraDefaultId(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1514
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1515
    invoke-interface {v0}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1516
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    .end local v1    # "id":I
    .end local v2    # "sId":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->requestCameraOpen()V

    .line 1523
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/ManualModule;->mJpegPictureCallbackTime:J

    .line 1524
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->getInitializedZoomValue()F

    move-result v3

    iput v3, p0, Lcom/android/camera/ManualModule;->mZoomValue:F

    .line 1526
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ManualModule;->mOnResumeTime:J

    .line 1527
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->checkDisplayRotation()V

    .line 1531
    iget-boolean v3, p0, Lcom/android/camera/ManualModule;->mFirstTimeInitialized:Z

    if-nez v3, :cond_4

    .line 1532
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1541
    :goto_1
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_front_camera_mirror_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/ManualModule;->mFrontCameraMirrorEnabled:Z

    .line 1550
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v3}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1552
    invoke-virtual {p0}, Lcom/android/camera/ManualModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v3

    invoke-interface {v3, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1553
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    goto/16 :goto_0

    .line 1534
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2612
    iput-object p1, p0, Lcom/android/camera/ManualModule;->mDebugUri:Landroid/net/Uri;

    .line 2613
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 2500
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 2501
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 2502
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2503
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2504
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2505
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_manual_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2509
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 2507
    :cond_0
    sget-object v3, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1214
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/ManualModule;->setCameraParameters(I)V

    .line 1215
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2748
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ManualAbstractUI;->setOrientation(IZ)V

    .line 2749
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 752
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 756
    iput-boolean v3, p0, Lcom/android/camera/ManualModule;->mFaceDetectionStarted:Z

    .line 757
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget v1, p0, Lcom/android/camera/ManualModule;->mDisplayOrientation:I

    invoke-direct {p0}, Lcom/android/camera/ManualModule;->isCameraFrontFacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ManualAbstractUI;->onStartFaceDetection(IZ)V

    .line 758
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 759
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualAbstractUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 760
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 761
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 762
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 519
    return-void
.end method

.method public startReceivedMetadataCallback()V
    .locals 3

    .prologue
    .line 2642
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2700
    :cond_0
    :goto_0
    return-void

    .line 2643
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mReceivedMetadataStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ManualModule;->mReceivedMetadataStarted:Z

    .line 2649
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-nez v0, :cond_2

    .line 2650
    new-instance v0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    new-instance v1, Lcom/android/camera/ManualModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualModule$13;-><init>(Lcom/android/camera/ManualModule;)V

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2698
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 768
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 781
    :cond_0
    :goto_0
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 772
    iput-boolean v2, p0, Lcom/android/camera/ManualModule;->mFaceDetectionStarted:Z

    .line 773
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 774
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 775
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 776
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualAbstractUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 777
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->clearFaces()V

    .line 778
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mUI:Lcom/android/camera/ManualAbstractUI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractUI;->onStopFaceDetection()V

    .line 779
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1955
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ManualModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1956
    sget-object v0, Lcom/android/camera/ManualModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1957
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1959
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/ManualModule;->setCameraState(I)V

    .line 1960
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1961
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1963
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1964
    return-void
.end method

.method public stopReceivedMetadataCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2703
    iget-boolean v0, p0, Lcom/android/camera/ManualModule;->mReceivedMetadataStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2722
    :cond_0
    :goto_0
    return-void

    .line 2707
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2708
    iput-boolean v3, p0, Lcom/android/camera/ManualModule;->mReceivedMetadataStarted:Z

    .line 2709
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-eqz v0, :cond_2

    .line 2710
    iput-object v2, p0, Lcom/android/camera/ManualModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2712
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/ManualModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    .line 2714
    iget-object v1, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2715
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2716
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2720
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2718
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

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
    .line 1703
    iget v0, p0, Lcom/android/camera/ManualModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1704
    invoke-direct {p0}, Lcom/android/camera/ManualModule;->setDisplayOrientation()V

    .line 1706
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 700
    iget-object v0, p0, Lcom/android/camera/ManualModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 701
    return-void
.end method
