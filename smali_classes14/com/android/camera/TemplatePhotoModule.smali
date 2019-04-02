.class public Lcom/android/camera/TemplatePhotoModule;
.super Lcom/android/camera/CameraModule;
.source "TemplatePhotoModule.java"

# interfaces
.implements Lcom/android/camera/TemplatePhotoController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;,
        Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;,
        Lcom/android/camera/TemplatePhotoModule$ResizeBundle;,
        Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;,
        Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/TemplatePhotoModule$ShutterCallback;,
        Lcom/android/camera/TemplatePhotoModule$MainHandler;
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
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAeLockSupported:Z

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;

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

.field private final mPostViewPictureCallback:Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mRawPictureCallback:Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;

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

.field private mUI:Lcom/android/camera/TemplatePhotoUI;

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

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TemplatePhotoModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 339
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPendingSwitchCameraId:I

    .line 150
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    .line 158
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFaceDetectionStarted:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mReceivedMetadataStarted:Z

    .line 160
    iput-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 168
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$1;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 185
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCompassTagEnabled:Z

    .line 187
    iput v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    .line 188
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mSnapshotOnIdle:Z

    .line 194
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPostViewPictureCallback:Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;

    .line 196
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mRawPictureCallback:Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;

    .line 198
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusCallback:Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;

    .line 200
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/TemplatePhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$1;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 205
    new-instance v0, Lcom/android/camera/async/LockableConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/LockableConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    .line 207
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 226
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFrontFlashTriggered:Z

    .line 235
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$MainHandler;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    .line 243
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraPreviewParamsReady:Z

    .line 245
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$2;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 278
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mShouldResizeTo16x9:Z

    .line 476
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$5;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 999
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$8;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    .line 340
    return-void

    :cond_0
    move-object v0, v1

    .line 200
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/TemplatePhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1200()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/TemplatePhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/camera/TemplatePhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/camera/TemplatePhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/TemplatePhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/camera/TemplatePhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/camera/TemplatePhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/camera/TemplatePhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/camera/TemplatePhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/camera/TemplatePhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/TemplatePhotoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/TemplatePhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$2002(Lcom/android/camera/TemplatePhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 99
    iput-wide p1, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$2100(Lcom/android/camera/TemplatePhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegRotation:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/TemplatePhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mShouldResizeTo16x9:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule;->cropJpegDataToAspectRatio(Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/TemplatePhotoModule;Lcom/android/camera/ui/TouchCoordinate;)Lcom/android/camera/ui/TouchCoordinate;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    return-object p1
.end method

.method static synthetic access$3002(Lcom/android/camera/TemplatePhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/TemplatePhotoModule;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDebugUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/TemplatePhotoModule;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule;->saveToDebugUri([B)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/TemplatePhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCompassTagEnabled:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/TemplatePhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$3700(Lcom/android/camera/TemplatePhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/TemplatePhotoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule;->doCapture(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/TemplatePhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/TemplatePhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/TemplatePhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/async/LockableConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/TemplatePhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->onError()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/TemplatePhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TemplatePhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/android/camera/TemplatePhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 609
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 610
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/TemplatePhotoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoModule$7;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 617
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->animateFlash()V

    .line 997
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1430
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1431
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1430
    :goto_0
    return v0

    .line 1431
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 386
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->cancelCountDown()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 391
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 392
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 393
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 395
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setDisplayOrientation()V

    .line 293
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/TemplatePhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/TemplatePhotoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoModule$3;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1580
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1599
    :goto_0
    return v1

    .line 1584
    :cond_0
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1585
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: camera device not ready yet."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    .line 1590
    .local v0, "st":Landroid/graphics/SurfaceTexture;
    if-nez v0, :cond_2

    .line 1591
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: surfaceTexture is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1595
    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v2, :cond_3

    .line 1596
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startPreview: parameters for preview is not ready."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1599
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1537
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1538
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->stopFaceDetection()V

    .line 1539
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->stopReceivedMetadataCallback()V

    .line 1540
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1541
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1543
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1544
    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1545
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    .line 1546
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1547
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    .line 1550
    :cond_0
    return-void
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/TemplatePhotoModule$ResizeBundle;)Lcom/android/camera/TemplatePhotoModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/TemplatePhotoModule$ResizeBundle;

    .prologue
    .line 711
    iget-object v1, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->jpegData:[B

    .line 712
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 713
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->targetAspectRatio:F

    .line 715
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 716
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 717
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 721
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 722
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 723
    .local v2, "newHeight":I
    move v3, v6

    .line 728
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 729
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 731
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 743
    :cond_0
    :goto_1
    return-object p1

    .line 725
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 726
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 735
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 736
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 737
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 739
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 741
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 742
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/TemplatePhotoModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private doCapture(Z)V
    .locals 7
    .param p1, "animateBefore"    # Z

    .prologue
    .line 1042
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "doCapture"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1043
    if-eqz p1, :cond_0

    .line 1044
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->animateAfterShutter()V

    .line 1047
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1048
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1051
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateJpegRotation()V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1055
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/TemplatePhotoModule$ShutterCallback;

    if-nez p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-direct {v2, p0, v3}, Lcom/android/camera/TemplatePhotoModule$ShutterCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Z)V

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mRawPictureCallback:Lcom/android/camera/TemplatePhotoModule$RawPictureCallback;

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mPostViewPictureCallback:Lcom/android/camera/TemplatePhotoModule$PostViewPictureCallback;

    new-instance v5, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;

    invoke-direct {v5, p0, v6}, Lcom/android/camera/TemplatePhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/TemplatePhotoModule;Landroid/location/Location;)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1059
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCaptureStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1060
    return-void

    .line 1055
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private focusAndCapture()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1213
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/TemplatePhotoUI;->setSwipingEnabled(Z)V

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1222
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->isFocusingSnapOnFinish()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1223
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSnapshotOnIdle:Z

    .line 1229
    :goto_0
    return-void

    .line 1227
    :cond_2
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mSnapshotOnIdle:Z

    .line 1228
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->focusAndCapture(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method

.method private initializeCapabilities()V
    .locals 2

    .prologue
    .line 2083
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2084
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusAreaSupported:Z

    .line 2085
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMeteringAreaSupported:Z

    .line 2086
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_EXPOSURE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAeLockSupported:Z

    .line 2087
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_WHITE_BALANCE_LOCK:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAwbLockSupported:Z

    .line 2088
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 2089
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mContinuousFocusSupported:Z

    .line 2090
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->initializeFirstTime()V

    .line 590
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 592
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 594
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    .line 595
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->addIdleHandler()V

    .line 597
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1342
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1343
    return-void

    .line 1321
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMirror:Z

    .line 1322
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 1324
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1326
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 1327
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v10, v8, v0

    .line 1328
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 1329
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_2

    .line 1330
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1327
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1333
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_3
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/TemplatePhotoModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1335
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    .line 1336
    invoke-virtual {v4}, Lcom/android/camera/TemplatePhotoUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 1337
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMotionManager()Lcom/android/camera/app/MotionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1338
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/app/MotionManager;->addListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 3

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 604
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 605
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/TemplatePhotoUI;->initializeSecondTime(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 606
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1307
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1306
    return v0
.end method

.method private isResumeFromLockscreen()Z
    .locals 2

    .prologue
    .line 1349
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1350
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1351
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1350
    :goto_0
    return v1

    .line 1351
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->openCameraCommon()V

    .line 434
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 276
    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 404
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 406
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->resumeFaceDetection()V

    .line 407
    invoke-direct {p0, v1}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    .line 408
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->startFaceDetection()V

    .line 409
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->startReceivedMetadataCallback()V

    .line 410
    return-void
.end method

.method private openCameraCommon()V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/TemplatePhotoUI;->onCameraOpened(Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 561
    return-void
.end method

.method private overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V
    .locals 6
    .param p1, "flashMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    .param p2, "focusMode"    # Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 1088
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1089
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    invoke-virtual {v2, p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Ljava/lang/String;

    move-result-object v0

    .line 1091
    .local v0, "flashModeString":Ljava/lang/String;
    sget-object v3, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1092
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    invoke-virtual {v1, v3, v4, v0}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    .end local v0    # "flashModeString":Ljava/lang/String;
    :goto_0
    return-void

    .line 1095
    :cond_0
    sget-object v3, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "skip setting flash mode on override due to NO_FLASH"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 470
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 473
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 472
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 471
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 474
    return-void
.end method

.method private resetExposureCompensation()V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 570
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-nez v0, :cond_0

    .line 571
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Settings manager is null!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 2129
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 2130
    const/4 v1, 0x0

    .line 2132
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2133
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2134
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2138
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2141
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2135
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2136
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2138
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
    .line 1721
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAeLockSupported:Z

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoExposureLock(Z)V

    .line 1724
    :cond_0
    return-void
.end method

.method private setAutoWhiteBalanceLockIfSupported()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 1728
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAwbLockSupported:Z

    if-eqz v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getAeAwbLock()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setAutoWhiteBalanceLock(Z)V

    .line 1731
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 2
    .param p1, "updateSet"    # I

    .prologue
    .line 2037
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 2038
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateCameraParametersInitialize()V

    .line 2041
    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 2042
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateCameraParametersZoom()V

    .line 2045
    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 2046
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateCameraParametersPreference()V

    .line 2049
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_3

    .line 2050
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2052
    :cond_3
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 2057
    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUpdateSet:I

    .line 2058
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2061
    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUpdateSet:I

    .line 2072
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2064
    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraParameters(I)V

    .line 2065
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateSceneMode()V

    .line 2066
    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 2068
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 979
    iput p1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    .line 980
    packed-switch p1, :pswitch_data_0

    .line 990
    :pswitch_0
    return-void

    .line 980
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
    .line 1553
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    .line 1554
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1555
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1556
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayOrientation:I

    .line 1557
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    iget v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/TemplatePhotoUI;->setDisplayOrientation(I)V

    .line 1558
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1559
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1562
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_1

    .line 1563
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1565
    :cond_1
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayOrientation (screen:preview) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1567
    return-void
.end method

.method private setFocusAreasIfSupported()V
    .locals 2

    .prologue
    .line 1734
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1737
    :cond_0
    return-void
.end method

.method private setMeteringAreasIfSupported()V
    .locals 2

    .prologue
    .line 1740
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1744
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1745
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;->SPOT_METERING:Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringMode(Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;)V

    .line 1749
    :goto_0
    return-void

    .line 1747
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->getCurrentMetering()Lcom/android/ex/camera2/portability/CameraCapabilities$MeteringMode;

    goto :goto_0
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1571
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->resetTouchFocus()V

    .line 1573
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->startPreview()V

    .line 1574
    return-void
.end method

.method private startPreview()V
    .locals 4

    .prologue
    .line 1606
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_1

    .line 1607
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "attempted to start preview before camera device"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1660
    :cond_0
    :goto_0
    return-void

    .line 1612
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->checkPreviewPreconditions()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1616
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setDisplayOrientation()V

    .line 1620
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v2, :cond_2

    .line 1622
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1624
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setAeAwbLock(Z)V

    .line 1630
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersPictureSize()V

    .line 1632
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/camera/TemplatePhotoModule;->setCameraParameters(I)V

    .line 1634
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1636
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1639
    new-instance v0, Lcom/android/camera/TemplatePhotoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/TemplatePhotoModule$9;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    .line 1653
    .local v0, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1654
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1655
    invoke-interface {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto :goto_0

    .line 1657
    :cond_3
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

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
    .line 437
    iget-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 463
    :goto_0
    return-void

    .line 440
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 441
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->cancelCountDown()V

    .line 442
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->resetPreviewOverlay()V

    .line 443
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 445
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 446
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 448
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TemplatePhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->closeCamera()V

    .line 450
    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    .line 452
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 453
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->requestCameraOpen()V

    .line 454
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->clearFaces()V

    .line 455
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 456
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 459
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mMirror:Z

    .line 460
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mMirror:Z

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

    .line 2003
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2013
    :goto_0
    return-void

    .line 2006
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_1

    .line 2008
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 2011
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateCameraParametersInitialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1692
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 1693
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v2, v0, v4

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1697
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1699
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1700
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 1703
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1704
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1707
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1708
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 1710
    :cond_3
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return-void

    .line 1758
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setAutoExposureLockIfSupported()V

    .line 1759
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setAutoWhiteBalanceLockIfSupported()V

    .line 1760
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setFocusAreasIfSupported()V

    .line 1761
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setMeteringAreasIfSupported()V

    .line 1764
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1765
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1766
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1767
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1768
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 1767
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusActive(Z)V

    .line 1773
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersPictureQuality()V

    .line 1779
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersExposureCompensation()V

    .line 1782
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersSceneMode()V

    .line 1785
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersZslMode()V

    .line 1788
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersTouchAfAec()V

    .line 1790
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mContinuousFocusSupported:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    .line 1791
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateAutoFocusMoveCallback()V

    goto :goto_0

    .line 1768
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCameraParametersZoom()V
    .locals 2

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1717
    :cond_0
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2225
    iget-boolean v4, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2238
    :goto_0
    return-void

    .line 2230
    :cond_0
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2231
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2232
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2233
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2234
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2236
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegRotation:I

    .line 2237
    sget-object v4, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParametersAutoHDRMode()V
    .locals 2

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->AUTO_HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableAutoHDR(Z)V

    .line 1847
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 1915
    const/4 v0, 0x0

    .line 1916
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1917
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 1918
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 1919
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 1920
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 1921
    move v0, v3

    .line 1926
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1927
    return-void

    .line 1923
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1967
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1969
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    iget-object v5, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1970
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_flashmode_key"

    invoke-virtual {v1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 1973
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1974
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1975
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1976
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v3

    .line 1977
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v2}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 1979
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "unlock flash Required"

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1981
    :cond_0
    monitor-exit v3

    .line 1999
    :goto_0
    return-void

    .line 1981
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1983
    :cond_1
    iget-object v5, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 1984
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1985
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1986
    invoke-virtual {v0, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    move v3, v4

    .line 1984
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 1987
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1988
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1991
    :cond_4
    iget-object v5, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v6, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1992
    iget-object v5, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v5

    .line 1993
    :try_start_2
    iget-object v6, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->ON:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1994
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->RED_EYE:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .line 1995
    invoke-virtual {v0, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    move v2, v4

    .line 1993
    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 1996
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lock flash Required = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v4}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1997
    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 1991
    :cond_6
    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    goto :goto_1

    :cond_7
    move v2, v3

    .line 1995
    goto :goto_2
.end method

.method private updateParametersPictureQuality()V
    .locals 3

    .prologue
    .line 1909
    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    .line 1911
    .local v0, "jpegQuality":I
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 1912
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 12

    .prologue
    .line 1855
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v7, :cond_0

    .line 1856
    sget-object v7, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "attempting to set picture size without caemra device"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1906
    :goto_0
    return-void

    .line 1860
    :cond_0
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1861
    .local v6, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1862
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v8

    .line 1861
    invoke-static {v7, v8, v6}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 1865
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 1868
    .local v0, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1869
    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/camera/app/CameraProvider;->getCurrentCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v8

    .line 1868
    invoke-virtual {v7, v8, v0}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1876
    .local v4, "pictureSize":Lcom/android/camera/util/Size;
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1878
    sget-boolean v7, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_5:Z

    if-eqz v7, :cond_1

    .line 1879
    const-string v7, "1836x3264"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1880
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/camera/TemplatePhotoModule;->mShouldResizeTo16x9:Z

    .line 1888
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 1890
    .local v5, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    invoke-virtual {v4}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    int-to-double v10, v7

    div-double/2addr v8, v10

    .line 1889
    invoke-static {v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 1891
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1892
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v2, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1893
    sget-object v7, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1894
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1896
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v8, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1897
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1900
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v7

    if-eqz v7, :cond_3

    .line 1901
    sget-object v7, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v8, "updating aspect ratio"

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1902
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    int-to-float v8, v8

    .line 1903
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 1902
    invoke-virtual {v7, v8}, Lcom/android/camera/TemplatePhotoUI;->updatePreviewAspectRatio(F)V

    .line 1905
    :cond_3
    sget-object v7, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1865
    .end local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v4    # "pictureSize":Lcom/android/camera/util/Size;
    .end local v5    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_1

    .line 1871
    .restart local v0    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :catch_0
    move-exception v1

    .line 1872
    .local v1, "ex":Lcom/android/camera/one/OneCameraAccessException;
    iget-object v7, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto/16 :goto_0

    .line 1882
    .end local v1    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v4    # "pictureSize":Lcom/android/camera/util/Size;
    :cond_5
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/camera/TemplatePhotoModule;->mShouldResizeTo16x9:Z

    goto/16 :goto_2
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 1930
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 1932
    sget-boolean v0, Lcom/android/camera/product_utils/ProductUtil;->USE_VENDOR_HDR:Z

    if-eqz v0, :cond_0

    .line 1933
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersAutoHDRMode()V

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1937
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_1

    .line 1938
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 1943
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1944
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1953
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v0, v1, :cond_3

    .line 1955
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersFlashMode()V

    .line 1958
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1959
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1960
    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 1959
    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1964
    :goto_1
    return-void

    .line 1947
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 1948
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_1

    .line 1949
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    goto :goto_0

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_1
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 1826
    iget-boolean v3, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1827
    :cond_1
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 1828
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 1829
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1830
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 1831
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 1832
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1833
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1835
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1818
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 1820
    :cond_0
    return-void
.end method

.method private updateParametersZslMode()V
    .locals 5

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, "enableZSL":Z
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1801
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1802
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_zsl_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1805
    .end local v1    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1806
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1807
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 1808
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v2, :cond_1

    .line 1809
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2, v0}, Lcom/android/camera/FocusOverlayManager;->setIsUseZSL(Z)V

    .line 1811
    :cond_1
    return-void
.end method

.method private updateSceneMode()V
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-nez v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->NO_SCENE_MODE:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-eq v0, v1, :cond_0

    .line 1080
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/TemplatePhotoModule;->overrideCameraSettings(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 1069
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusAreaSupported:Z

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
    .line 1436
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1444
    :goto_0
    return-void

    .line 1439
    :cond_0
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Starting auto focus"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusStartTime:J

    .line 1441
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAutoFocusCallback:Lcom/android/camera/TemplatePhotoModule$AutoFocusCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1442
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1443
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    goto :goto_0
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 1448
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1452
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    .line 1453
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraParameters(I)V

    goto :goto_0
.end method

.method public capture()Z
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 1013
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "capture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    :cond_0
    move v2, v0

    .line 1038
    :goto_0
    return v2

    .line 1020
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCaptureStartTime:J

    .line 1024
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/TemplatePhotoModule;->mPostViewPictureCallbackTime:J

    .line 1025
    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFrontFlashTriggered:Z

    .line 1027
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v1}, Lcom/android/camera/async/LockableConcurrentState;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1028
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "startFlashAnimationBeforeTakePicture"

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1029
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFrontFlashTriggered:Z

    .line 1030
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->pauseFaceDetection()V

    .line 1031
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->clearFaces()V

    .line 1032
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayAsFlashRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1034
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mSceneMode:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->HDR:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    if-ne v1, v3, :cond_3

    move v0, v2

    .line 1035
    .local v0, "animateBefore":Z
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->doCapture(Z)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1412
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1413
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1415
    :cond_0
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 524
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 526
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 527
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 528
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 529
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 530
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 531
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 532
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 533
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_0

    .line 534
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 535
    new-instance v1, Lcom/android/camera/TemplatePhotoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoModule$6;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationSetCallback:Lcom/android/camera/app/CameraAppUI$BottomBarUISpec$ExposureCompensationSetCallback;

    .line 542
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 543
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->minExposureCompensation:I

    .line 544
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 545
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->maxExposureCompensation:I

    .line 546
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 547
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getExposureCompensationStep()F

    move-result v1

    iput v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->exposureCompensationStep:F

    .line 550
    :cond_0
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 551
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 553
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 555
    return-object v0

    :cond_1
    move v1, v3

    .line 530
    goto :goto_0

    :cond_2
    move v2, v3

    .line 553
    goto :goto_1
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2109
    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 516
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 517
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 517
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080274

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 344
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 510
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 353
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 355
    new-instance v2, Lcom/android/camera/TemplatePhotoUI;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/android/camera/TemplatePhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/TemplatePhotoController;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    .line 356
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 358
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 361
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_0
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraId:I

    .line 368
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 370
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v2, p0}, Lcom/android/camera/TemplatePhotoUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 372
    new-instance v2, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 373
    new-instance v2, Lcom/android/camera/SoundPlayer;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 376
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f0f00ba

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 377
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/TemplatePhotoModule$4;

    invoke-direct {v2, p0}, Lcom/android/camera/TemplatePhotoModule$4;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    return-void
.end method

.method public isCameraIdle()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2076
    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    .line 2078
    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->isFocusCompleted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 2076
    :cond_0
    :goto_0
    return v0

    .line 2078
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1101
    sget-object v2, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1102
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v2, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1105
    :cond_0
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1107
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->initializeCapabilities()V

    .line 1114
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/camera/TemplatePhotoModule;->mZoomValue:F

    .line 1115
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-nez v2, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->initializeFocusManager()V

    .line 1118
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 1121
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1122
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1124
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1127
    :cond_2
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1128
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1133
    :cond_3
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1135
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1136
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/camera/TemplatePhotoModule;->setCameraParameters(I)V

    .line 1140
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraPreviewParamsReady:Z

    .line 1142
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->startPreview()V

    .line 1144
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1146
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->onCameraOpened()V

    .line 1148
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1149
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 1151
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1152
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1244
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1245
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1246
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1247
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1251
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1480
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1508
    :cond_0
    :goto_0
    return v0

    .line 1481
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1508
    goto :goto_0

    .line 1485
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_2

    .line 1486
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1487
    invoke-virtual {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1491
    goto :goto_0

    .line 1493
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1494
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1500
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 1504
    invoke-virtual {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1481
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

    .line 1513
    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v2, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v0

    .line 1514
    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1533
    goto :goto_0

    .line 1517
    :sswitch_0
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_3

    .line 1518
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1519
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->cancelCountDown()V

    goto :goto_0

    .line 1521
    :cond_2
    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    .line 1522
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->onShutterButtonClick()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1526
    goto :goto_0

    .line 1528
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    .line 1529
    invoke-virtual {p0, v1}, Lcom/android/camera/TemplatePhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_0

    .line 1514
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
    .line 1419
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setDisplayOrientation()V

    .line 1420
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2120
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2114
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2115
    return-void

    .line 2114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2222
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2218
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 425
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 424
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->stopPreview()V

    goto :goto_0
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->startPreview()V

    .line 416
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 1233
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1234
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1240
    :cond_0
    :goto_0
    return-void

    .line 1236
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1237
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 2145
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/TemplatePhotoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoModule$10;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2151
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1677
    const-string v0, "pref_camera_flashmode_key"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1678
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->updateParametersFlashMode()V

    .line 1681
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1682
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraParametersWhenIdle(I)V

    .line 1687
    :cond_1
    :goto_0
    return-void

    .line 1684
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_1

    .line 1685
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1169
    iget-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1171
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1172
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    .line 1205
    :goto_0
    return-void

    .line 1176
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1179
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 1180
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1181
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1180
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1182
    iput-boolean v6, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 1185
    :cond_2
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/TemplatePhotoModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1188
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1189
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1190
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 1192
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    .line 1193
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1194
    .local v0, "countDownDuration":I
    iput v0, p0, Lcom/android/camera/TemplatePhotoModule;->mTimerDuration:I

    .line 1195
    if-lez v0, :cond_3

    .line 1197
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1198
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 1199
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 1200
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/TemplatePhotoUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 1203
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 1163
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1165
    :goto_0
    return-void

    .line 1164
    :cond_0
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 1210
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 1158
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1458
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-nez v0, :cond_1

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 1470
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 2095
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2105
    :cond_0
    :goto_0
    return-void

    .line 2098
    :cond_1
    iput p1, p0, Lcom/android/camera/TemplatePhotoModule;->mZoomValue:F

    .line 2099
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2104
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1356
    sget-object v1, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "pause"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1357
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    .line 1359
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1360
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1363
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1364
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1368
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 1369
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1375
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->stopPreview()V

    .line 1376
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->cancelCountDown()V

    .line 1378
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_1

    .line 1379
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1380
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1383
    :cond_1
    iput-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1386
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1388
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    if-eqz v1, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/app/MotionManager;->removeListener(Lcom/android/camera/app/MotionManager$MotionListener;)V

    .line 1390
    iput-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mMotionManager:Lcom/android/camera/app/MotionManager;

    .line 1393
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->closeCamera()V

    .line 1394
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1395
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->onPause()V

    .line 1397
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPendingSwitchCameraId:I

    .line 1398
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_3

    .line 1399
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1401
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1402
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1403
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1405
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1406
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1407
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1255
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    .line 1257
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1259
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1262
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 1266
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1270
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1271
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_2

    .line 1300
    :goto_0
    return-void

    .line 1276
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->requestCameraOpen()V

    .line 1278
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/TemplatePhotoModule;->mJpegPictureCallbackTime:J

    .line 1279
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/TemplatePhotoModule;->mZoomValue:F

    .line 1281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/TemplatePhotoModule;->mOnResumeTime:J

    .line 1282
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->checkDisplayRotation()V

    .line 1286
    iget-boolean v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_3

    .line 1287
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1296
    :goto_1
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1298
    invoke-virtual {p0}, Lcom/android/camera/TemplatePhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1299
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    goto :goto_0

    .line 1289
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2124
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 2125
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 6
    .param p1, "value"    # I

    .prologue
    .line 2021
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v0

    .line 2022
    .local v0, "max":I
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v1

    .line 2023
    .local v1, "min":I
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    .line 2024
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, p1}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2025
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2026
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2031
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :goto_0
    return-void

    .line 2029
    :cond_0
    sget-object v3, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1064
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/TemplatePhotoModule;->setCameraParameters(I)V

    .line 1065
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2242
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/TemplatePhotoUI;->setOrientation(IZ)V

    .line 2243
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 621
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 625
    iput-boolean v3, p0, Lcom/android/camera/TemplatePhotoModule;->mFaceDetectionStarted:Z

    .line 626
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    iget v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayOrientation:I

    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->isCameraFrontFacing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/TemplatePhotoUI;->onStartFaceDetection(IZ)V

    .line 627
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/TemplatePhotoUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 628
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/TemplatePhotoUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 630
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 631
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 430
    return-void
.end method

.method public startReceivedMetadataCallback()V
    .locals 3

    .prologue
    .line 2154
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 2192
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mReceivedMetadataStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2159
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mReceivedMetadataStarted:Z

    .line 2161
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-nez v0, :cond_2

    .line 2162
    new-instance v0, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    new-instance v1, Lcom/android/camera/TemplatePhotoModule$11;

    invoke-direct {v1, p0}, Lcom/android/camera/TemplatePhotoModule$11;-><init>(Lcom/android/camera/TemplatePhotoModule;)V

    invoke-direct {v0, v1}, Lcom/android/ex/camera2/portability/MetadataCallbackProxy;-><init>(Lcom/android/ex/camera2/portability/MetadataCallbackProxy$OnMetadataChangedListener;)V

    iput-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2190
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 637
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 641
    iput-boolean v2, p0, Lcom/android/camera/TemplatePhotoModule;->mFaceDetectionStarted:Z

    .line 642
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v1, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 643
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 644
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->setFaceView(Lcom/android/camera/ui/FaceView;)V

    .line 645
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/TemplatePhotoUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 646
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->clearFaces()V

    .line 647
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mUI:Lcom/android/camera/TemplatePhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/TemplatePhotoUI;->onStopFaceDetection()V

    .line 648
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1664
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraState:I

    if-eqz v0, :cond_0

    .line 1665
    sget-object v0, Lcom/android/camera/TemplatePhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1668
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/camera/TemplatePhotoModule;->setCameraState(I)V

    .line 1669
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_1

    .line 1670
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1672
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1673
    return-void
.end method

.method public stopReceivedMetadataCallback()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 2195
    iget-boolean v0, p0, Lcom/android/camera/TemplatePhotoModule;->mReceivedMetadataStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2199
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METADATA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2200
    iput-boolean v3, p0, Lcom/android/camera/TemplatePhotoModule;->mReceivedMetadataStarted:Z

    .line 2201
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    if-eqz v0, :cond_2

    .line 2202
    iput-object v2, p0, Lcom/android/camera/TemplatePhotoModule;->mMetadataCallbackProxy:Lcom/android/ex/camera2/portability/MetadataCallbackProxy;

    .line 2204
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setMetadataCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraMetaDataCallback;)V

    .line 2206
    iget-object v1, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    monitor-enter v1

    .line 2207
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/LockableConcurrentState;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2208
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/async/LockableConcurrentState;->lock(Ljava/lang/Object;)V

    .line 2212
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2210
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDetectedFlashRequired:Lcom/android/camera/async/LockableConcurrentState;

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
    .line 1424
    iget v0, p0, Lcom/android/camera/TemplatePhotoModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1425
    invoke-direct {p0}, Lcom/android/camera/TemplatePhotoModule;->setDisplayOrientation()V

    .line 1427
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/camera/TemplatePhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 566
    return-void
.end method
