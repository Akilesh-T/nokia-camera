.class public Lcom/android/camera/PhotoModule;
.super Lcom/android/camera/CameraModule;
.source "PhotoModule.java"

# interfaces
.implements Lcom/android/camera/PhotoController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PhotoModule$NamedImages;,
        Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PhotoModule$AddThumbnailBundle;,
        Lcom/android/camera/PhotoModule$ResizeBundle;,
        Lcom/android/camera/PhotoModule$PostPreviewFrameCallback;,
        Lcom/android/camera/PhotoModule$PosRawPictureCallback;,
        Lcom/android/camera/PhotoModule$PosPostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$SavePictureCallback;,
        Lcom/android/camera/PhotoModule$RawPictureCallback;,
        Lcom/android/camera/PhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;,
        Lcom/android/camera/PhotoModule$PictureCallbackFactory;,
        Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;,
        Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;,
        Lcom/android/camera/PhotoModule$Memento;,
        Lcom/android/camera/PhotoModule$ShutterCallback;,
        Lcom/android/camera/PhotoModule$MainHandler;,
        Lcom/android/camera/PhotoModule$MediaSaveListener;
    }
.end annotation


# static fields
.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private final mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

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

.field private final mCancelCallback:Landroid/view/View$OnClickListener;

.field private final mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

.field private mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field private mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContinuousFocusSupported:Z

.field private mCountdownSoundLoaded:Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mCropValue:Ljava/lang/String;

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

.field private mDoResumeDelayTask:Ljava/lang/Runnable;

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private final mDoneCallback:Landroid/view/View$OnClickListener;

.field private mDontResetIntentUiOnResume:Z

.field private mDumpJpegForArcsoft:Z

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFlashModeBeforeSceneMode:Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mFocusStartTime:J

.field private mFrontCameraMirrorEnabled:Z

.field public mFrontFlashTriggered:Z

.field private mGcamModeIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHasSettedIntentUi:Z

.field private final mHdrPlusCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsBurstInProgress:Z

.field private mIsHDROff:Z

.field private mIsImageCaptureIntent:Z

.field private mIsVideoCaptureIntent:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaActionSoundLoaded:Z

.field private mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private mOnResumeTime:J

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mPictureSizes:Lcom/android/camera/util/Size;

.field private final mPostHandler:Landroid/os/Handler;

.field private final mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedMetadataStarted:Z

.field private final mRetakeCallback:Landroid/view/View$OnClickListener;

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShouldResizeTo16x9:Z

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field private mShutterSoundEnabled:Z

.field public mShutterToPictureDisplayedTime:J

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mSnapshotOnIdle:Z

.field private mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mTimerDuration:I

.field private mUI:Lcom/android/camera/PhotoUI;

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

.field private mWarmUpPreview:Z

