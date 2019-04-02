.class public Lcom/android/camera/BokehModule;
.super Lcom/android/camera/CameraModule;
.source "BokehModule.java"

# interfaces
.implements Lcom/android/camera/BokehController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BokehModule$Memento;,
        Lcom/android/camera/BokehModule$SavePictureCallback;,
        Lcom/android/camera/BokehModule$AddThumbnailBundle;,
        Lcom/android/camera/BokehModule$PictureCallbackFactory;,
        Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;,
        Lcom/android/camera/BokehModule$MediaSaveListener;,
        Lcom/android/camera/BokehModule$BokehTouchInfo;,
        Lcom/android/camera/BokehModule$NamedImages;,
        Lcom/android/camera/BokehModule$AutoFocusMoveCallback;,
        Lcom/android/camera/BokehModule$AutoFocusCallback;,
        Lcom/android/camera/BokehModule$JpegPictureCallback;,
        Lcom/android/camera/BokehModule$ResizeBundle;,
        Lcom/android/camera/BokehModule$RawPictureCallback;,
        Lcom/android/camera/BokehModule$PostViewPictureCallback;,
        Lcom/android/camera/BokehModule$ShutterCallback;,
        Lcom/android/camera/BokehModule$MainHandler;
    }
.end annotation


# static fields
.field public static final BOKEH_THUMBNAIL_TIMEOUT_UPPER_BOUND:I = 0x1f4

.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final MSG_UPDATE_BOKEH_STATUS:I = 0x3

.field private static final REQUEST_CROP:I = 0x3e8

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_BOKEH:I = 0x8

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final sTempCropFilename:Ljava/lang/String; = "crop-temp"


# instance fields
.field private final mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/BokehModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private mAwbLockSupported:Z

.field private mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

.field private mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mBurstSoundStreamId:I

.field public mBurstStartTime:J

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field private final mCancelCallback:Landroid/view/View$OnClickListener;

.field private mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

.field private mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mCropValue:Ljava/lang/String;

.field private mDebugUri:Landroid/net/Uri;

.field private final mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/LockableConcurrentState",
            "<",
            "Lcom/android/ex/camera2/portability/BokehStatus;",
            ">;"
        }
    .end annotation
.end field

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

.field private final mDoneCallback:Landroid/view/View$OnClickListener;

.field private mFaceDetectionStarted:Z

.field private mFirstTimeInitialized:Z

.field private mFlashModeBeforeSceneMode:Ljava/lang/String;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mFocusStartTime:J

.field private mFrontCameraMirrorEnabled:Z

.field private final mGcamModeIndex:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsBurstInProgress:Z

.field private mIsShutterLongPressed:Z

.field public mJpegCallbackFinishTime:J

.field private mJpegImageData:[B

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:I

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaActionSoundLoaded:Z

.field private mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

.field private final mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field protected mOrientation:I

.field private mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/BokehModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mQuickCapture:Z

.field private final mRawPictureCallback:Lcom/android/camera/BokehModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mReceivedMetadataStarted:Z

.field private mSaveUri:Landroid/net/Uri;

.field private mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShouldResizeTo16x9:Z

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mSnapshotOnIdle:Z

.field private mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

.field private mTimerDuration:I

.field private mUI:Lcom/android/camera/BokehUI;

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
    .line 133
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 4
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 474
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 165
    iput v3, p0, Lcom/android/camera/BokehModule;->mPendingSwitchCameraId:I

    .line 174
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mVolumeButtonClickedFlag:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mFaceDetectionStarted:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mReceivedMetadataStarted:Z

    .line 186
    iput-object v1, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 199
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mMediaActionSoundLoaded:Z

    .line 203
    new-instance v0, Lcom/android/camera/BokehModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$1;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 225
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mFrontCameraMirrorEnabled:Z

    .line 228
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mCompassTagEnabled:Z

    .line 230
    iput v2, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    .line 231
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mSnapshotOnIdle:Z

    .line 237
    new-instance v0, Lcom/android/camera/BokehModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BokehModule$PostViewPictureCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mPostViewPictureCallback:Lcom/android/camera/BokehModule$PostViewPictureCallback;

    .line 239
    new-instance v0, Lcom/android/camera/BokehModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BokehModule$RawPictureCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$Memento;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mRawPictureCallback:Lcom/android/camera/BokehModule$RawPictureCallback;

    .line 241
    new-instance v0, Lcom/android/camera/BokehModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BokehModule$AutoFocusCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mAutoFocusCallback:Lcom/android/camera/BokehModule$AutoFocusCallback;

    .line 243
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/BokehModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BokehModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/BokehModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 248
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    sget-object v1, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    .line 249
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 250
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 251
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    .line 252
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    sget-object v1, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    .line 254
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 255
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    .line 256
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mIsShutterLongPressed:Z

    .line 257
    iput v3, p0, Lcom/android/camera/BokehModule;->mBurstSoundStreamId:I

    .line 258
    new-instance v0, Lcom/android/camera/BokehModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$2;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    .line 322
    new-instance v0, Lcom/android/camera/BokehModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$MainHandler;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    .line 332
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mCameraPreviewParamsReady:Z

    .line 340
    new-instance v0, Lcom/android/camera/BokehModule$BokehTouchInfo;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$BokehTouchInfo;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    .line 342
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mWatermarkEnabled:Z

    .line 344
    new-instance v0, Lcom/android/camera/BokehModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$3;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 377
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mShouldResizeTo16x9:Z

    .line 653
    new-instance v0, Lcom/android/camera/BokehModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$6;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 699
    new-instance v0, Lcom/android/camera/BokehModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$7;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mCancelCallback:Landroid/view/View$OnClickListener;

    .line 706
    new-instance v0, Lcom/android/camera/BokehModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$8;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDoneCallback:Landroid/view/View$OnClickListener;

    .line 1476
    new-instance v0, Lcom/android/camera/BokehModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$11;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    .line 475
    invoke-interface {p1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000b

    .line 476
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/BokehModule;->mGcamModeIndex:I

    .line 477
    return-void

    :cond_0
    move-object v0, v1

    .line 243
    goto/16 :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->onError()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/BokehModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/BokehModule;Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule;->updateBokehStatusMessage(Lcom/android/ex/camera2/portability/BokehStatus;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->switchToGcamCapture()V

    return-void
.end method

.method static synthetic access$1702(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/BokehModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/camera/BokehModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/camera/BokehModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/camera/BokehModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2000(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/camera/BokehModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFrontCameraMirrorEnabled:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/BokehModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/BokehModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/BokehModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/camera/BokehModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/android/camera/BokehModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/camera/BokehModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/BokehModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/camera/BokehModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/android/camera/BokehModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/camera/BokehModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/camera/BokehModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/camera/BokehModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$3502(Lcom/android/camera/BokehModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # J

    .prologue
    .line 123
    iput-wide p1, p0, Lcom/android/camera/BokehModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$3600(Lcom/android/camera/BokehModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget v0, p0, Lcom/android/camera/BokehModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehModule$BokehTouchInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/BokehModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-wide v0, p0, Lcom/android/camera/BokehModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/camera/BokehModule;)Lcom/android/camera/stats/profiler/Profile;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/BokehModule;Lcom/android/camera/stats/profiler/Profile;)Lcom/android/camera/stats/profiler/Profile;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Lcom/android/camera/stats/profiler/Profile;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/camera/BokehModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/BokehModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/BokehModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/BokehModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule;->doCapture(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/BokehModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/BokehModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/BokehModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehModule$PostViewPictureCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPostViewPictureCallback:Lcom/android/camera/BokehModule$PostViewPictureCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/BokehModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;
    .param p1, "x1"    # Lcom/android/camera/BokehModule$ResizeBundle;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/camera/BokehModule;->cropJpegDataToAspectRatio(Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/camera/BokehModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/BokehModule;)Lcom/android/camera/BokehUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/BokehModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 825
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 826
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/BokehModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehModule$10;-><init>(Lcom/android/camera/BokehModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 833
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->animateFlash()V

    .line 1474
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 2172
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2173
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 2172
    :goto_0
    return v0

    .line 2173
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 530
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->cancelCountDown()V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 535
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 536
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 537
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 539
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 540
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 387
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 396
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setDisplayOrientation()V

    .line 398
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/BokehModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/BokehModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehModule$4;-><init>(Lcom/android/camera/BokehModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2341
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 2360
    :goto_0
    return v1

    .line 2345
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 2346
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2350
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 2351
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 2352
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2356
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_3

    .line 2357
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: parameters for preview is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2360
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2298
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 2299
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->stopFaceDetection()V

    .line 2300
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->stopReceivedMetadataCallback()V

    .line 2301
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 2302
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 2303
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "releaseCamera"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 2304
    .local v0, "profile":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 2305
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2306
    const/4 v0, 0x0

    .line 2307
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2308
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 2309
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 2311
    .end local v0    # "profile":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    return-void
.end method

.method private createMemento(Landroid/location/Location;Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;)Lcom/android/camera/BokehModule$Memento;
    .locals 8
    .param p1, "loc"    # Landroid/location/Location;
    .param p2, "pictureCallbackFactory"    # Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 3861
    new-instance v0, Lcom/android/camera/BokehModule$Memento;

    invoke-direct {v0, p0, v7}, Lcom/android/camera/BokehModule$Memento;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    .line 3863
    .local v0, "memento":Lcom/android/camera/BokehModule$Memento;
    invoke-static {}, Lcom/google/common/util/concurrent/SettableFuture;->create()Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2702(Lcom/android/camera/BokehModule$Memento;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/google/common/util/concurrent/SettableFuture;

    .line 3864
    invoke-static {v0, p1}, Lcom/android/camera/BokehModule$Memento;->access$6402(Lcom/android/camera/BokehModule$Memento;Landroid/location/Location;)Landroid/location/Location;

    .line 3865
    invoke-static {v0, p2}, Lcom/android/camera/BokehModule$Memento;->access$6502(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;)Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    .line 3867
    iget v2, p0, Lcom/android/camera/BokehModule;->mJpegRotation:I

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2602(Lcom/android/camera/BokehModule$Memento;I)I

    .line 3868
    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$6602(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CaptureIntent;)Lcom/android/ex/camera2/portability/CaptureIntent;

    .line 3869
    iget v2, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2202(Lcom/android/camera/BokehModule$Memento;I)I

    .line 3870
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$6702(Lcom/android/camera/BokehModule$Memento;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    .line 3871
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2302(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CameraCapabilities;)Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 3872
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$6802(Lcom/android/camera/BokehModule$Memento;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;

    .line 3873
    invoke-static {v0, v6}, Lcom/android/camera/BokehModule$Memento;->access$6902(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3874
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mShouldResizeTo16x9:Z

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$7002(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3875
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$7102(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;

    .line 3876
    iget-wide v2, p0, Lcom/android/camera/BokehModule;->mCaptureStartTime:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/BokehModule$Memento;->access$7202(Lcom/android/camera/BokehModule$Memento;J)J

    .line 3877
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mCompassTagEnabled:Z

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$7302(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3878
    invoke-static {v0, v6}, Lcom/android/camera/BokehModule$Memento;->access$7402(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3879
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mMirror:Z

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2102(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3880
    invoke-static {v0, v6}, Lcom/android/camera/BokehModule$Memento;->access$7502(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3882
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    iget-wide v4, p0, Lcom/android/camera/BokehModule;->mCaptureStartTime:J

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/BokehModule$NamedImages;->nameNewImage(J)V

    .line 3883
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    invoke-virtual {v2}, Lcom/android/camera/BokehModule$NamedImages;->getNextNameEntity()Lcom/android/camera/BokehModule$NamedImages$NamedEntity;

    move-result-object v1

    .line 3884
    .local v1, "nameEntity":Lcom/android/camera/BokehModule$NamedImages$NamedEntity;
    iget-object v2, v1, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;->title:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$2802(Lcom/android/camera/BokehModule$Memento;Ljava/lang/String;)Ljava/lang/String;

    .line 3885
    iget-wide v2, v1, Lcom/android/camera/BokehModule$NamedImages$NamedEntity;->date:J

    invoke-static {v0, v2, v3}, Lcom/android/camera/BokehModule$Memento;->access$7602(Lcom/android/camera/BokehModule$Memento;J)J

    .line 3887
    invoke-static {v0, v6}, Lcom/android/camera/BokehModule$Memento;->access$7702(Lcom/android/camera/BokehModule$Memento;Z)Z

    .line 3889
    new-instance v2, Lcom/android/camera/BokehModule$MediaSaveListener;

    invoke-direct {v2, p0, v7}, Lcom/android/camera/BokehModule$MediaSaveListener;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    invoke-static {v0, v2}, Lcom/android/camera/BokehModule$Memento;->access$7802(Lcom/android/camera/BokehModule$Memento;Lcom/android/camera/BokehModule$MediaSaveListener;)Lcom/android/camera/BokehModule$MediaSaveListener;

    .line 3890
    return-object v0
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/BokehModule$ResizeBundle;)Lcom/android/camera/BokehModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/BokehModule$ResizeBundle;

    .prologue
    .line 1090
    iget-object v1, p1, Lcom/android/camera/BokehModule$ResizeBundle;->jpegData:[B

    .line 1091
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/BokehModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 1092
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/BokehModule$ResizeBundle;->targetAspectRatio:F

    .line 1094
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1095
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1096
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 1100
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 1101
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 1102
    .local v2, "newHeight":I
    move v3, v6

    .line 1107
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 1108
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 1110
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 1122
    :cond_0
    :goto_1
    return-object p1

    .line 1104
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 1105
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 1114
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1115
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 1116
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 1118
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1120
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1121
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/BokehModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private doCapture(Z)V
    .locals 20
    .param p1, "animateBefore"    # Z

    .prologue
    .line 1518
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "doCapture"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1519
    if-eqz p1, :cond_0

    .line 1520
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->animateAfterShutter()V

    .line 1522
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v17

    .line 1523
    .local v17, "loc":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 1525
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->BOKEH:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setCaptureIntent(Lcom/android/ex/camera2/portability/CaptureIntent;)V

    .line 1526
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CaptureIntent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraSettings;->getCaptureIntent()Lcom/android/ex/camera2/portability/CaptureIntent;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getMeteringMode()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/camera/BokehModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    .line 1529
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCaptureMetering:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule;->mCaptureMetering:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1531
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->updateJpegRotation()V

    .line 1532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/camera/BokehModule;->mJpegRotation:I

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v3, :cond_1

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v4, "setJpegOrientation"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1537
    :cond_1
    const/4 v14, -0x1

    .line 1538
    .local v14, "isoValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v4

    .line 1539
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 1540
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1547
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->getPictureCallbackFactory()Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;

    move-result-object v19

    .line 1548
    .local v19, "picCbFactory":Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/camera/BokehModule;->createMemento(Landroid/location/Location;Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;)Lcom/android/camera/BokehModule$Memento;

    move-result-object v18

    .line 1550
    .local v18, "memento":Lcom/android/camera/BokehModule$Memento;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/camera/BokehModule$ShutterCallback;

    if-nez p1, :cond_3

    const/4 v7, 0x1

    :goto_0
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v7, v1, v8}, Lcom/android/camera/BokehModule$ShutterCallback;-><init>(Lcom/android/camera/BokehModule;ZLcom/android/camera/BokehModule$Memento;Z)V

    .line 1552
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;->getRawPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v7

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;->getPostViewPictureCallback(Lcom/android/camera/BokehModule$Memento;)Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v10, Lcom/android/camera/BokehModule$JpegPictureCallback;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v10, v0, v1}, Lcom/android/camera/BokehModule$JpegPictureCallback;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$Memento;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/BokehModule;->mActionNotSupportCallback:Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/BokehModule;->mJpegRotation:I

    const/4 v13, 0x0

    .line 1553
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v15

    const/16 v16, 0x0

    .line 1550
    invoke-virtual/range {v3 .. v16}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettingsAndTakePicture(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$BokehInfoCallback;Lcom/android/ex/camera2/portability/extension/CameraExtensionCaptureCallbacks$ActionNotSupportCallback;IZIZZ)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v3, :cond_2

    .line 1555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v4, "takePicture"

    invoke-interface {v3, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1557
    :cond_2
    return-void

    .line 1540
    .end local v18    # "memento":Lcom/android/camera/BokehModule$Memento;
    .end local v19    # "picCbFactory":Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 1550
    .restart local v18    # "memento":Lcom/android/camera/BokehModule$Memento;
    .restart local v19    # "picCbFactory":Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private focusAndCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1866
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_0

    .line 1867
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/BokehUI;->setSwipingEnabled(Z)V

    .line 1874
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1875
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mSnapshotOnIdle:Z

    .line 1881
    :goto_0
    return-void

    .line 1879
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mSnapshotOnIdle:Z

    .line 1880
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private getPictureCallbackFactory()Lcom/android/camera/BokehModule$PictureCallbackFactoryBase;
    .locals 2

    .prologue
    .line 3449
    new-instance v0, Lcom/android/camera/BokehModule$PictureCallbackFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/BokehModule$PictureCallbackFactory;-><init>(Lcom/android/camera/BokehModule;Lcom/android/camera/BokehModule$1;)V

    return-object v0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2985
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mFocusAreaSupported:Z

    .line 2986
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mMeteringAreaSupported:Z

    .line 2987
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mAeLockSupported:Z

    .line 2988
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mAwbLockSupported:Z

    .line 2989
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 2990
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mContinuousFocusSupported:Z

    .line 2991
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 798
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->initializeFirstTime()V

    .line 806
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 808
    new-instance v0, Lcom/android/camera/BokehModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/BokehModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    .line 810
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    .line 811
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->addIdleHandler()V

    .line 813
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1989
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2012
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2013
    return-void

    .line 1991
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mMirror:Z

    .line 1992
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1994
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1996
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 1997
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 1998
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 1999
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 2000
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2003
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/BokehModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2005
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    .line 2006
    invoke-virtual {v4}, Lcom/android/camera/BokehUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2007
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 2008
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 820
    new-instance v0, Lcom/android/camera/BokehModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/BokehModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    .line 821
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehUI;->initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 822
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1977
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1976
    return v0
.end method

.method private isResumeFromLockscreen()Z
    .locals 2

    .prologue
    .line 2019
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2020
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 2021
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 2020
    :goto_0
    return v1

    .line 2021
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private needFakeShutterSound(Lcom/android/ex/camera2/portability/CaptureIntent;)Z
    .locals 1
    .param p1, "captureIntent"    # Lcom/android/ex/camera2/portability/CaptureIntent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3314
    sget-object v0, Lcom/android/ex/camera2/portability/CaptureIntent;->LOWLIGHT:Lcom/android/ex/camera2/portability/CaptureIntent;

    if-ne p1, v0, :cond_0

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
    .line 597
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->openCameraCommon()V

    .line 598
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 375
    return-void
.end method

.method private onPreviewStarted()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 548
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 551
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 556
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 559
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 561
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 562
    invoke-direct {p0, v2}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 563
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->startFaceDetection()V

    .line 564
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->startReceivedMetadataCallback()V

    .line 565
    return-void
.end method

.method private openCameraCommon()V
    .locals 3

    .prologue
    .line 775
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehUI;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 776
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateSceneMode()V

    .line 777
    return-void
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 1583
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 1584
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1585
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1586
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 1587
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1588
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1593
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1591
    :cond_0
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 646
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 647
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "BokehModule.OpenCameraAndPreview"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 648
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 650
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 649
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 648
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 651
    return-void
.end method

.method private resetCameraParameter()V
    .locals 2

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_1

    .line 3295
    :cond_0
    :goto_0
    return-void

    .line 3292
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlipMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlipMode;)V

    .line 3293
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setBokehMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;)V

    .line 3294
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method private resetExposureCompensation()V
    .locals 3

    .prologue
    .line 785
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 786
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-nez v0, :cond_0

    .line 787
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Settings manager is null!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 3031
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 3032
    const/4 v1, 0x0

    .line 3034
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 3035
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3036
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3040
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 3043
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 3037
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 3038
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3040
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
    .line 2569
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 2572
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 2576
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 2579
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 2908
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2909
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersInitialize()V

    .line 2912
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2913
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersZoom()V

    .line 2916
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2917
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersPreference()V

    .line 2920
    :cond_2
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_3

    .line 2921
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersBokeh()V

    .line 2924
    :cond_3
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_4

    .line 2925
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2927
    :cond_4
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 2950
    iget v0, p0, Lcom/android/camera/BokehModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/BokehModule;->mUpdateSet:I

    .line 2951
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2954
    iput v1, p0, Lcom/android/camera/BokehModule;->mUpdateSet:I

    .line 2965
    :cond_0
    :goto_0
    return-void

    .line 2956
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2957
    iget v0, p0, Lcom/android/camera/BokehModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraParameters(I)V

    .line 2958
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateSceneMode()V

    .line 2959
    iput v1, p0, Lcom/android/camera/BokehModule;->mUpdateSet:I

    goto :goto_0

    .line 2961
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2962
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 1456
    iput p1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    .line 1457
    packed-switch p1, :pswitch_data_0

    .line 1467
    :pswitch_0
    return-void

    .line 1457
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
    .line 2314
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    .line 2315
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2316
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 2317
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/BokehModule;->mDisplayOrientation:I

    .line 2318
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget v2, p0, Lcom/android/camera/BokehModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/BokehUI;->setDisplayOrientation(I)V

    .line 2319
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 2320
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/BokehModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 2323
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 2324
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 2326
    :cond_1
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2328
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 2582
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2583
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 2585
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 3

    .prologue
    .line 2588
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_0

    .line 2589
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 2592
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2593
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 2598
    :goto_0
    return-void

    .line 2595
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    move-result-object v0

    .line 2596
    .local v0, "defaultMode":Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    goto :goto_0
.end method

.method private setupCaptureParams()V
    .locals 2

    .prologue
    .line 2976
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2977
    .local v0, "myExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 2978
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    .line 2979
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BokehModule;->mCropValue:Ljava/lang/String;

    .line 2981
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 2332
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2333
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 2334
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->startPreview()V

    .line 2335
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 2367
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 2368
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2373
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2377
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setDisplayOrientation()V

    .line 2381
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 2383
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2385
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 2391
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersPictureSize()V

    .line 2393
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/BokehModule;->setCameraParameters(I)V

    .line 2394
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_3

    .line 2395
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "setCameraParameters done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2398
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 2399
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_4

    .line 2400
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "setPreviewTexture done"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2403
    :cond_4
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2406
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_5

    .line 2407
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "startPreview"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2409
    :cond_5
    new-instance v0, Lcom/android/camera/BokehModule$12;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehModule$12;-><init>(Lcom/android/camera/BokehModule;)V

    .line 2423
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2424
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 2425
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto :goto_0

    .line 2427
    :cond_6
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    .line 601
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 639
    :goto_0
    return-void

    .line 604
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 605
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_1

    .line 606
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "switchCamera"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 608
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->cancelCountDown()V

    .line 609
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->resetPreviewOverlay()V

    .line 610
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 612
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 613
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "freezeScreenUntilPreviewReady"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 616
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 618
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 619
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->closeCamera()V

    .line 620
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_3

    .line 621
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "closeCamera"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 623
    :cond_3
    iget v1, p0, Lcom/android/camera/BokehModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    .line 625
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 626
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->requestCameraOpen()V

    .line 627
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_4

    .line 628
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "requestCameraOpen"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 630
    :cond_4
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->clearFaces()V

    .line 631
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_5

    .line 632
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 635
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/BokehModule;->mMirror:Z

    .line 636
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    goto/16 :goto_0
.end method

.method private switchToGcamCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 447
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/BokehModule;->mGcamModeIndex:I

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 449
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 456
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 458
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 460
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 464
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v3, p0, Lcom/android/camera/BokehModule;->mGcamModeIndex:I

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 466
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 468
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    return-void
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2874
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2884
    :goto_0
    return-void

    .line 2877
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 2879
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 2882
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateBokehStatusMessage(Lcom/android/ex/camera2/portability/BokehStatus;)V
    .locals 4
    .param p1, "bokehStatus"    # Lcom/android/ex/camera2/portability/BokehStatus;

    .prologue
    .line 3056
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_1

    .line 3086
    :cond_0
    :goto_0
    return-void

    .line 3059
    :cond_1
    const/4 v0, -0x1

    .line 3060
    .local v0, "resourceId":I
    sget-object v1, Lcom/android/camera/BokehModule$15;->$SwitchMap$com$android$ex$camera2$portability$BokehStatus:[I

    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/BokehStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3083
    :goto_1
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3084
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/BokehUI;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 3062
    :pswitch_0
    const v0, 0x7f08014a

    .line 3063
    goto :goto_1

    .line 3065
    :pswitch_1
    const v0, 0x7f08014c

    .line 3066
    goto :goto_1

    .line 3068
    :pswitch_2
    const v0, 0x7f08014f

    .line 3069
    goto :goto_1

    .line 3071
    :pswitch_3
    const v0, 0x7f08014e

    .line 3072
    goto :goto_1

    .line 3074
    :pswitch_4
    const v0, 0x7f08014d

    .line 3075
    goto :goto_1

    .line 3077
    :pswitch_5
    const v0, 0x7f08014b

    .line 3078
    goto :goto_1

    .line 3060
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateCameraParametersBokeh()V
    .locals 6

    .prologue
    .line 2930
    const/4 v0, -0x1

    .line 2931
    .local v0, "bokehLevel":I
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->BOKEH:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2932
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;->NORMAL:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setBokehMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMode;)V

    .line 2933
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2934
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_livebokeh_level_key"

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f080401

    .line 2935
    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2934
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v0

    .line 2938
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bokeh Level : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2939
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 2940
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentBokehBlurValue(I)V

    .line 2945
    :goto_0
    return-void

    .line 2942
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setCurrentBokehBlurValue(I)V

    .line 2943
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    invoke-virtual {v2, v0}, Lcom/android/camera/BokehModule$BokehTouchInfo;->setBlurLevel(I)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2540
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 2541
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2542
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 2545
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 2547
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2548
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 2551
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2552
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 2555
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2556
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 2558
    :cond_3
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2648
    :cond_0
    :goto_0
    return-void

    .line 2607
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setAutoExposureLockIfSupported()V

    .line 2608
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 2609
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setFocusAreasIfSupported()V

    .line 2610
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setMeteringAreasIfSupported()V

    .line 2613
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2614
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2615
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2616
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2617
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 2616
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 2622
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersPictureQuality()V

    .line 2628
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersExposureCompensation()V

    .line 2631
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersSceneMode()V

    .line 2634
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersZslMode()V

    .line 2637
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersLongShot()V

    .line 2640
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersCDS()V

    .line 2643
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersTouchAfAec()V

    .line 2645
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 2646
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 2617
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 2562
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2563
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/BokehModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2565
    :cond_0
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 3298
    iget-boolean v4, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 3311
    :goto_0
    return-void

    .line 3303
    :cond_0
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 3304
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 3305
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 3306
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 3307
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 3309
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/BokehModule;->mJpegRotation:I

    .line 3310
    sget-object v4, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/BokehModule;->mJpegRotation:I

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
    .line 2717
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2718
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v0, :cond_0

    .line 2719
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2720
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableAutoHDR(Z)V

    .line 2723
    :cond_0
    return-void
.end method

.method private updateParametersCDS()V
    .locals 2

    .prologue
    .line 2654
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->CDS:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setCDSEnabled(Z)V

    .line 2657
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 2794
    const/4 v0, 0x0

    .line 2795
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2796
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 2797
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 2798
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 2799
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 2800
    move v0, v3

    .line 2805
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2806
    return-void

    .line 2802
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2842
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2844
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2845
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2846
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2847
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 2848
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2849
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2850
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "unlock flash Required"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2852
    :cond_0
    monitor-exit v2

    .line 2870
    :goto_0
    return-void

    .line 2852
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2854
    :cond_1
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v4

    .line 2855
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2856
    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2857
    invoke-virtual {v0, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v2, v3

    .line 2855
    :cond_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2858
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock flash Required = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2859
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 2862
    :cond_4
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2863
    iget-object v4, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v4

    .line 2864
    :try_start_2
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2865
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 2866
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    move v1, v3

    .line 2864
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2867
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock flash Required = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v3}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2868
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    .line 2862
    :cond_6
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_1

    :cond_7
    move v1, v2

    .line 2866
    goto :goto_2
.end method

.method private updateParametersLongShot()V
    .locals 2

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->LONG_SHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2682
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableLongShot(Z)V

    .line 2684
    :cond_0
    return-void
.end method

.method private updateParametersPictureQuality()V
    .locals 3

    .prologue
    .line 2788
    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 2790
    .local v0, "jpegQuality":I
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 2791
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 12

    .prologue
    .line 2731
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v7, :cond_0

    .line 2732
    sget-object v7, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "attempting to set picture size without caemra device"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2785
    :goto_0
    return-void

    .line 2736
    :cond_0
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 2737
    .local v6, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 2738
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v8

    .line 2737
    invoke-static {v7, v8, v6}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 2741
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 2744
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2745
    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v8

    .line 2744
    invoke-virtual {v7, v8, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 2752
    .local v4, "pictureSize":Lcom/android/camera/util/Size;
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2753
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    invoke-virtual {v7, v4}, Lcom/android/camera/BokehModule$BokehTouchInfo;->setPictureSize(Lcom/android/camera/util/Size;)V

    .line 2754
    sget-object v7, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Photo size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2756
    sget-boolean v7, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v7, :cond_1

    .line 2757
    const-string v7, "1836x3264"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2758
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/BokehModule;->mShouldResizeTo16x9:Z

    .line 2766
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 2768
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    int-to-double v10, v7

    div-double/2addr v8, v10

    .line 2767
    invoke-static {v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 2769
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 2770
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v2, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2771
    sget-object v7, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setting preview size. optimal: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "original: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2772
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2774
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v8, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2775
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2778
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    if-eqz v7, :cond_3

    .line 2779
    sget-object v7, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "updating aspect ratio"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2780
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    int-to-float v8, v8

    .line 2781
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 2780
    invoke-virtual {v7, v8}, Lcom/android/camera/BokehUI;->updatePreviewAspectRatio(F)V

    .line 2783
    :cond_3
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    invoke-virtual {v7, v2}, Lcom/android/camera/BokehModule$BokehTouchInfo;->setPreviewSize(Lcom/android/camera/util/Size;)V

    .line 2784
    sget-object v7, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Preview size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2741
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v4    # "pictureSize":Lcom/android/camera/util/Size;
    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_1

    .line 2747
    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v1

    .line 2748
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v7, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 2760
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v4    # "pictureSize":Lcom/android/camera/util/Size;
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/BokehModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_2
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 2809
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2811
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v0, :cond_0

    .line 2812
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersAutoHDRMode()V

    .line 2815
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2816
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_1

    .line 2817
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 2822
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2823
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2832
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersFlashMode()V

    .line 2835
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2836
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2837
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 2836
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2838
    return-void

    .line 2826
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 2827
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_1

    .line 2828
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 2699
    iget-boolean v3, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2711
    :cond_0
    :goto_0
    return-void

    .line 2700
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 2701
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 2702
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2703
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 2704
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2705
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2706
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2708
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 2690
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2691
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 2693
    :cond_0
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 5

    .prologue
    .line 2663
    const/4 v0, 0x0

    .line 2664
    .local v0, "enableZSL":Z
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2665
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2666
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2669
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2670
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2671
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 2672
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_1

    .line 2673
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusOverlayManager;->setIsUseZSL(Z)V

    .line 2675
    :cond_1
    return-void
.end method

.method private updateSceneMode()V
    .locals 2

    .prologue
    .line 1574
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 1576
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1577
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 1576
    invoke-direct {p0, v0, v1}, Lcom/android/camera/BokehModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1579
    :cond_0
    return-void
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 1566
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFocusAreaSupported:Z

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
    .line 2178
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2189
    :goto_0
    return-void

    .line 2181
    :cond_0
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/BokehModule;->mFocusStartTime:J

    .line 2183
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAutoFocusCallback:Lcom/android/camera/BokehModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 2184
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 2185
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "autoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2187
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 2188
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 2

    .prologue
    .line 2193
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2202
    :goto_0
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2197
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_1

    .line 2198
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "cancelAutoFocus"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2200
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 2201
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1490
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1493
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v0

    .line 1514
    :goto_0
    return v2

    .line 1497
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_2

    .line 1498
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "capture"

    invoke-interface {v1, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1500
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/BokehModule;->mCaptureStartTime:J

    .line 1504
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/BokehModule;->mPostViewPictureCallbackTime:J

    .line 1505
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/BokehModule;->mJpegImageData:[B

    .line 1507
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1508
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1511
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v3, :cond_4

    move v0, v2

    .line 1512
    .local v0, "animateBefore":Z
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->doCapture(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2142
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 2144
    iput-object v1, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 2147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 2148
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 2149
    iput-object v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 2152
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 2153
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 2154
    iput-object v1, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 2155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mMediaActionSoundLoaded:Z

    .line 2157
    :cond_2
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 736
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 738
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 739
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 740
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 741
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 742
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 743
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 744
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 745
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v3, :cond_0

    .line 746
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 747
    new-instance v3, Lcom/android/camera/BokehModule$9;

    invoke-direct {v3, p0}, Lcom/android/camera/BokehModule$9;-><init>(Lcom/android/camera/BokehModule;)V

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 754
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 755
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 756
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 757
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 758
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 759
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v3

    iput v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 762
    :cond_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 763
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 766
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 767
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 768
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 770
    return-object v0

    :cond_1
    move v1, v2

    .line 767
    goto :goto_0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 3011
    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 6

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 723
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 724
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v4

    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v5}, Lcom/android/camera/BokehModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;ZZ)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/BokehModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 724
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 481
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 717
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 487
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 490
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 492
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 493
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_livebokeh_level_key"

    iget-object v5, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v6, 0x7f080401

    .line 494
    invoke-virtual {v5, v6}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 493
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v1

    .line 495
    .local v1, "level":I
    new-instance v3, Lcom/android/camera/BokehUI;

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5, v1}, Lcom/android/camera/BokehUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/BokehController;Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    .line 496
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 500
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 502
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    :cond_0
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    .line 507
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 511
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v3, p0}, Lcom/android/camera/BokehUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 513
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.extra.quickCapture"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mQuickCapture:Z

    .line 514
    new-instance v3, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 515
    new-instance v3, Lcom/android/camera/SoundPlayer;

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 516
    new-instance v3, Lcom/android/camera/SoundPlayer;

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 517
    new-instance v3, Landroid/media/MediaActionSound;

    invoke-direct {v3}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v3, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 520
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f0f00ba

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 521
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v3, Lcom/android/camera/BokehModule$5;

    invoke-direct {v3, p0}, Lcom/android/camera/BokehModule$5;-><init>(Lcom/android/camera/BokehModule;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 527
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2969
    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2971
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2969
    :cond_0
    :goto_0
    return v0

    .line 2971
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 544
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2232
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1597
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1598
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1665
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v2, :cond_1

    .line 1602
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v3, "onCameraAvailable"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1604
    :cond_1
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1606
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->initializeCapabilities()V

    .line 1612
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/BokehModule;->mZoomValue:F

    .line 1614
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v2, :cond_2

    .line 1615
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->initializeFocusManager()V

    .line 1617
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 1620
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1621
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1623
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1624
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1626
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1627
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1628
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1634
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->isBokehSupported()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1635
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersBokeh()V

    .line 1637
    :cond_5
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setBokehMPOMode(Lcom/android/ex/camera2/portability/CameraCapabilities$BokehMPOMode;)V

    .line 1645
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1647
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1648
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_6
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/BokehModule;->setCameraParameters(I)V

    .line 1652
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mCameraPreviewParamsReady:Z

    .line 1654
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->startPreview()V

    .line 1656
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1658
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->onCameraOpened()V

    .line 1660
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1661
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/BokehModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 1663
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1664
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0

    .line 1629
    .end local v0    # "buttonManager":Lcom/android/camera/ButtonManager;
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_7
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1630
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->FIXED:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto/16 :goto_1
.end method

.method public onCaptureCancelled()V
    .locals 3

    .prologue
    .line 1669
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1670
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1671
    return-void
.end method

.method public onCaptureDone()V
    .locals 17

    .prologue
    .line 1676
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "onCaptureDone"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v13, :cond_0

    .line 1762
    :goto_0
    return-void

    .line 1681
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehModule;->mJpegImageData:[B

    .line 1683
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mCropValue:Ljava/lang/String;

    if-nez v13, :cond_2

    .line 1688
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_1

    .line 1689
    const/4 v9, 0x0

    .line 1691
    .local v9, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v13, v14}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 1692
    invoke-virtual {v9, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1693
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 1695
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saved result to URI: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1698
    :catch_0
    move-exception v5

    .line 1699
    .local v5, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->onError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1701
    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    invoke-static {v9}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 1704
    .end local v9    # "outputStream":Ljava/io/OutputStream;
    :cond_1
    invoke-static {v4}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v6

    .line 1705
    .local v6, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v6}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v8

    .line 1706
    .local v8, "orientation":I
    const v13, 0xc800

    invoke-static {v4, v13}, Lcom/android/camera/util/CameraUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1707
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {v2, v8}, Lcom/android/camera/util/CameraUtil;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1708
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "inlined bitmap into capture intent result"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, -0x1

    new-instance v15, Landroid/content/Intent;

    const-string v16, "inline-data"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "data"

    .line 1710
    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    .line 1709
    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1711
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->finish()V

    goto/16 :goto_0

    .line 1715
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "exif":Lcom/android/camera/exif/ExifInterface;
    .end local v8    # "orientation":I
    :cond_2
    const/4 v12, 0x0

    .line 1716
    .local v12, "tempUri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1718
    .local v11, "tempStream":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 1719
    .local v10, "path":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 1720
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const-string v14, "crop-temp"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Lcom/android/camera/CameraActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v11

    .line 1721
    invoke-virtual {v11, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 1722
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    .line 1723
    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    .line 1724
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "wrote temp file for cropping to: crop-temp"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1736
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 1739
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1740
    .local v7, "newExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mCropValue:Ljava/lang/String;

    const-string v14, "circle"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1741
    const-string v13, "circleCrop"

    const-string v14, "true"

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    if-eqz v13, :cond_5

    .line 1744
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "setting output of cropped file to: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1745
    const-string v13, "output"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/camera/BokehModule;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1749
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->isSecureCamera()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1750
    const-string v13, "showWhenLocked"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1754
    :cond_4
    const-string v1, "com.android.camera.action.CROP"

    .line 1755
    .local v1, "CROP_ACTION":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v13, "com.android.camera.action.CROP"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1757
    .local v3, "cropIntent":Landroid/content/Intent;
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1758
    invoke-virtual {v3, v7}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1759
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "starting CROP intent for capture"

    invoke-static {v13, v14}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v14, 0x3e8

    invoke-virtual {v13, v3, v14}, Lcom/android/camera/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1725
    .end local v1    # "CROP_ACTION":Ljava/lang/String;
    .end local v3    # "cropIntent":Landroid/content/Intent;
    .end local v7    # "newExtras":Landroid/os/Bundle;
    .end local v10    # "path":Ljava/io/File;
    :catch_1
    move-exception v5

    .line 1726
    .local v5, "ex":Ljava/io/FileNotFoundException;
    :try_start_3
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "error writing temp cropping file to: crop-temp"

    invoke-static {v13, v14, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1727
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1728
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->onError()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1736
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 1730
    .end local v5    # "ex":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v5

    .line 1731
    .local v5, "ex":Ljava/io/IOException;
    :try_start_4
    sget-object v13, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v14, "error writing temp cropping file to: crop-temp"

    invoke-static {v13, v14, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1732
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/camera/CameraActivity;->setResultEx(I)V

    .line 1733
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/BokehModule;->onError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1736
    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v5    # "ex":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    invoke-static {v11}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v13

    .line 1747
    .restart local v7    # "newExtras":Landroid/os/Bundle;
    .restart local v10    # "path":Ljava/io/File;
    :cond_5
    const-string v13, "return-data"

    const/4 v14, 0x1

    invoke-virtual {v7, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public onControlBarUpdate(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 592
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 593
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_livebokeh_level_key"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 594
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1897
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1898
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1899
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1903
    :goto_0
    return-void

    .line 1902
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 2237
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 2267
    :cond_0
    :goto_0
    return v0

    .line 2238
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 2239
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2267
    goto :goto_0

    .line 2243
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2244
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2245
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2246
    invoke-virtual {p0, v0}, Lcom/android/camera/BokehModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2250
    goto :goto_0

    .line 2252
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2253
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->onShutterButtonClick()V

    goto :goto_0

    .line 2259
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 2263
    invoke-virtual {p0, v0}, Lcom/android/camera/BokehModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2239
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

    .line 2272
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return v0

    .line 2273
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    if-nez v2, :cond_0

    .line 2274
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2294
    goto :goto_0

    .line 2277
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2278
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->isInIntentReview()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2279
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2280
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->cancelCountDown()V

    goto :goto_0

    .line 2282
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/BokehModule;->mVolumeButtonClickedFlag:Z

    .line 2283
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2287
    goto :goto_0

    .line 2289
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 2290
    invoke-virtual {p0, v1}, Lcom/android/camera/BokehModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 2274
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
    .line 2161
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setDisplayOrientation()V

    .line 2162
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 3022
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3016
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 3017
    return-void

    .line 3016
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3274
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3275
    packed-switch p1, :pswitch_data_0

    .line 3282
    :pswitch_0
    return-void

    .line 3275
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
    .line 3267
    if-eqz p1, :cond_0

    .line 3268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 3270
    :cond_0
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 583
    :goto_0
    return-void

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 582
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 569
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewUIReady"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->startPreview()V

    .line 574
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 1885
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1886
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1887
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1892
    :cond_0
    :goto_0
    return-void

    .line 1888
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1889
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 3047
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/BokehModule$13;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehModule$13;-><init>(Lcom/android/camera/BokehModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3053
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2456
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2457
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersFlashMode()V

    .line 2459
    :cond_0
    const-string v0, "pref_livebokeh_level_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2460
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateCameraParametersBokeh()V

    .line 2462
    :cond_1
    const-string v0, "pref_camera_hdr_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2463
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2465
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2466
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2467
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    .line 2466
    invoke-virtual {p1, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 2469
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2470
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2471
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "lock HDR Required : true"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2472
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2474
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2475
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock CaptureIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2476
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2529
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2530
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraParametersWhenIdle(I)V

    .line 2535
    :cond_4
    :goto_1
    return-void

    .line 2472
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2476
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2477
    :cond_5
    invoke-static {p1}, Lcom/android/camera/settings/Keys;->isHdrAuto(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2480
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2481
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 2482
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersFlashMode()V

    .line 2486
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 2490
    :cond_6
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2491
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2492
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2493
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "unlock HDR Required"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2495
    :cond_7
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2497
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2498
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2499
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2500
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "unlock CaptureIntent"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2502
    :cond_8
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 2495
    :catchall_3
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 2505
    :cond_9
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2506
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 2507
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->updateParametersFlashMode()V

    .line 2511
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mFlashModeBeforeSceneMode:Ljava/lang/String;

    .line 2515
    :cond_a
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2516
    :try_start_7
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "lock HDR Required = false"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2517
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2518
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 2520
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2521
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2522
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2523
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "unlock CaptureIntent"

    invoke-static {v0, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2525
    :cond_b
    monitor-exit v1

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 2518
    :catchall_5
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    .line 2532
    :cond_c
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_4

    .line 2533
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto/16 :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1819
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1821
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1822
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/BokehModule;->mVolumeButtonClickedFlag:Z

    .line 1863
    :goto_0
    return-void

    .line 1826
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mIsShutterLongPressed:Z

    if-eqz v1, :cond_2

    .line 1827
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore : Shutter Long Pressed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1828
    iput-boolean v6, p0, Lcom/android/camera/BokehModule;->mIsShutterLongPressed:Z

    goto :goto_0

    .line 1832
    :cond_2
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1833
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "BokehModule.TakePicture"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 1836
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 1837
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1838
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1837
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1839
    iput-boolean v6, p0, Lcom/android/camera/BokehModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 1842
    :cond_3
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/BokehModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1845
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1846
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 1848
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1850
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    .line 1851
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1852
    .local v0, "countDownDuration":I
    iput v0, p0, Lcom/android/camera/BokehModule;->mTimerDuration:I

    .line 1853
    if-lez v0, :cond_4

    .line 1855
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1856
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1857
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1858
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/BokehUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 1861
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1772
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1773
    :cond_1
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1775
    if-nez p1, :cond_0

    .line 1776
    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    if-eqz v0, :cond_0

    .line 1777
    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mIsShutterLongPressed:Z

    .line 1779
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1781
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1782
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopBurst()V

    goto :goto_0
.end method

.method public onShutterButtonLongPressed()V
    .locals 3

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonClickable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return-void

    .line 1792
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v2, 0x7f080109

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehUI;->showToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 1797
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1800
    :cond_1
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 1801
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 1802
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1805
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 1806
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 1807
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 1808
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 1809
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1812
    iget-object v5, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1766
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 1767
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 2206
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 2228
    :cond_0
    :goto_0
    return-void

    .line 2214
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 2218
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_3

    .line 2219
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "Cancel by new touch event."

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2220
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2224
    :cond_3
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v0

    const-string v1, "BokehModule.onSingleTapUp"

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2226
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mBokehTouchInfo:Lcom/android/camera/BokehModule$BokehTouchInfo;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/BokehModule$BokehTouchInfo;->setTouch(II)V

    .line 2227
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 2996
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3007
    :cond_0
    :goto_0
    return-void

    .line 2999
    :cond_1
    iput p1, p0, Lcom/android/camera/BokehModule;->mZoomValue:F

    .line 3000
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 3005
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/BokehModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 3006
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2026
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2027
    iput-boolean v4, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    .line 2029
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_0

    .line 2030
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "BokehModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2031
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2032
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2035
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_1

    .line 2036
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "BokehModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2037
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2038
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mCaptureProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2041
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_2

    .line 2042
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "BokehModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2043
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2044
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mFocusProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2047
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_3

    .line 2048
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "BokehModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2049
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2050
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mSwitchProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2054
    :cond_3
    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 2055
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->abortCapture()V

    .line 2056
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    if-eqz v1, :cond_5

    .line 2057
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_4

    .line 2058
    iget v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundStreamId:I

    if-eq v1, v6, :cond_4

    .line 2059
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    iget v2, p0, Lcom/android/camera/BokehModule;->mBurstSoundStreamId:I

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->stopRepeat(I)V

    .line 2060
    iput v6, p0, Lcom/android/camera/BokehModule;->mBurstSoundStreamId:I

    .line 2063
    :cond_4
    iput-boolean v5, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    .line 2066
    :cond_5
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2067
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 2068
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2069
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v2, :cond_6

    .line 2070
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1, v4}, Lcom/android/camera/BokehUI;->setSwipingEnabled(Z)V

    .line 2072
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 2074
    :cond_7
    iput-boolean v5, p0, Lcom/android/camera/BokehModule;->mIsBurstInProgress:Z

    .line 2076
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 2077
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 2080
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 2081
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 2085
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eqz v1, :cond_8

    .line 2086
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2092
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->stopPreview()V

    .line 2093
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->cancelCountDown()V

    .line 2095
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_9

    .line 2096
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 2097
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 2100
    :cond_9
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_a

    .line 2101
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 2104
    :cond_a
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    if-eqz v1, :cond_b

    .line 2105
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    invoke-virtual {v1}, Lcom/android/camera/BokehModule$NamedImages;->recycle()V

    .line 2106
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mNamedImages:Lcom/android/camera/BokehModule$NamedImages;

    .line 2111
    :cond_b
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mJpegImageData:[B

    .line 2114
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2116
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v1, :cond_c

    .line 2117
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 2118
    iput-object v3, p0, Lcom/android/camera/BokehModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 2121
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->resetCameraParameter()V

    .line 2122
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->closeCamera()V

    .line 2123
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2124
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->onPause()V

    .line 2126
    iput v6, p0, Lcom/android/camera/BokehModule;->mPendingSwitchCameraId:I

    .line 2127
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_d

    .line 2128
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2130
    :cond_d
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 2131
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2132
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2134
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2135
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2137
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 2138
    return-void
.end method

.method public resume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1907
    iput-boolean v7, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    .line 1909
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1910
    .local v1, "cameraId":I
    iget v2, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    if-eq v2, v1, :cond_0

    .line 1911
    sget-object v2, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Need reset mCameraId to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1912
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    iget v5, p0, Lcom/android/camera/BokehModule;->mCameraId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1915
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v2, :cond_1

    .line 1916
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1917
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1920
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v2, :cond_2

    .line 1921
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mBurstSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f070006

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1924
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mMediaActionSoundLoaded:Z

    if-nez v2, :cond_3

    .line 1925
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v2, v7}, Landroid/media/MediaActionSound;->load(I)V

    .line 1926
    iput-boolean v6, p0, Lcom/android/camera/BokehModule;->mMediaActionSoundLoaded:Z

    .line 1929
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_4

    .line 1933
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1935
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1937
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1938
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_5

    .line 1970
    :goto_0
    return-void

    .line 1943
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->requestCameraOpen()V

    .line 1945
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/BokehModule;->mJpegPictureCallbackTime:J

    .line 1946
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/BokehModule;->mZoomValue:F

    .line 1948
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/BokehModule;->mOnResumeTime:J

    .line 1949
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->checkDisplayRotation()V

    .line 1953
    iget-boolean v2, p0, Lcom/android/camera/BokehModule;->mFirstTimeInitialized:Z

    if-nez v2, :cond_6

    .line 1954
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1959
    :goto_1
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_front_camera_mirror_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/BokehModule;->mFrontCameraMirrorEnabled:Z

    .line 1965
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1967
    invoke-virtual {p0}, Lcom/android/camera/BokehModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1968
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1969
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    goto :goto_0

    .line 1956
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3026
    iput-object p1, p0, Lcom/android/camera/BokehModule;->mDebugUri:Landroid/net/Uri;

    .line 3027
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 2892
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 2893
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 2894
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2895
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2896
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2897
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2902
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 2900
    :cond_0
    sget-object v3, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1561
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/BokehModule;->setCameraParameters(I)V

    .line 1562
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 3286
    iput p1, p0, Lcom/android/camera/BokehModule;->mOrientation:I

    .line 3287
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/BokehUI;->setOrientation(IZ)V

    .line 3288
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 837
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 841
    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mFaceDetectionStarted:Z

    .line 842
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget v1, p0, Lcom/android/camera/BokehModule;->mDisplayOrientation:I

    invoke-direct {p0}, Lcom/android/camera/BokehModule;->isCameraFrontFacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/BokehUI;->onStartFaceDetection(IZ)V

    .line 843
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 844
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 845
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 846
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 847
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 588
    return-void
.end method

.method public startReceivedMetadataCallback()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 3089
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 3213
    :cond_0
    :goto_0
    return-void

    .line 3090
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/BokehModule;->mReceivedMetadataStarted:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 3094
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3095
    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mReceivedMetadataStarted:Z

    .line 3096
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-nez v1, :cond_2

    .line 3097
    new-instance v1, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    new-instance v2, Lcom/android/camera/BokehModule$14;

    invoke-direct {v2, p0}, Lcom/android/camera/BokehModule$14;-><init>(Lcom/android/camera/BokehModule;)V

    invoke-direct {v1, v2}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    iput-object v1, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 3175
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 3176
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3177
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3178
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3179
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "lock HDR Required : true"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3180
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3181
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3182
    :try_start_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v3, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3183
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock CaptureIntent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/ex/camera2/portability/CaptureIntent;->HDR:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3184
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3211
    :goto_1
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0

    .line 3180
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 3184
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3185
    :cond_3
    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isHdrAuto(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3186
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3187
    :try_start_4
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3188
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3189
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "unlock HDR Required"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3191
    :cond_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 3192
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3193
    :try_start_5
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3194
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3195
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "unlock CaptureIntent"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3197
    :cond_5
    monitor-exit v2

    goto :goto_1

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 3191
    :catchall_3
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1

    .line 3199
    :cond_6
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3200
    :try_start_7
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "lock HDR Required = false"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3201
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3202
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 3204
    iget-object v2, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v2

    .line 3205
    :try_start_8
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3206
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3207
    sget-object v1, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "unlock CaptureIntent"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3209
    :cond_7
    monitor-exit v2

    goto :goto_1

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 3202
    :catchall_5
    move-exception v1

    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v1
.end method

.method public stopFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 853
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 857
    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mFaceDetectionStarted:Z

    .line 858
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 860
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 861
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/BokehUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 862
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->clearFaces()V

    .line 863
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mUI:Lcom/android/camera/BokehUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehUI;->onStopFaceDetection()V

    .line 864
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2434
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/BokehModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 2435
    sget-object v0, Lcom/android/camera/BokehModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 2438
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/BokehModule;->setCameraState(I)V

    .line 2439
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 2440
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 2442
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 2443
    return-void
.end method

.method public stopReceivedMetadataCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 3216
    iget-boolean v0, p0, Lcom/android/camera/BokehModule;->mReceivedMetadataStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 3263
    :cond_0
    :goto_0
    return-void

    .line 3220
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3221
    iput-boolean v3, p0, Lcom/android/camera/BokehModule;->mReceivedMetadataStarted:Z

    .line 3222
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-eqz v0, :cond_2

    .line 3223
    iput-object v2, p0, Lcom/android/camera/BokehModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 3225
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/BokehModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    .line 3227
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 3228
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3229
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3233
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3234
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 3235
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3236
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3240
    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3241
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 3242
    :try_start_2
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3243
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3247
    :goto_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 3248
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 3249
    :try_start_3
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3250
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3254
    :goto_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 3255
    iget-object v1, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 3256
    :try_start_4
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3257
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 3261
    :goto_5
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 3231
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedCaptureIntent:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CaptureIntent;->Normal:Lcom/android/ex/camera2/portability/CaptureIntent;

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_1

    .line 3233
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 3238
    :cond_4
    :try_start_6
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_2

    .line 3240
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 3245
    :cond_5
    :try_start_7
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedHDRRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_3

    .line 3247
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 3252
    :cond_6
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedIsoValue:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V

    goto :goto_4

    .line 3254
    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 3259
    :cond_7
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mDetectedBokehStatus:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/BokehStatus;->UNKNOWN:Lcom/android/ex/camera2/portability/BokehStatus;

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->update(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 2166
    iget v0, p0, Lcom/android/camera/BokehModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 2167
    invoke-direct {p0}, Lcom/android/camera/BokehModule;->setDisplayOrientation()V

    .line 2169
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/camera/BokehModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 782
    return-void
.end method

.method protected useLogicCamera(Lcom/android/camera/app/AppController;)Z
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 731
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