.field private mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PhotoModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 6
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 590
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 167
    iput v5, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 176
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    .line 190
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mReceivedMetadataStarted:Z

    .line 192
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 205
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mMediaActionSoundLoaded:Z

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mShutterSoundEnabled:Z

    .line 208
    new-instance v0, Lcom/android/camera/PhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$1;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 215
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsHDROff:Z

    .line 233
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFrontCameraMirrorEnabled:Z

    .line 234
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mWatermarkEnabled:Z

    .line 238
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCompassTagEnabled:Z

    .line 239
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    .line 241
    iput v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 242
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 247
    new-instance v0, Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    .line 249
    new-instance v0, Lcom/android/camera/PhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    .line 251
    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    .line 253
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 258
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-direct {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    .line 259
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 260
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 261
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    .line 263
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 264
    new-instance v0, Lcom/android/camera/PhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$2;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 300
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    .line 301
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mBurstAvailableSize:J

    .line 302
    new-instance v0, Lcom/android/camera/PhotoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$3;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    .line 394
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mFrontFlashTriggered:Z

    .line 399
    iput v5, p0, Lcom/android/camera/PhotoModule;->mGcamModeIndex:I

    .line 401
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    .line 407
    new-instance v0, Lcom/android/camera/PhotoModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$MainHandler;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    .line 411
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPostHandler:Landroid/os/Handler;

    .line 421
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 495
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mShouldResizeTo16x9:Z

    .line 795
    new-instance v0, Lcom/android/camera/PhotoModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$7;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 849
    new-instance v0, Lcom/android/camera/PhotoModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$8;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHdrPlusCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 887
    new-instance v0, Lcom/android/camera/PhotoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$9;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCancelCallback:Landroid/view/View$OnClickListener;

    .line 894
    new-instance v0, Lcom/android/camera/PhotoModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$10;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDoneCallback:Landroid/view/View$OnClickListener;

    .line 901
    new-instance v0, Lcom/android/camera/PhotoModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$11;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mRetakeCallback:Landroid/view/View$OnClickListener;

    .line 2327
    new-instance v0, Lcom/android/camera/PhotoModule$14;

    invoke-direct {v0, p0}, Lcom/android/camera/PhotoModule$14;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    .line 2984
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 591
    return-void

    :cond_0
    move-object v0, v1

    .line 253
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method static synthetic access$10200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsHDROff:Z

    return v0
.end method

.method static synthetic access$10300(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/burst/BurstManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/ui/TouchCoordinate;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/PhotoModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mBurstAvailableSize:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mBurstAvailableSize:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/camera/PhotoModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/PhotoModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCompassTagEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onError()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchToGcamCapture()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/camera/PhotoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersSceneMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersZslMode()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneMode()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3702(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$400()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PhotoModule;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/camera/PhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMediaActionSoundLoaded:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mMediaActionSoundLoaded:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CaptureIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/PhotoModule;Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->isPostProcessing(Lcom/android/ex/camera2/portability/CaptureIntent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFrontCameraMirrorEnabled:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mFrontCameraMirrorEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$5100(Lcom/android/camera/PhotoModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/PhotoModule$ResizeBundle;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->cropJpegDataToAspectRatio(Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$6302(Lcom/android/camera/PhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    return-object p1
.end method

.method static synthetic access$6400(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/PhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$PostViewPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PhotoModule$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWatermarkEnabled:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/camera/PhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPostHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/android/camera/PhotoModule;)Lcom/android/camera/PhotoModule$RawPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallback:Lcom/android/camera/PhotoModule$RawPictureCallback;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8602(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8700(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8702(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8800(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$8802(Lcom/android/camera/PhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 125
    iput-wide p1, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$8902(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$9000(Lcom/android/camera/PhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$9002(Lcom/android/camera/PhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/camera/PhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$9200(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$9202(Lcom/android/camera/PhotoModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$9300(Lcom/android/camera/PhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$9400(Lcom/android/camera/PhotoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/android/camera/PhotoModule;->doCapture(Z)V

    return-void
.end method

.method static synthetic access$9502(Lcom/android/camera/PhotoModule;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$9600(Lcom/android/camera/PhotoModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/camera/PhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 1072
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PhotoModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$13;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 1079
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 2322
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 2323
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->animateFlash()V

    .line 2325
    :cond_0
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 3219
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3220
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3219
    :goto_0
    return v0

    .line 3220
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 639
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->cancelCountDown()V

    .line 642
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 643
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 644
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 645
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 647
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 649
    :cond_0
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 514
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 516
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$4;-><init>(Lcom/android/camera/PhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 3408
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 3427
    :goto_0
    return v0

    .line 3412
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 3413
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview: camera device not ready yet."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 3423
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v1, :cond_2

    .line 3424
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview: parameters for preview is not ready."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 3427
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 3356
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 3357
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 3358
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopReceivedMetadataCallback()V

    .line 3359
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 3360
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 3361
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "releaseCamera"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 3362
    .local v0, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 3363
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3364
    const/4 v0, 0x0

    .line 3365
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 3366
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3367
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 3368
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 3370
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    if-eqz v1, :cond_1

    .line 3371
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    .line 3372
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v1, :cond_1

    .line 3373
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3374
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3378
    .end local v0    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :cond_1
    return-void
.end method

.method private createMemento(Landroid/location/Location;Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;)Lcom/android/camera/PhotoModule$Memento;
    .locals 7
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "pictureCallbackFactory"    # Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    .prologue
    const/4 v6, 0x0

    .line 1666
    new-instance v0, Lcom/android/camera/PhotoModule$Memento;

    invoke-direct {v0, p0, v6}, Lcom/android/camera/PhotoModule$Memento;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    .line 1668
    .local v0, "memento":Lcom/android/camera/PhotoModule$Memento;
    invoke-static {v0, p1}, Lcom/android/camera/PhotoModule$Memento;->access$6202(Lcom/android/camera/PhotoModule$Memento;Landroid/location/Location;)Landroid/location/Location;

    .line 1669
    invoke-static {v0, p2}, Lcom/android/camera/PhotoModule$Memento;->access$6602(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;)Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    .line 1671
    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$4802(Lcom/android/camera/PhotoModule$Memento;I)I

    .line 1672
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$6702(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 1673
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$4302(Lcom/android/camera/PhotoModule$Memento;I)I

    .line 1674
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$6802(Lcom/android/camera/PhotoModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 1675
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$4402(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1676
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$6902(Lcom/android/camera/PhotoModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1677
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7002(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1678
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mShouldResizeTo16x9:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7102(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1679
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7202(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 1680
    iget-wide v2, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule$Memento;->access$7302(Lcom/android/camera/PhotoModule$Memento;J)J

    .line 1681
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCompassTagEnabled:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7402(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1682
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7502(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1683
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$4202(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1684
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFrontFlashTriggered:Z

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7602(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1686
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v4, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1687
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->getNextNameEntity()Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;

    move-result-object v1

    .line 1688
    .local v1, "nameEntity":Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;
    iget-object v2, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$4902(Lcom/android/camera/PhotoModule$Memento;Ljava/lang/String;)Ljava/lang/String;

    .line 1689
    iget-wide v2, v1, Lcom/android/camera/PhotoModule$NamedImages$NamedEntity;->date:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/PhotoModule$Memento;->access$6102(Lcom/android/camera/PhotoModule$Memento;J)J

    .line 1691
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$7702(Lcom/android/camera/PhotoModule$Memento;Z)Z

    .line 1693
    new-instance v2, Lcom/android/camera/PhotoModule$MediaSaveListener;

    invoke-direct {v2, p0, v6}, Lcom/android/camera/PhotoModule$MediaSaveListener;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    invoke-static {v0, v2}, Lcom/android/camera/PhotoModule$Memento;->access$6002(Lcom/android/camera/PhotoModule$Memento;Lcom/android/camera/PhotoModule$MediaSaveListener;)Lcom/android/camera/PhotoModule$MediaSaveListener;

    .line 1694
    return-object v0
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/PhotoModule$ResizeBundle;)Lcom/android/camera/PhotoModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/PhotoModule$ResizeBundle;

    .prologue
    .line 2070
    iget-object v1, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->jpegData:[B

    .line 2071
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 2072
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->targetAspectRatio:F

    .line 2074
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2075
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 2076
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 2080
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 2081
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 2082
    .local v2, "newHeight":I
    move v3, v6

    .line 2087
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 2088
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 2090
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 2102
    :cond_0
    :goto_1
    return-object p1

    .line 2084
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 2085
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 2094
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2095
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 2096
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 2098
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2100
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2101
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/PhotoModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private doCapture(Z)V
    .locals 24
    .param p1, "animateBefore"    # Z

    .prologue
    .line 2373
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "doCapture"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2374
    if-eqz p1, :cond_0

    .line 2375
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->animateAfterShutter()V

    .line 2377
    :cond_0
    invoke-static {}, Lcom/android/ex/camera2/utils/PlatformUtil;->getPlatform()Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    move-result-object v3

    sget-object v4, Lcom/android/ex/camera2/utils/PlatformUtil$Platform;->MTK:Lcom/android/ex/camera2/utils/PlatformUtil$Platform;

    if-ne v3, v4, :cond_1

    .line 2378
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->stopFaceDetection()V

    .line 2380
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v22

    .line 2381
    .local v22, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, v22

    invoke-static {v3, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 2383
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDumpJpegForArcsoft = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2384
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    if-eqz v3, :cond_5

    .line 2385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 2386
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    .line 2393
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 2394
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSceneMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2395
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastCaptureIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2397
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/PhotoModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 2398
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureMetering:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PhotoModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v3, v4, :cond_2

    .line 2401
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->setAfAeAwbLock()V

    .line 2404
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->updateJpegRotation()V

    .line 2405
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/camera/PhotoModule;->setFrontCameraMirror(I)V

    .line 2406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 2407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v3, :cond_3

    .line 2408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v4, "setJpegOrientation"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2411
    :cond_3
    const/16 v19, -0x1

    .line 2412
    .local v19, "isoValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v4

    .line 2413
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 2414
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2415
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isoValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2422
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->getPictureCallbackFactory()Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;

    move-result-object v23

    .line 2423
    .local v23, "picCbFactory":Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/camera/PhotoModule;->createMemento(Landroid/location/Location;Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;)Lcom/android/camera/PhotoModule$Memento;

    move-result-object v7

    .line 2425
    .local v7, "memento":Lcom/android/camera/PhotoModule$Memento;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->getHandler()Landroid/os/Handler;

    move-result-object v10

    new-instance v3, Lcom/android/camera/PhotoModule$ShutterCallback;

    if-nez p1, :cond_7

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2426
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/PhotoModule;->needFakeShutterSound(Lcom/android/ex/camera2/portability/CaptureIntent;)Z

    move-result v6

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->IsUsePostProcess()Z

    move-result v8

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/camera/PhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PhotoModule;ZZLcom/android/camera/PhotoModule$Memento;Z)V

    .line 2427
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->getRawPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v12

    .line 2428
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->getPostViewPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v13

    .line 2429
    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->getJpegPictureCallback(Lcom/android/camera/PhotoModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PhotoModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    move/from16 v17, v0

    .line 2430
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;->IsUsePostProcess()Z

    move-result v18

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v20

    const/16 v21, 0x0

    move-object v8, v11

    move-object v11, v3

    .line 2425
    invoke-virtual/range {v8 .. v21}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V

    .line 2431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v3, :cond_4

    .line 2432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v4, "applySettingsAndTakePicture"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2434
    :cond_4
    return-void

    .line 2388
    .end local v7    # "memento":Lcom/android/camera/PhotoModule$Memento;
    .end local v19    # "isoValue":I
    .end local v23    # "picCbFactory":Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v3, v4, :cond_6

    .line 2389
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v4, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    goto/16 :goto_0

    .line 2391
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    goto/16 :goto_0

    .line 2414
    .restart local v19    # "isoValue":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2425
    .restart local v7    # "memento":Lcom/android/camera/PhotoModule$Memento;
    .restart local v23    # "picCbFactory":Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    :cond_7
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private focusAndCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2864
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_0

    .line 2865
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 2867
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2873
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2874
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    .line 2875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 2882
    :cond_2
    :goto_0
    return-void

    .line 2880
    :cond_3
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 2881
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private getPictureCallbackFactory()Lcom/android/camera/PhotoModule$PictureCallbackFactoryBase;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1708
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 1710
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_1

    .line 1714
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWatermarkEnabled:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;Z)V

    .line 1718
    :goto_0
    return-object v0

    .line 1710
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne v0, v1, :cond_2

    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->DENOISE:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mLastCaptureIntent:Lcom/android/ex/camera2/portability/CaptureIntent;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-eq v0, v1, :cond_0

    .line 1718
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWatermarkEnabled:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PhotoModule$WaterMarkPictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;Z)V

    goto :goto_0

    .line 1714
    :cond_4
    new-instance v0, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PhotoModule$PostPictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    goto :goto_0

    .line 1718
    :cond_5
    new-instance v0, Lcom/android/camera/PhotoModule$PictureCallbackFactory;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PhotoModule$PictureCallbackFactory;-><init>(Lcom/android/camera/PhotoModule;Lcom/android/camera/PhotoModule$1;)V

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 4083
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 4084
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    .line 4085
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    .line 4086
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    .line 4087
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    .line 4088
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 4089
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    .line 4090
    return-void
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 658
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDontResetIntentUiOnResume:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mHasSettedIntentUi:Z

    if-nez v0, :cond_1

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 660
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupCaptureParams()V

    .line 662
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mDontResetIntentUiOnResume:Z

    .line 664
    :cond_2
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1034
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->initializeFirstTime()V

    .line 1038
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1040
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1041
    new-instance v0, Lcom/android/camera/burst/BurstManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/android/camera/burst/BurstManager;-><init>(Lcom/android/camera/CameraActivity;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->addIdleHandler()V

    .line 1046
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 3002
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3003
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 3026
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 3027
    return-void

    .line 3005
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 3006
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 3008
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3010
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 3011
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 3012
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 3013
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 3014
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3011
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3017
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3019
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 3020
    invoke-virtual {v4}, Lcom/android/camera/PhotoUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 3021
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 3022
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 3023
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 1052
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1053
    new-instance v1, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v1}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1055
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 1056
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    if-nez v1, :cond_0

    .line 1057
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1058
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1059
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    .line 1063
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v1, :cond_1

    .line 1064
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v1}, Lcom/android/camera/burst/BurstManager;->prepareBurstSound()V

    .line 1067
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v4}, Lcom/android/camera/PhotoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v4

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v4, v5, :cond_2

    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/camera/PhotoUI;->initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V

    .line 1068
    return-void

    .line 1067
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 2990
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 2991
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 2990
    return v0
.end method

.method private isPostProcessing(Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p1, "capture"    # Lcom/android/ex/camera2/portability/CaptureIntent;

    .prologue
    .line 1293
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
    .line 3033
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3034
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 3035
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3034
    :goto_0
    return v1

    .line 3035
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 4066
    const-string v0, "android.media.action.VIDEO_CAPTURE"

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4067
    const/4 v0, 0x1

    .line 4069
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needFakeShutterSound(Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 4356
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->openCameraCommon()V

    .line 727
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeControlByIntent()V

    .line 728
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 493
    return-void
.end method

.method private onPreviewStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 667
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 670
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 675
    iput-object v3, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 677
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 678
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 679
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 680
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->resumeFaceDetection()V

    .line 682
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 683
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startFaceDetection()V

    .line 684
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->startReceivedMetadataCallback()V

    .line 685
    return-void
.end method

.method private openCameraCommon()V
    .locals 6

    .prologue
    .line 1002
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v1

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-ne v1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/camera/PhotoUI;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;Z)V

    .line 1003
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_0

    .line 1005
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1006
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "default_scope"

    const-string v2, "pref_camera_hdr_plus_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    return-void

    .line 1002
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 2501
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 2502
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2503
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2504
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 2505
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2506
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2511
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 2509
    :cond_0
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 782
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 783
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "PhotoModule.OpenCameraAndPreview"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 784
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 789
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 788
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 787
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 790
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "requestCamera"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 793
    :cond_1
    return-void
.end method

.method private resetCameraParameter()V
    .locals 2

    .prologue
    .line 4370
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_1

    .line 4373
    :cond_0
    :goto_0
    return-void

    .line 4371
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    .line 4372
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 3

    .prologue
    .line 1017
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1018
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-nez v0, :cond_0

    .line 1019
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Settings manager is null!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 4151
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 4152
    const/4 v1, 0x0

    .line 4154
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 4155
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 4156
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4160
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 4163
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 4157
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 4158
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4160
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
    .line 2437
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2447
    :cond_0
    :goto_0
    return-void

    .line 2439
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2440
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 2441
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2443
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2444
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2445
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 2446
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    goto :goto_0
.end method

.method private setAutoExposureLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3648
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 3649
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 3651
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3655
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 3656
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 3658
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 4013
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 4014
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersInitialize()V

    .line 4017
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 4018
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 4021
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 4022
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersPreference()V

    .line 4025
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    .line 4026
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 4028
    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 4033
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 4034
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 4037
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    .line 4048
    :cond_0
    :goto_0
    return-void

    .line 4039
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4040
    iget v0, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 4041
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateSceneMode()V

    .line 4042
    iput v1, p0, Lcom/android/camera/PhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 4044
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4045
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2305
    iput p1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    .line 2306
    packed-switch p1, :pswitch_data_0

    .line 2316
    :pswitch_0
    return-void

    .line 2306
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
    .line 3381
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    .line 3382
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3383
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 3384
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    .line 3385
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/PhotoUI;->setDisplayOrientation(I)V

    .line 3386
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 3387
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 3390
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 3391
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 3393
    :cond_1
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3395
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 3661
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3662
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 3664
    :cond_0
    return-void
.end method

.method private setFrontCameraMirror(I)V
    .locals 3
    .param p1, "jpegOrientation"    # I

    .prologue
    .line 2450
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FRONT_CAMERA_MIRROR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFrontCameraMirrorEnabled:Z

    if-eqz v1, :cond_0

    .line 2451
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2456
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCharacteristics()Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v0

    .line 2457
    .local v0, "cameraOrientation":I
    const/16 v1, 0x10e

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5a

    if-ne v0, v1, :cond_0

    .line 2459
    :cond_2
    if-eqz p1, :cond_3

    const/16 v1, 0xb4

    if-ne p1, v1, :cond_4

    .line 2460
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_H:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0

    .line 2462
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->FLIP_V:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    goto :goto_0
.end method

.method private setMeteringAreasIfSupported()V
    .locals 3

    .prologue
    .line 3667
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 3668
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 3671
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3672
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 3677
    :goto_0
    return-void

    .line 3674
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v0

    .line 3675
    .local v0, "defaultMode":Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 4074
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4075
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 4076
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    .line 4077
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    .line 4079
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mHasSettedIntentUi:Z

    .line 4080
    return-void
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 3399
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3400
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 3401
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 3402
    return-void
.end method

.method private startPreview()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3434
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 3435
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "attempted to start preview before camera device"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3514
    :cond_0
    :goto_0
    return-void

    .line 3440
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkPreviewPreconditions()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3444
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3448
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v2, v3, :cond_2

    .line 3450
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 3452
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v4}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 3458
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersPictureSize()V

    .line 3460
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 3461
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_3

    .line 3462
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "setCameraParameters done"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3466
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 3467
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_6

    .line 3468
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    .line 3469
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .end local v0    # "st":Landroid/graphics/SurfaceTexture;
    invoke-direct {v0, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 3470
    .restart local v0    # "st":Landroid/graphics/SurfaceTexture;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 3471
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3477
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 3478
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_4

    .line 3479
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "setPreviewTexture done"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3482
    :cond_4
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3485
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_5

    .line 3486
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "startPreview"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3488
    :cond_5
    new-instance v1, Lcom/android/camera/PhotoModule$16;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$16;-><init>(Lcom/android/camera/PhotoModule;)V

    .line 3507
    .local v1, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3508
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 3509
    invoke-interface {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto/16 :goto_0

    .line 3473
    .end local v1    # "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    :cond_6
    iput-boolean v4, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    goto :goto_1

    .line 3511
    .restart local v1    # "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    :cond_7
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 731
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "switchCamera"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelCountDown()V

    .line 739
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->resetPreviewOverlay()V

    .line 740
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 742
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 746
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "freezeScreenUntilPreviewReady"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 750
    :cond_3
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start to switch camera. id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_4

    .line 752
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 754
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 755
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_5

    .line 756
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "closeCamera"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 759
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_6

    .line 760
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 762
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->requestCameraOpen()V

    .line 763
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_7

    .line 764
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "requestCameraOpen"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 766
    :cond_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 767
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_8

    .line 768
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 771
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    .line 772
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mMirror:Z

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    goto/16 :goto_0
.end method

.method private switchToGcamCapture()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 559
    iget v2, p0, Lcom/android/camera/PhotoModule;->mGcamModeIndex:I

    if-ne v2, v4, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    .line 561
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/PhotoModule;->mGcamModeIndex:I

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mGcamModeIndex:I

    if-eq v2, v4, :cond_1

    .line 564
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 565
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 572
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 574
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v6}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 576
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 580
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/PhotoModule;->mGcamModeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 582
    invoke-virtual {v0, v6}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 584
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_1
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3979
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 3989
    :goto_0
    return-void

    .line 3982
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 3984
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 3987
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3615
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 3616
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 3617
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    aget v3, v0, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 3620
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 3622
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3623
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 3626
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3627
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 3630
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3631
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 3634
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CUS_MAX_PREVIEW_RATE_SET:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3635
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCusPreviewMaxFPSEnable(Z)V

    .line 3637
    :cond_4
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 3682
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 3727
    :cond_0
    :goto_0
    return-void

    .line 3686
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoExposureLockIfSupported()V

    .line 3687
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 3688
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setFocusAreasIfSupported()V

    .line 3689
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setMeteringAreasIfSupported()V

    .line 3692
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 3693
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3694
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 3695
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3696
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 3695
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 3701
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersPictureQuality()V

    .line 3707
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersExposureCompensation()V

    .line 3710
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersSceneMode()V

    .line 3713
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersZslMode()V

    .line 3716
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersLongShot()V

    .line 3719
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersCDS()V

    .line 3722
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersTouchAfAec()V

    .line 3724
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 3725
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 3696
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3642
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 3644
    :cond_0
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 4340
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 4353
    :goto_0
    return-void

    .line 4345
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 4346
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 4347
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 4348
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 4349
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 4351
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    .line 4352
    sget-object v4, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParametersAutoHDRMode()V
    .locals 3

    .prologue
    .line 3798
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 3799
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v0, :cond_0

    .line 3800
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3801
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrAuto(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableAutoHDR(Z)V

    .line 3804
    :cond_0
    return-void
.end method

.method private updateParametersCDS()V
    .locals 2

    .prologue
    .line 3762
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3763
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setCDSEnabled(Z)V

    .line 3765
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 3874
    const/4 v0, 0x0

    .line 3875
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3876
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 3877
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 3878
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 3879
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 3880
    move v0, v3

    .line 3885
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 3886
    return-void

    .line 3882
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3938
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 3940
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3942
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v2, v5, :cond_0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v5, :cond_1

    .line 3944
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 3945
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 3949
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3950
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 3951
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3952
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v3

    .line 3953
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3954
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3955
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "unlock flash Required"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3957
    :cond_2
    monitor-exit v3

    .line 3975
    :goto_0
    return-void

    .line 3957
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 3959
    :cond_3
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 3960
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3961
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3962
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v3, v4

    .line 3960
    :cond_5
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3963
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3964
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 3967
    :cond_6
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 3968
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 3969
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3970
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 3971
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_7
    move v2, v4

    .line 3969
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3972
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3973
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 3967
    :cond_8
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_1

    :cond_9
    move v2, v3

    .line 3971
    goto :goto_2
.end method

.method private updateParametersLongShot()V
    .locals 2

    .prologue
    .line 3753
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3754
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableLongShot(Z)V

    .line 3756
    :cond_0
    return-void
.end method

.method private updateParametersPictureQuality()V
    .locals 4

    .prologue
    .line 3867
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 3869
    .local v0, "jpegQuality":I
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Jpeg Encoding Quality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3870
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 3871
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 10

    .prologue
    .line 3812
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v6, :cond_0

    .line 3813
    sget-object v6, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "attempting to set picture size without caemra device"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3864
    :goto_0
    return-void

    .line 3817
    :cond_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 3818
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 3819
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v7

    .line 3818
    invoke-static {v6, v7, v5}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 3822
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 3825
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 3826
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v7

    .line 3825
    invoke-virtual {v6, v7, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3833
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v7}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 3834
    sget-object v6, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Photo size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3836
    sget-boolean v6, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v6, :cond_1

    .line 3837
    const-string v6, "1836x3264"

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3838
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mShouldResizeTo16x9:Z

    .line 3846
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 3847
    .local v4, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;

    .line 3848
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mPictureSizes:Lcom/android/camera/util/Size;

    invoke-virtual {v8}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v6, v8

    .line 3847
    invoke-static {v4, v6, v7}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 3849
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 3850
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v2, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3851
    sget-object v6, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3852
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 3854
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 3855
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3858
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v6

    if-eqz v6, :cond_3

    .line 3859
    sget-object v6, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v7, "updating aspect ratio"

    invoke-static {v6, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3860
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-float v7, v7

    .line 3861
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 3860
    invoke-virtual {v6, v7}, Lcom/android/camera/PhotoUI;->updatePreviewAspectRatio(F)V

    .line 3863
    :cond_3
    sget-object v6, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3822
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v4    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_1

    .line 3828
    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v1

    .line 3829
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 3840
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    :cond_5
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_2
.end method

.method private updateParametersSceneMode()V
    .locals 5

    .prologue
    .line 3890
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-eqz v2, :cond_2

    .line 3891
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3910
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSceneMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3912
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3913
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v2, v3, :cond_1

    .line 3914
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 3919
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 3920
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3929
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersFlashMode()V

    .line 3932
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 3933
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3934
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    .line 3933
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 3935
    return-void

    .line 3894
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v1

    .line 3895
    .local v1, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 3897
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USE_VENDOR_HDR = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3898
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_4

    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 3899
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_scenemode_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->sceneModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3901
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3902
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3903
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3906
    :cond_3
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v2, :cond_0

    .line 3907
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersAutoHDRMode()V

    goto/16 :goto_0

    .line 3899
    :cond_4
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_2

    .line 3923
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    .end local v1    # "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    :cond_5
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 3924
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v2, :cond_1

    .line 3925
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto/16 :goto_1
.end method

.method private updateParametersShutterSound()V
    .locals 5

    .prologue
    .line 3780
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 3792
    :cond_0
    :goto_0
    return-void

    .line 3781
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_0

    .line 3782
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v2, :cond_0

    .line 3783
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 3784
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v1, :cond_0

    .line 3785
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-interface {v2, v3}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 3786
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3787
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_shutter_sound_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mShutterSoundEnabled:Z

    .line 3789
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mShutterSoundEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 3771
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 3774
    :cond_0
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 5

    .prologue
    .line 3733
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v2}, Lcom/android/camera/PhotoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v0

    .line 3734
    .local v0, "enableZSL":Z
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3735
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 3736
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3741
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3742
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 3743
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 3744
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_0

    .line 3745
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusOverlayManager;->setIsUseZSL(Z)V

    .line 3747
    :cond_0
    return-void

    .line 3739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSceneMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2481
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v1, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return-void

    .line 2486
    :cond_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_2

    .line 2487
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2488
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2489
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0

    .line 2492
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_2
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v1, v2, :cond_0

    .line 2494
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-direct {p0, v1, v3}, Lcom/android/camera/PhotoModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 2477
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

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
    .line 3225
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 3236
    :goto_0
    return-void

    .line 3228
    :cond_0
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PhotoModule;->mFocusStartTime:J

    .line 3230
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAutoFocusCallback:Lcom/android/camera/PhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 3231
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 3232
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "autoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3234
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 3235
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 3

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 3251
    :goto_0
    return-void

    .line 3243
    :cond_0
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "before cancelAutoFocus - mCameraState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3244
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 3245
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 3246
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "cancelAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3248
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3249
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after cancelAutoFocus - mCameraState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3250
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    goto :goto_0

    .line 3248
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 2341
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2344
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v0

    .line 2369
    :goto_0
    return v2

    .line 2348
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_2

    .line 2349
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "capture"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2351
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/PhotoModule;->mCaptureStartTime:J

    .line 2355
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/PhotoModule;->mPostViewPictureCallbackTime:J

    .line 2356
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2357
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFrontFlashTriggered:Z

    .line 2359
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2360
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2361
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFrontFlashTriggered:Z

    .line 2362
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->pauseFaceDetection()V

    .line 2363
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 2364
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2366
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v3, :cond_4

    move v0, v2

    .line 2367
    .local v0, "animateBefore":Z
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->doCapture(Z)V

    goto :goto_0
.end method

.method public couldChangeButtonState()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4361
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3186
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 3187
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 3188
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 3191
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 3192
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 3193
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 3194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMediaActionSoundLoaded:Z

    .line 3196
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v0, :cond_2

    .line 3197
    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    .line 3199
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_3

    .line 3200
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onDestroy()V

    .line 3204
    :cond_3
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 937
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 938
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    .line 939
    .local v3, "powerMgr":Lcom/android/camera/PowerStateManager;
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 940
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 941
    if-nez v3, :cond_3

    move v1, v4

    .line 942
    .local v1, "isLowPower":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    if-nez v1, :cond_4

    move v5, v6

    :goto_1
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 943
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 945
    .local v2, "lowPowerStr":Ljava/lang/String;
    :goto_2
    sget-object v5, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mIsImageCaptureIntent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 946
    sget-object v5, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHdrOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 947
    sget-object v5, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLowPower = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 948
    sget-object v5, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableFlash = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 950
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 951
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mHdrPlusCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hdrCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 952
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 953
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 954
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 955
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v5, :cond_1

    .line 956
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 957
    new-instance v5, Lcom/android/camera/PhotoModule$12;

    invoke-direct {v5, p0}, Lcom/android/camera/PhotoModule$12;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 964
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 965
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v5

    iput v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 966
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 967
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v5

    iput v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 968
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 969
    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v5

    iput v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 972
    :cond_1
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 973
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 974
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 975
    sget-boolean v5, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 977
    sget-object v7, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mAppController.getCameraProvider() != NULL? : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v5

    if-eqz v5, :cond_6

    move v5, v6

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 979
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 983
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 984
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_7

    move v5, v6

    :goto_4
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 986
    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_2

    .line 987
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 988
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCancelCallback:Landroid/view/View$OnClickListener;

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 989
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 990
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mDoneCallback:Landroid/view/View$OnClickListener;

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 991
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 992
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mRetakeCallback:Landroid/view/View$OnClickListener;

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 993
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 994
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 997
    :cond_2
    return-object v0

    .line 941
    .end local v1    # "isLowPower":Z
    .end local v2    # "lowPowerStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_4
    move v5, v4

    .line 942
    goto/16 :goto_1

    .line 943
    :cond_5
    const-string v2, "NULL"

    goto/16 :goto_2

    .restart local v2    # "lowPowerStr":Ljava/lang/String;
    :cond_6
    move v5, v4

    .line 977
    goto :goto_3

    :cond_7
    move v5, v4

    .line 984
    goto :goto_4
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 4131
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 6

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 924
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v5}, Lcom/android/camera/PhotoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;ZZ)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 924
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnCountDownStatusListener()Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
    .locals 0

    .prologue
    .line 635
    return-object p0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 596
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 595
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 918
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 601
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 604
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 606
    new-instance v2, Lcom/android/camera/PhotoUI;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/android/camera/PhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PhotoController;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    .line 607
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/camera/PhotoModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/PhotoModule$5;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 614
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    .line 619
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isImageCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    .line 620
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsVideoCaptureIntent:Z

    .line 621
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mQuickCapture:Z

    .line 624
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f0f00ba

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 625
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v1, Lcom/android/camera/PhotoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$6;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 631
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4052
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 4054
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 4052
    :cond_0
    :goto_0
    return v0

    .line 4054
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 4060
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4061
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.IMAGE_CAPTURE_SECURE"

    .line 4062
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 4061
    :goto_0
    return v1

    .line 4062
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 3280
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 8
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2515
    sget-object v4, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "onCameraAvailable"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2516
    iget-boolean v4, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2597
    :goto_0
    return-void

    .line 2519
    :cond_0
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v4, :cond_1

    .line 2520
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraAvailable"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2522
    :cond_1
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2524
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeCapabilities()V

    .line 2531
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    .line 2537
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v4, :cond_2

    .line 2538
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeFocusManager()V

    .line 2540
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 2542
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2543
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2546
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v4

    if-nez v4, :cond_3

    .line 2547
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2549
    :cond_3
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    if-nez v4, :cond_4

    .line 2550
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 2551
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2559
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2560
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v4, :cond_5

    .line 2561
    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2562
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2563
    invoke-virtual {v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v6

    sget-object v7, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v6, v7}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Ljava/lang/String;

    move-result-object v6

    .line 2562
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2572
    :cond_5
    :goto_2
    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrAuto(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-nez v4, :cond_6

    move v2, v3

    :cond_6
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsHDROff:Z

    .line 2574
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2575
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_camera_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080300

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2579
    :cond_8
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2581
    :cond_9
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCameraPreviewParamsReady:Z

    .line 2582
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_a

    .line 2583
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "mCameraPreviewParamsReady"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2586
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    .line 2588
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2590
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->onCameraOpened()V

    .line 2592
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2593
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 2595
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 2596
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0

    .line 2552
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_b
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2553
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto/16 :goto_1

    .line 2566
    .restart local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->isDefault(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2567
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_scenemode_key"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    .line 2601
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2602
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 2603
    return-void
.end method

.method public onCaptureDone()V
    .locals 17

    .prologue
    .line 2618
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "onCaptureDone"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2619
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 2704
    :goto_0
    return-void

    .line 2623
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 2625
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 2630
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_1

    .line 2631
    const/4 v9, 0x0

    .line 2633
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 2634
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 2635
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 2637
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saved result to URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2638
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2639
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2643
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 2640
    :catch_0
    move-exception v5

    .line 2641
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2643
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 2646
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 2647
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v8

    .line 2648
    .local v8, "orientation":I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2649
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2650
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "inlined bitmap into capture intent result"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2651
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    .line 2652
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 2651
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 2653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 2657
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x0

    .line 2658
    .local v12, "tempUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2660
    .local v11, "tempStream":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 2661
    .local v10, "path":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2662
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 2663
    invoke-virtual {v11, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 2664
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 2665
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 2666
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "wrote temp file for cropping to: crop-temp"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2678
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2681
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2682
    .local v7, "newExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2683
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 2686
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting output of cropped file to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2687
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/PhotoModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2691
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2692
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2696
    :cond_4
    const-string v1, "com.android.camera.action.CROP"

    .line 2697
    .local v1, "CROP_ACTION":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2699
    .local v3, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2700
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2701
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "starting CROP intent for capture"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2702
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v3, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 2667
    .end local v1    # "CROP_ACTION":Ljava/lang/String;
    .end local v3    # "cropIntent":Landroid/content/Intent;
    .end local v7    # "newExtras":Landroid/os/Bundle;
    .end local v10    # "path":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 2668
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "error writing temp cropping file to: crop-temp"

    invoke-static {v13, v14, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2670
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2678
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 2672
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 2673
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    sget-object v13, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "error writing temp cropping file to: crop-temp"

    invoke-static {v13, v14, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 2675
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/PhotoModule;->onError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2678
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 2689
    .restart local v7    # "newExtras":Landroid/os/Bundle;
    .restart local v10    # "path":Ljava/io/File;
    :cond_5
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onCaptureRetake()V
    .locals 2

    .prologue
    .line 2607
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onCaptureRetake"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2608
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2614
    :goto_0
    return-void

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hidePostCaptureAlert()V

    .line 2612
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->hideIntentReviewImageView()V

    .line 2613
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setupPreview()V

    goto :goto_0
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2906
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2907
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2908
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 2912
    :goto_0
    return-void

    .line 2911
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 2

    .prologue
    .line 4377
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4394
    :cond_0
    :goto_0
    return-void

    .line 4378
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 4379
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 4380
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 4381
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    if-nez v0, :cond_2

    .line 4382
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 4383
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 4384
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    .line 4389
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v0, :cond_3

    .line 4390
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v0}, Lcom/android/camera/burst/BurstManager;->prepareBurstSound()V

    .line 4393
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->loadModuleLayout()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3285
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 3320
    :cond_0
    :goto_0
    return v0

    .line 3286
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 3287
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_pro_mode_tutorial_shown"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3288
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3292
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 3320
    goto :goto_0

    .line 3296
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3297
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3298
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3299
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 3303
    goto :goto_0

    .line 3305
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3306
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 3312
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3316
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 3292
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

    .line 3325
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 3352
    :cond_0
    :goto_0
    return v0

    .line 3326
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 3327
    sget-boolean v2, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_pro_mode_tutorial_shown"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3328
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3332
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 3352
    goto :goto_0

    .line 3335
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 3336
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3337
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3338
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelCountDown()V

    goto :goto_0

    .line 3340
    :cond_3
    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    .line 3341
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 3345
    goto :goto_0

    .line 3347
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 3348
    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 3332
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
    .line 3208
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3209
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 4142
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 4136
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 4137
    return-void

    .line 4136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 4329
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4330
    packed-switch p1, :pswitch_data_0

    .line 4337
    :pswitch_0
    return-void

    .line 4330
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPowerStateChange(Z)V
    .locals 1
    .param p1, "isLowPower"    # Z

    .prologue
    .line 4322
    if-eqz p1, :cond_0

    .line 4323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 4325
    :cond_0
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 717
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 689
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewUIReady"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 693
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    if-eqz v0, :cond_3

    .line 694
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    .line 695
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 709
    :goto_0
    return-void

    .line 698
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 699
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 700
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 701
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 702
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 703
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 705
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 707
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->startPreview()V

    goto :goto_0
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 6
    .param p1, "remainingSeconds"    # I

    .prologue
    const v5, 0x7f07001c

    const v4, 0x7f07001b

    const/4 v3, 0x1

    const v2, 0x3f19999a    # 0.6f

    .line 2886
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_0

    .line 2887
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 2889
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_2

    .line 2890
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    if-nez v0, :cond_1

    .line 2891
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 2892
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 2893
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    .line 2895
    :cond_1
    if-ne p1, v3, :cond_3

    .line 2896
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 2901
    :cond_2
    :goto_0
    return-void

    .line 2897
    :cond_3
    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 2898
    :cond_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 4167
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PhotoModule$17;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$17;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4173
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 8
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3552
    const-string v6, "pref_camera_screen_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3553
    const-string v6, "default_scope"

    invoke-virtual {p1, v6, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3554
    .local v0, "currentValue":I
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3555
    .local v3, "res":Landroid/content/res/Resources;
    const v6, 0x7f0803c4

    .line 3556
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v0, v6, :cond_0

    const v6, 0x7f0803c6

    .line 3557
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v0, v6, :cond_2

    :cond_0
    move v2, v5

    .line 3558
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v6, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v6, :cond_3

    if-eqz v2, :cond_3

    .line 3559
    const v4, 0x7f0b0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3562
    .local v1, "index":I
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    .line 3610
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    move v2, v4

    .line 3557
    goto :goto_0

    .line 3567
    .end local v0    # "currentValue":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3568
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersFlashMode()V

    .line 3570
    :cond_4
    const-string v6, "pref_camera_hdr_key"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3571
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isHdrAuto(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v6

    if-nez v6, :cond_7

    :goto_2
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsHDROff:Z

    .line 3572
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 3574
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3575
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 3576
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    .line 3575
    invoke-virtual {p1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PhotoModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 3579
    :cond_5
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 3580
    :try_start_0
    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v4, :cond_8

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    :goto_3
    invoke-virtual {v6, v4}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3581
    sget-object v4, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lock CaptureIntent : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v7}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3582
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3604
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v4

    if-nez v4, :cond_c

    .line 3605
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_1

    :cond_7
    move v5, v4

    .line 3571
    goto :goto_2

    .line 3580
    :cond_8
    :try_start_1
    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_3

    .line 3582
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3585
    :cond_9
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3586
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3587
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    iget-object v6, p0, Lcom/android/camera/PhotoModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3590
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersFlashMode()V

    .line 3591
    iput-object v7, p0, Lcom/android/camera/PhotoModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 3595
    :cond_a
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 3596
    :try_start_2
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3597
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3598
    sget-object v4, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v6, "unlock CaptureIntent"

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3600
    :cond_b
    monitor-exit v5

    goto :goto_4

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 3607
    :cond_c
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v4, :cond_1

    .line 3608
    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto/16 :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2803
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2805
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2806
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    .line 2861
    :goto_0
    return-void

    .line 2810
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-eqz v1, :cond_2

    .line 2811
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore : mIsBurstInProgress"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2815
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isIntentReviewImageViewReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2816
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore : IntentReviewImageView not Ready"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2820
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2821
    :cond_4
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore : mFocusManager not Ready"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2825
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_6

    .line 2826
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2827
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 2828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 2831
    :cond_6
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 2832
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "PhotoModule.TakePicture"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2835
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_7

    .line 2836
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2837
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2836
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2838
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    goto/16 :goto_0

    .line 2841
    :cond_7
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2844
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2845
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2846
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2847
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 2849
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    .line 2850
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2851
    .local v0, "countDownDuration":I
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->isCountdownViewAvailable()Z

    move-result v1

    if-eqz v1, :cond_8

    if-lez v0, :cond_8

    .line 2853
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 2854
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2855
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2856
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 2859
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 2714
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2727
    :cond_0
    :goto_0
    return-void

    .line 2715
    :cond_1
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2717
    if-nez p1, :cond_0

    .line 2718
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShutterButtonFocus:  mCameraState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsBurstInProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2719
    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    if-eqz v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2722
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2723
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2724
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 7

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, 0x1

    .line 2731
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 2775
    :cond_0
    :goto_0
    return-void

    .line 2732
    :cond_1
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonLongPressed : mCameraState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IsImageCaptureIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2735
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2736
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-ne v1, v5, :cond_0

    .line 2737
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2738
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Capabilities not support burst"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2742
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_shutter_control_boolean_key"

    .line 2743
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2744
    .local v0, "enableShutterControl":Z
    if-nez v0, :cond_3

    .line 2745
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "SettingsManager not enable ShutterControl"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2749
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2750
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010d

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2751
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1, v6}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2758
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v1}, Lcom/android/camera/burst/BurstManager;->init()V

    .line 2759
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 2760
    iput-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    .line 2761
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mBurstAvailableSize:J

    .line 2762
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_5

    .line 2763
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateParametersSceneMode()V

    .line 2765
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateJpegRotation()V

    .line 2766
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/PhotoModule;->mJpegRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 2767
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v1, :cond_6

    .line 2768
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call onShutterUp in focus mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2769
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2771
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mCaptureBurstCallback:Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndStartBurst(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CaptureBurstCallback;)V

    goto/16 :goto_0

    .line 2752
    :cond_7
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2753
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010c

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2754
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
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 2779
    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v5, :cond_1

    .line 2799
    :cond_0
    :goto_0
    return-void

    .line 2782
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v5, :cond_0

    .line 2785
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 2786
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 2787
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2790
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 2791
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 2792
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 2793
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 2794
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2797
    iget-object v5, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 2708
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 2709
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 3255
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 3276
    :cond_0
    :goto_0
    return-void

    .line 3263
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 3267
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_3

    .line 3268
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Cancel by new touch event."

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3269
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3270
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3273
    :cond_3
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "PhotoModule.onSingleTapUp"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3275
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 4095
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 4111
    :cond_0
    :goto_0
    return-void

    .line 4098
    :cond_1
    iput p1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    .line 4099
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 4103
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->updateCameraParametersZoom()V

    .line 4105
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4106
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 4108
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 4109
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public onZoomClick()V
    .locals 3

    .prologue
    .line 4115
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez v1, :cond_1

    .line 4127
    :cond_0
    :goto_0
    return-void

    .line 4116
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v1}, Lcom/android/camera/PhotoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4118
    iget v0, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    .line 4119
    .local v0, "zoomValue":F
    iget v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 4120
    const/high16 v0, 0x40000000    # 2.0f

    .line 4124
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/PhotoUI;->setZoom(F)V

    .line 4125
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/PhotoModule;->onZoomChanged(F)V

    goto :goto_0

    .line 4122
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public pause()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 3040
    sget-object v2, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pause mCameraState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3041
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v2

    const-string v3, "PhotoModule.pause"

    invoke-virtual {v2, v3}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 3042
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v7, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 3043
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mDumpJpegForArcsoft:Z

    .line 3044
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mSnapshotOnIdle:Z

    .line 3046
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_0

    .line 3047
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "PhotoModule.pause"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3048
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3049
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3052
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_1

    .line 3053
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "PhotoModule.pause"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3054
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3055
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3058
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_2

    .line 3059
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "PhotoModule.pause"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3060
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3061
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3064
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_3

    .line 3065
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "PhotoModule.pause"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3066
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3067
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 3070
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 3071
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3072
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 3073
    const-string v2, "remove mDoResumeDelayTask"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3077
    :cond_4
    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 3078
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3079
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->abortCapture()V

    .line 3080
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v2}, Lcom/android/camera/burst/BurstManager;->stop()V

    .line 3081
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v2, v3, :cond_5

    .line 3082
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2, v7}, Lcom/android/camera/PhotoUI;->setSwipingEnabled(Z)V

    .line 3084
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3085
    const-string v2, "abortCapture"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3087
    :cond_6
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    .line 3089
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 3090
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 3091
    const-string v2, "SessionStatsCollector : sessionActive = false"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3095
    const-string v2, "unregisterWatermark"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3097
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_7

    .line 3098
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 3099
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 3100
    const-string v2, "unregisterListener - mHeadingSensor"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3105
    :cond_7
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v2, :cond_8

    .line 3106
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 3107
    const-string v2, "cancelAutoFocus"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3113
    :cond_8
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3114
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->stopPreview()V

    .line 3115
    const-string v2, "stopPreview"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3116
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->cancelCountDown()V

    .line 3117
    const-string v2, "cancelCountDown"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3119
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v2, :cond_9

    .line 3120
    iget-boolean v2, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    if-eqz v2, :cond_9

    .line 3121
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 3122
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 3123
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mCountdownSoundLoaded:Z

    .line 3124
    const-string v2, "unloadSound - mCountdownSoundPlayer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3128
    :cond_9
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    if-eqz v2, :cond_a

    .line 3129
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mBurstManager:Lcom/android/camera/burst/BurstManager;

    invoke-virtual {v2}, Lcom/android/camera/burst/BurstManager;->release()V

    .line 3130
    const-string v2, "mBurstManager.release"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3132
    :cond_a
    iput-boolean v6, p0, Lcom/android/camera/PhotoModule;->mIsBurstInProgress:Z

    .line 3134
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    if-eqz v2, :cond_b

    .line 3135
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/PhotoModule$NamedImages;->recycle()V

    .line 3136
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 3137
    const-string v2, "mNamedImages.recycle"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3142
    :cond_b
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 3143
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mJpegImageData:[B

    .line 3148
    :cond_c
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 3149
    const-string v2, "removeCallbacksAndMessages"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3151
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v2, :cond_d

    .line 3152
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v3}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 3153
    iput-object v5, p0, Lcom/android/camera/PhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 3154
    const-string v2, "removeListener - mMotionManager"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3157
    :cond_d
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 3158
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->resetCameraParameter()V

    .line 3159
    const-string v2, "resetCameraParameter"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3160
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->closeCamera()V

    .line 3161
    const-string v2, "closeCamera"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3162
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 3163
    const-string v2, "enableKeepScreenOn : false"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3164
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PhotoUI;->onPause()V

    .line 3165
    const-string v2, "mUI.onPause"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3167
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/PhotoModule;->mPendingSwitchCameraId:I

    .line 3168
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_e

    .line 3169
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 3170
    const-string v2, "mFocusManager.removeMessages"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3172
    :cond_e
    invoke-virtual {p0}, Lcom/android/camera/PhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 3173
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 3174
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 3175
    const-string v2, "removePreviewAreaSizeChangedListener"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3177
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 3178
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 3179
    const-string v2, "settingsManager.removeListener"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 3181
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 3182
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    .line 2916
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    :goto_0
    return-void

    .line 2917
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mIsImageCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 2918
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mDontResetIntentUiOnResume:Z

    .line 2920
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    .line 2922
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2923
    .local v0, "cameraId":I
    iget v1, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    if-eq v1, v0, :cond_2

    .line 2924
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need reset mCameraId to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2925
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    iget v4, p0, Lcom/android/camera/PhotoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2928
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->requestCameraOpen()V

    .line 2930
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    .line 2934
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2936
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2938
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mJpegPictureCallbackTime:J

    .line 2939
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/PhotoModule;->mZoomValue:F

    .line 2941
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PhotoModule;->mOnResumeTime:J

    .line 2942
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->checkDisplayRotation()V

    .line 2946
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_4

    .line 2947
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2956
    :goto_1
    new-instance v1, Lcom/android/camera/PhotoModule$15;

    invoke-direct {v1, p0}, Lcom/android/camera/PhotoModule$15;-><init>(Lcom/android/camera/PhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    .line 2981
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDoResumeDelayTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2949
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 4146
    iput-object p1, p0, Lcom/android/camera/PhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 4147
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 3997
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 3998
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 3999
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 4000
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 4001
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 4002
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4007
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 4005
    :cond_0
    sget-object v3, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 2469
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PhotoModule;->setCameraParameters(I)V

    .line 2470
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 2471
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setFocusParameters"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2473
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 4366
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PhotoUI;->setOrientation(IZ)V

    .line 4367
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1083
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 1087
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1088
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget v1, p0, Lcom/android/camera/PhotoModule;->mDisplayOrientation:I

    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->isCameraFrontFacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PhotoUI;->onStartFaceDetection(IZ)V

    .line 1089
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PhotoUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 1090
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1091
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1092
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 1093
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 723
    return-void
.end method

.method public startReceivedMetadataCallback()V
    .locals 5

    .prologue
    .line 4176
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 4275
    :cond_0
    :goto_0
    return-void

    .line 4177
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PhotoModule;->mReceivedMetadataStarted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 4181
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4182
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PhotoModule;->mReceivedMetadataStarted:Z

    .line 4183
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-nez v1, :cond_2

    .line 4184
    new-instance v1, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    new-instance v2, Lcom/android/camera/PhotoModule$18;

    invoke-direct {v2, p0}, Lcom/android/camera/PhotoModule$18;-><init>(Lcom/android/camera/PhotoModule;)V

    invoke-direct {v1, v2}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    iput-object v1, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 4259
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 4260
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4261
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 4262
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4263
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock CaptureIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4264
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4273
    :goto_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0

    .line 4262
    :cond_3
    :try_start_1
    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    goto :goto_1

    .line 4264
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4266
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 4267
    :try_start_2
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4268
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4269
    sget-object v1, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "unlock CaptureIntent"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 4271
    :cond_5
    monitor-exit v2

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1099
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1102
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 1103
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mFaceDetectionStarted:Z

    .line 1104
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1105
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 1106
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 1107
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/PhotoUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1108
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->clearFaces()V

    .line 1109
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mUI:Lcom/android/camera/PhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PhotoUI;->onStopFaceDetection()V

    .line 1110
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3518
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/PhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 3519
    sget-object v0, Lcom/android/camera/PhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3520
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 3522
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/PhotoModule;->setCameraState(I)V

    .line 3523
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 3524
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 3526
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 3527
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    if-eqz v0, :cond_2

    .line 3528
    iput-boolean v2, p0, Lcom/android/camera/PhotoModule;->mWarmUpPreview:Z

    .line 3529
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 3530
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 3531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PhotoModule;->mWarmUpSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 3534
    :cond_2
    return-void
.end method

.method public stopReceivedMetadataCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 4278
    iget-boolean v0, p0, Lcom/android/camera/PhotoModule;->mReceivedMetadataStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 4318
    :cond_0
    :goto_0
    return-void

    .line 4282
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4283
    iput-boolean v3, p0, Lcom/android/camera/PhotoModule;->mReceivedMetadataStarted:Z

    .line 4284
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-eqz v0, :cond_2

    .line 4285
    iput-object v2, p0, Lcom/android/camera/PhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 4287
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    .line 4289
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 4290
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4291
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4295
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4296
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 4297
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4298
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4302
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4303
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 4304
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4305
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4309
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 4310
    iget-object v1, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 4311
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4312
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 4316
    :goto_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4293
    :cond_3
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_1

    .line 4295
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 4300
    :cond_4
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_2

    .line 4302
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 4307
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_3

    .line 4309
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 4314
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 3213
    iget v0, p0, Lcom/android/camera/PhotoModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 3214
    invoke-direct {p0}, Lcom/android/camera/PhotoModule;->setDisplayOrientation()V

    .line 3216
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/camera/PhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1014
    return-void
.end method

.method protected useLogicCamera(Lcom/android/camera/app/AppController;)Z
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 931
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
