.class public Lcom/android/camera/PIPPhotoModule;
.super Lcom/android/camera/CameraModule;
.source "PIPPhotoModule.java"

# interfaces
.implements Lcom/android/camera/PIPPhotoController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;,
        Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;,
        Lcom/android/camera/PIPPhotoModule$ResizeBundle;,
        Lcom/android/camera/PIPPhotoModule$RawPictureCallback;,
        Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;,
        Lcom/android/camera/PIPPhotoModule$ShutterCallback;,
        Lcom/android/camera/PIPPhotoModule$MainHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_IMAGE_PREFIX:Ljava/lang/String; = "DEBUG_"

.field private static final MAIN_CAMERA_INDEX:I = 0x0

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final PIP_CAMERA_COUNT:I = 0x2

.field private static final PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

.field private static final PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

.field private static final SUB_CAMERA_INDEX:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field static mFocusFinish:[Z

.field private static mMainCameraJpeg:[B

.field private static mSubCameraJpeg:[B


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAppController:Lcom/android/camera/app/AppController;

.field private final mAutoFocusCallback:[Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:[J

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContinuousFocusSupported:[Z

.field private mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mDebugUri:Landroid/net/Uri;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field private mFaceDetectionStarted:[Z

.field private mFirstTimeInitialized:Z

.field private mFocusStartTime:[J

.field private mFrontCameraMirrorEnabled:Z

.field private mGLPreviewHeight:I

.field protected mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

.field private mGLPreviewWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field public mJpegCallbackFinishTime:J

.field private mJpegPictureCallbackTime:J

.field private mJpegRotation:[I

.field private mMirror:Z

.field private mMotionManager:Lcom/android/camera/app/MotionManager;

.field private mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

.field private final mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field protected mOrientation:I

.field protected mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field protected mPIPModeState:I

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private final mPostViewPictureCallback:Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;

.field private mPostViewPictureCallbackTime:J

.field private final mRawPictureCallback:Lcom/android/camera/PIPPhotoModule$RawPictureCallback;

.field private mRawPictureCallbackTime:J

.field private mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShouldResizeTo16x9:Z

.field private mShutterCallbackTime:J

.field public mShutterLag:J

.field public mShutterToPictureDisplayedTime:J

.field private mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mSnapshotOnIdle:Z

.field private final mSubAutoFocusMoveCallback:Ljava/lang/Object;

.field private mSubCameraId:I

.field private mTimerDuration:I

.field private mUI:Lcom/android/camera/PIPPhotoUI;

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
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPPhoto"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 252
    const/4 v0, 0x2

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/camera/PIPPhotoModule;->mFocusFinish:[Z

    .line 254
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    sput-object v0, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    .line 255
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/PIPPhotoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 8
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 389
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 118
    new-array v0, v5, [Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 124
    new-array v0, v5, [Lcom/android/ex/camera2/portability/CameraCapabilities;

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 125
    new-array v0, v5, [Lcom/android/ex/camera2/portability/CameraSettings;

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    .line 134
    iput v7, p0, Lcom/android/camera/PIPPhotoModule;->mPendingSwitchCameraId:I

    .line 143
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mVolumeButtonClickedFlag:Z

    .line 145
    new-array v0, v5, [Z

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mContinuousFocusSupported:[Z

    .line 147
    new-array v0, v5, [Z

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mFaceDetectionStarted:[Z

    .line 155
    new-instance v0, Lcom/android/camera/PIPPhotoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPPhotoModule$1;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 168
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mJpegRotation:[I

    .line 171
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mFrontCameraMirrorEnabled:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mCompassTagEnabled:Z

    .line 175
    iput v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    .line 176
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mSnapshotOnIdle:Z

    .line 182
    new-instance v0, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Lcom/android/camera/PIPPhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;

    .line 184
    new-instance v0, Lcom/android/camera/PIPPhotoModule$RawPictureCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PIPPhotoModule$RawPictureCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Lcom/android/camera/PIPPhotoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mRawPictureCallback:Lcom/android/camera/PIPPhotoModule$RawPictureCallback;

    .line 186
    new-array v0, v5, [Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    new-instance v2, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    .line 187
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Ljava/lang/String;)V

    aput-object v2, v0, v4

    new-instance v2, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    .line 188
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Ljava/lang/String;)V

    aput-object v2, v0, v6

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusCallback:[Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    .line 190
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PIPPhotoModule;I)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 195
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;

    invoke-direct {v1, p0, v6}, Lcom/android/camera/PIPPhotoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PIPPhotoModule;I)V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSubAutoFocusMoveCallback:Ljava/lang/Object;

    .line 200
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 202
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mFocusStartTime:[J

    .line 213
    new-array v0, v5, [J

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusTime:[J

    .line 227
    new-array v0, v5, [Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 229
    new-instance v0, Lcom/android/camera/PIPPhotoModule$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPPhotoModule$MainHandler;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    .line 237
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraPreviewParamsReady:Z

    .line 244
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 245
    iput v7, p0, Lcom/android/camera/PIPPhotoModule;->mPIPModeState:I

    .line 258
    new-instance v0, Lcom/android/camera/PIPPhotoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPPhotoModule$2;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 291
    iput-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mShouldResizeTo16x9:Z

    .line 543
    new-instance v0, Lcom/android/camera/PIPPhotoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPPhotoModule$5;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 390
    return-void

    :cond_1
    move-object v0, v1

    .line 190
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/PIPPhotoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->getModeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/PIPPhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mShutterCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/camera/PIPPhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/PIPPhotoModule;->mShutterCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->animateAfterShutter()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PIPPhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mPostViewPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/android/camera/PIPPhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/PIPPhotoModule;->mPostViewPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/android/camera/PIPPhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mRawPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/camera/PIPPhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/PIPPhotoModule;->mRawPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1500()[B
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->mSubCameraJpeg:[B

    return-object v0
.end method

.method static synthetic access$1502([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 93
    sput-object p0, Lcom/android/camera/PIPPhotoModule;->mSubCameraJpeg:[B

    return-object p0
.end method

.method static synthetic access$1600()[B
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->mMainCameraJpeg:[B

    return-object v0
.end method

.method static synthetic access$1602([B)[B
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 93
    sput-object p0, Lcom/android/camera/PIPPhotoModule;->mMainCameraJpeg:[B

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/camera/PIPPhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/PIPPhotoModule;->takePictureWithDevice(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/PIPPhotoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mJpegPictureCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/android/camera/PIPPhotoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # J

    .prologue
    .line 93
    iput-wide p1, p0, Lcom/android/camera/PIPPhotoModule;->mJpegPictureCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->setupPreview()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/PhotoModule$NamedImages;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mOnMediaSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PIPPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mFrontCameraMirrorEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PIPPhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PIPPhotoModule;)[J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mFocusStartTime:[J

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PIPPhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/PIPPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mSnapshotOnIdle:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/PIPPhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/PIPPhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PIPPhotoModule;)[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->focusAndCapture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->onError()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PIPPhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/camera/PIPPhotoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$900()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 673
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 674
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PIPPhotoModule$6;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoModule$6;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 681
    return-void
.end method

.method private animateAfterShutter()V
    .locals 1

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoUI;->animateFlash()V

    .line 992
    return-void
.end method

.method private canTakePicture()Z
    .locals 4

    .prologue
    .line 1439
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1440
    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    const-wide/32 v2, 0x2faf080

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 1439
    :goto_0
    return v0

    .line 1440
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelCountDown()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 444
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoUI;->cancelCountDown()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 449
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->changePIPModeOptions(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 451
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 452
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 454
    return-void
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 304
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->setDisplayOrientation()V

    .line 306
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PIPPhotoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PIPPhotoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoModule$3;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1602
    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1623
    :goto_0
    return v2

    .line 1606
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 1607
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 1608
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreview: camera device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not ready yet."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1606
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1613
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1614
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_3

    .line 1615
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview: surfaceTexture is not ready."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1619
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraPreviewParamsReady:Z

    if-nez v3, :cond_4

    .line 1620
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview: parameters for preview is not ready."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1623
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1546
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 1547
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1548
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->stopFaceDetection()V

    .line 1549
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1550
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1552
    if-nez v0, :cond_2

    .line 1553
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1557
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object v3, v1, v0

    .line 1546
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1554
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseSubCamera(I)V

    goto :goto_1

    .line 1560
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1564
    return-void
.end method

.method private couldUpdateSettings()Z
    .locals 3

    .prologue
    .line 1782
    const/4 v0, 0x0

    .line 1783
    .local v0, "couldUpdate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1784
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1783
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1786
    :cond_1
    return v0
.end method

.method private cropJpegDataToAspectRatio(Lcom/android/camera/PIPPhotoModule$ResizeBundle;)Lcom/android/camera/PIPPhotoModule$ResizeBundle;
    .locals 14
    .param p1, "dataBundle"    # Lcom/android/camera/PIPPhotoModule$ResizeBundle;

    .prologue
    .line 776
    iget-object v1, p1, Lcom/android/camera/PIPPhotoModule$ResizeBundle;->jpegData:[B

    .line 777
    .local v1, "jpegData":[B
    iget-object v0, p1, Lcom/android/camera/PIPPhotoModule$ResizeBundle;->exif:Lcom/android/camera/exif/ExifInterface;

    .line 778
    .local v0, "exif":Lcom/android/camera/exif/ExifInterface;
    iget v9, p1, Lcom/android/camera/PIPPhotoModule$ResizeBundle;->targetAspectRatio:F

    .line 780
    .local v9, "targetAspectRatio":F
    const/4 v12, 0x0

    array-length v13, v1

    invoke-static {v1, v12, v13}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 781
    .local v4, "original":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 782
    .local v6, "originalWidth":I
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 786
    .local v5, "originalHeight":I
    if-le v6, v5, :cond_1

    .line 787
    int-to-float v12, v6

    div-float/2addr v12, v9

    float-to-int v2, v12

    .line 788
    .local v2, "newHeight":I
    move v3, v6

    .line 793
    .local v3, "newWidth":I
    :goto_0
    sub-int v12, v6, v3

    div-int/lit8 v10, v12, 0x2

    .line 794
    .local v10, "xOffset":I
    sub-int v12, v5, v2

    div-int/lit8 v11, v12, 0x2

    .line 796
    .local v11, "yOffset":I
    if-ltz v10, :cond_0

    if-gez v11, :cond_2

    .line 808
    :cond_0
    :goto_1
    return-object p1

    .line 790
    .end local v2    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v10    # "xOffset":I
    .end local v11    # "yOffset":I
    :cond_1
    int-to-float v12, v5

    div-float/2addr v12, v9

    float-to-int v3, v12

    .line 791
    .restart local v3    # "newWidth":I
    move v2, v5

    .restart local v2    # "newHeight":I
    goto :goto_0

    .line 800
    .restart local v10    # "xOffset":I
    .restart local v11    # "yOffset":I
    :cond_2
    invoke-static {v4, v10, v11, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 801
    .local v7, "resized":Landroid/graphics/Bitmap;
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_X_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 802
    sget v12, Lcom/android/camera/exif/ExifInterface;->TAG_PIXEL_Y_DIMENSION:I

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v12, v13}, Lcom/android/camera/exif/ExifInterface;->setTagValue(ILjava/lang/Object;)Z

    .line 804
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 806
    .local v8, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v12, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v13, 0x5a

    invoke-virtual {v7, v12, v13, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 807
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, p1, Lcom/android/camera/PIPPhotoModule$ResizeBundle;->jpegData:[B

    goto :goto_1
.end method

.method private focusAndCapture()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1191
    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1192
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mSnapshotOnIdle:Z

    .line 1208
    :cond_0
    return-void

    .line 1196
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mSnapshotOnIdle:Z

    .line 1197
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 1198
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1201
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting auto focus for device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1202
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFocusStartTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1204
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusCallback:[Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 1205
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1206
    invoke-direct {p0, v4}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getModeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2264
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v0, v1, :cond_1

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2267
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initializeCapabilities(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 2144
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    aput-object v1, v0, p1

    .line 2145
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mContinuousFocusSupported:[Z

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 2146
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 655
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 657
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 659
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    .line 660
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->addIdleHandler()V

    .line 662
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 669
    new-instance v0, Lcom/android/camera/PhotoModule$NamedImages;

    invoke-direct {v0}, Lcom/android/camera/PhotoModule$NamedImages;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 670
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1291
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1290
    return v0
.end method

.method private isCameraFrontFacing(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1298
    return v0
.end method

.method private isResumeFromLockscreen()Z
    .locals 2

    .prologue
    .line 1343
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1344
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    .line 1345
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1344
    :goto_0
    return v1

    .line 1345
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->openCameraCommon()V

    .line 494
    return-void
.end method

.method private onError()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 289
    return-void
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 462
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 463
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 466
    invoke-direct {p0, v1}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 467
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->startFaceDetection()V

    .line 468
    return-void
.end method

.method private openCameraCommon()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoUI;->lockZoom()V

    .line 638
    return-void
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 530
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 533
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 532
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 531
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 534
    return-void
.end method

.method private requestSubCameraOpen()V
    .locals 3

    .prologue
    .line 537
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestSubCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mSubCameraId:I

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 540
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 539
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 538
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestSubCamera(IZ)V

    .line 541
    return-void
.end method

.method private saveToDebugUri([B)V
    .locals 4
    .param p1, "data"    # [B

    .prologue
    .line 2170
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mDebugUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 2171
    const/4 v1, 0x0

    .line 2173
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mDebugUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2174
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2175
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2179
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    .line 2182
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 2176
    .restart local v1    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 2177
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Exception while writing debug jpeg file"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2179
    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Lcom/android/camera/util/CameraUtil;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method

.method private setCameraParameters(I)V
    .locals 3
    .param p1, "updateSet"    # I

    .prologue
    .line 2094
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 2095
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateCameraParametersInitialize()V

    .line 2098
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 2099
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateCameraParametersZoom()V

    .line 2102
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 2103
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateCameraParametersPreference()V

    .line 2106
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 2107
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 2108
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2106
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2111
    :cond_4
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 2116
    iget v0, p0, Lcom/android/camera/PIPPhotoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PIPPhotoModule;->mUpdateSet:I

    .line 2117
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 2120
    :cond_0
    iput v2, p0, Lcom/android/camera/PIPPhotoModule;->mUpdateSet:I

    .line 2130
    :cond_1
    :goto_0
    return-void

    .line 2122
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2123
    iget v0, p0, Lcom/android/camera/PIPPhotoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PIPPhotoModule;->setCameraParameters(I)V

    .line 2124
    iput v2, p0, Lcom/android/camera/PIPPhotoModule;->mUpdateSet:I

    goto :goto_0

    .line 2126
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 974
    iput p1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    .line 975
    packed-switch p1, :pswitch_data_0

    .line 985
    :pswitch_0
    return-void

    .line 975
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
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1567
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    .line 1568
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1569
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1570
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayOrientation:I

    .line 1571
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/PIPPhotoUI;->setDisplayOrientation(I)V

    .line 1578
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1583
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 1584
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1587
    :cond_1
    return-void
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1591
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1595
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->startPreview()V

    .line 1596
    return-void
.end method

.method private startPreview()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1630
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 1631
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v7

    if-nez v0, :cond_1

    .line 1632
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "attempted to start preview before camera device"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1728
    :cond_0
    :goto_1
    return-void

    .line 1630
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1638
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->checkPreviewPreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->setDisplayOrientation()V

    .line 1646
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_4

    .line 1647
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_3

    .line 1648
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1646
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1659
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateParametersPictureSize()V

    .line 1661
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PIPPhotoModule;->setCameraParameters(I)V

    .line 1663
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1664
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v0, :cond_5

    .line 1666
    :try_start_0
    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewWidth:I

    iget v3, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewHeight:I

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-boolean v5, Lcom/android/camera/product_utils/ProductUtil;->USE_WITH_18x9_LAYOUT_IN_PIP:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/pip/opengl/GLRenderer;-><init>(Lcom/android/camera/CameraActivity;IILcom/android/camera/pip/opengl/GLRenderer$PIPMode;Z)V

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 1667
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1668
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->getModeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 1669
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1670
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->releasePreviewRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1673
    :catch_0
    move-exception v6

    .line 1674
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init PreviewRender Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1678
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1679
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v11

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->getSlaveInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1684
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1686
    new-instance v9, Lcom/android/camera/PIPPhotoModule$7;

    invoke-direct {v9, p0}, Lcom/android/camera/PIPPhotoModule$7;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    .line 1705
    .local v9, "startSubPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    new-instance v8, Lcom/android/camera/PIPPhotoModule$8;

    invoke-direct {v8, p0, v9}, Lcom/android/camera/PIPPhotoModule$8;-><init>(Lcom/android/camera/PIPPhotoModule;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 1719
    .local v8, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1720
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1721
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1722
    invoke-interface {v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto/16 :goto_1

    .line 1725
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_1
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    .line 497
    iget-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 523
    :goto_0
    return-void

    .line 500
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 501
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->cancelCountDown()V

    .line 503
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 504
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 506
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PIPPhotoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 507
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->closeCamera()V

    .line 508
    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    .line 510
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 511
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->requestCameraOpen()V

    .line 512
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v1}, Lcom/android/camera/PIPPhotoUI;->clearFaces()V

    goto :goto_0
.end method

.method private takePictureWithDevice(I)V
    .locals 12
    .param p1, "index"    # I

    .prologue
    .line 996
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TakePicture index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mCaptureStartTime:J

    .line 1000
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/PIPPhotoModule;->mPostViewPictureCallbackTime:J

    .line 1002
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    .line 1003
    .local v10, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v0, v0, p1

    invoke-static {v0, v10}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 1004
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1010
    if-nez p1, :cond_0

    iget v7, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    .line 1012
    .local v7, "id":I
    :goto_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v8

    .line 1013
    .local v8, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v11

    .line 1014
    .local v11, "sensorOrientation":I
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v6

    .line 1015
    .local v6, "deviceOrientation":I
    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v9

    .line 1016
    .local v9, "isFrontCamera":Z
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mJpegRotation:[I

    invoke-static {v11, v6, v9}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v1

    aput v1, v0, p1

    .line 1017
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mJpegRotation:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/camera/PIPPhotoModule$ShutterCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/camera/PIPPhotoModule$ShutterCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Z)V

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mRawPictureCallback:Lcom/android/camera/PIPPhotoModule$RawPictureCallback;

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mPostViewPictureCallback:Lcom/android/camera/PIPPhotoModule$PostViewPictureCallback;

    new-instance v5, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;

    invoke-direct {v5, p0, v10, p1}, Lcom/android/camera/PIPPhotoModule$JpegPictureCallback;-><init>(Lcom/android/camera/PIPPhotoModule;Landroid/location/Location;I)V

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 1019
    return-void

    .line 1010
    .end local v6    # "deviceOrientation":I
    .end local v7    # "id":I
    .end local v8    # "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    .end local v9    # "isFrontCamera":Z
    .end local v11    # "sensorOrientation":I
    :cond_0
    iget v7, p0, Lcom/android/camera/PIPPhotoModule;->mSubCameraId:I

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2075
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 2076
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 2075
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2079
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mContinuousFocusSupported:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v2, :cond_0

    .line 2080
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v2, v3, :cond_3

    .line 2081
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 2082
    .local v0, "callback":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_1

    .line 2081
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mSubAutoFocusMoveCallback:Ljava/lang/Object;

    goto :goto_2

    .line 2084
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_1

    .line 2088
    :cond_4
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1792
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 1793
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 1794
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1795
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1798
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1800
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1801
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 1804
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1805
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1808
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1809
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 1812
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1813
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCustomizePipFps(Z)V

    .line 1792
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1816
    .end local v0    # "fpsRange":[I
    :cond_5
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 1830
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1862
    :goto_0
    return-void

    .line 1839
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1840
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 1841
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1842
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1839
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1844
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_2

    .line 1849
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateParametersPictureQuality()V

    .line 1856
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateParametersSceneMode()V

    .line 1859
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateParametersZslMode()V

    .line 1861
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->updateAutoFocusMoveCallback()V

    goto :goto_0
.end method

.method private updateCameraParametersZoom()V
    .locals 3

    .prologue
    .line 1820
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1821
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1822
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mZoomValue:F

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1820
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1825
    :cond_1
    return-void
.end method

.method private updateParametersPictureQuality()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2018
    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    invoke-static {v2, v3}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 2020
    .local v1, "jpegQuality":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 2021
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 2020
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2023
    :cond_0
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 30

    .prologue
    .line 1886
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_2

    .line 1887
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    if-nez v26, :cond_1

    .line 1888
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, "attempting to set picture size without caemra device"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2015
    :cond_0
    return-void

    .line 1886
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1893
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    sget-object v27, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    sget-object v27, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v26

    if-eqz v26, :cond_5

    const/4 v9, 0x1

    .line 1896
    .local v9, "isSupportPIPCusSize":Z
    :goto_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v22, v0

    .line 1897
    .local v22, "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v12, v0, [Lcom/android/camera/util/Size;

    .line 1898
    .local v12, "pictureSize":[Lcom/android/camera/util/Size;
    const v21, 0x7fffffff

    .line 1899
    .local v21, "smallestPixNum":I
    const/16 v23, 0x0

    .line 1900
    .local v23, "targetIndex":I
    const/16 v24, 0x0

    .line 1901
    .local v24, "targetSize":Lcom/android/camera/util/Size;
    const/16 v16, 0x0

    .line 1903
    .local v16, "selectCusSizeSuccess":Z
    if-eqz v9, :cond_6

    .line 1904
    const/4 v7, 0x0

    :goto_2
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_6

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPictureSizeForListPIP()Ljava/util/List;

    move-result-object v19

    .line 1906
    .local v19, "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const/16 v17, 0x0

    .line 1907
    .local v17, "selectSize":Lcom/android/ex/camera2/portability/Size;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/ex/camera2/portability/Size;

    .line 1908
    .local v15, "s":Lcom/android/ex/camera2/portability/Size;
    new-instance v27, Lcom/android/camera/util/Size;

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v28

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v29

    invoke-direct/range {v27 .. v29}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static/range {v27 .. v27}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v4

    .line 1909
    .local v4, "aspectRatio":Lcom/android/camera/exif/Rational;
    sget-object v27, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1912
    move-object/from16 v17, v15

    .line 1913
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "select pictureSize from parameter: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " x "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1917
    .end local v4    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v15    # "s":Lcom/android/ex/camera2/portability/Size;
    :cond_4
    new-instance v26, Lcom/android/camera/util/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v26, v12, v7

    .line 1918
    const/16 v16, 0x1

    .line 1904
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1893
    .end local v9    # "isSupportPIPCusSize":Z
    .end local v12    # "pictureSize":[Lcom/android/camera/util/Size;
    .end local v16    # "selectCusSizeSuccess":Z
    .end local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .end local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    .end local v21    # "smallestPixNum":I
    .end local v22    # "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v23    # "targetIndex":I
    .end local v24    # "targetSize":Lcom/android/camera/util/Size;
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 1922
    .restart local v9    # "isSupportPIPCusSize":Z
    .restart local v12    # "pictureSize":[Lcom/android/camera/util/Size;
    .restart local v16    # "selectCusSizeSuccess":Z
    .restart local v21    # "smallestPixNum":I
    .restart local v22    # "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .restart local v23    # "targetIndex":I
    .restart local v24    # "targetSize":Lcom/android/camera/util/Size;
    :cond_6
    if-nez v16, :cond_c

    .line 1924
    const/4 v7, 0x0

    :goto_3
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_a

    .line 1925
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    aput-object v26, v22, v7

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v27

    aget-object v28, v22, v7

    invoke-static/range {v26 .. v28}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 1928
    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    .line 1930
    .local v8, "id":I
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/PIPPhotoModule;->isCameraFrontFacing(I)Z

    move-result v26

    if-eqz v26, :cond_9

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 1931
    .local v5, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v26

    aget-object v27, v22, v7

    sget-object v28, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/settings/ResolutionSetting;->getPIPPictureSize(Lcom/android/camera/one/OneCamera$Facing;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;

    move-result-object v26

    aput-object v26, v12, v7

    .line 1932
    aget-object v26, v12, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->width()I

    move-result v26

    aget-object v27, v12, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->height()I

    move-result v27

    mul-int v13, v26, v27

    .line 1933
    .local v13, "pixNum":I
    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 1934
    move/from16 v21, v13

    .line 1935
    move/from16 v23, v7

    .line 1936
    aget-object v24, v12, v7

    .line 1924
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1928
    .end local v5    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v8    # "id":I
    .end local v13    # "pixNum":I
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/PIPPhotoModule;->mSubCameraId:I

    goto :goto_4

    .line 1930
    .restart local v8    # "id":I
    :cond_9
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_5

    .line 1940
    .end local v8    # "id":I
    :cond_a
    const/4 v7, 0x0

    :goto_6
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 1942
    move/from16 v0, v23

    if-eq v7, v0, :cond_b

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v26

    aget-object v27, v22, v7

    sget-object v28, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;->selectTheClosestSize(Lcom/android/camera/util/Size;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;

    move-result-object v18

    .line 1944
    .local v18, "size":Lcom/android/camera/util/Size;
    if-eqz v18, :cond_b

    .line 1945
    aput-object v18, v12, v7

    .line 1940
    .end local v18    # "size":Lcom/android/camera/util/Size;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1951
    :cond_c
    const/4 v7, 0x0

    :goto_7
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_0

    .line 1952
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "after pictureSize: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v12, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " x "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v12, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    aget-object v27, v12, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 1958
    .local v20, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v10, 0x0

    .line 1959
    .local v10, "optimalSize":Lcom/android/camera/util/Size;
    if-eqz v9, :cond_f

    .line 1960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPreviewSizeListForPIP()Ljava/util/List;

    move-result-object v19

    .line 1961
    .restart local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const/16 v17, 0x0

    .line 1962
    .restart local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_d
    :goto_8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/ex/camera2/portability/Size;

    .line 1963
    .restart local v15    # "s":Lcom/android/ex/camera2/portability/Size;
    new-instance v27, Lcom/android/camera/util/Size;

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v28

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v29

    invoke-direct/range {v27 .. v29}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static/range {v27 .. v27}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v4

    .line 1964
    .restart local v4    # "aspectRatio":Lcom/android/camera/exif/Rational;
    sget-object v27, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1967
    move-object/from16 v17, v15

    .line 1968
    goto :goto_8

    .line 1969
    .end local v4    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v15    # "s":Lcom/android/ex/camera2/portability/Size;
    :cond_e
    new-instance v10, Lcom/android/camera/util/Size;

    .end local v10    # "optimalSize":Lcom/android/camera/util/Size;
    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v26

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v10, v0, v1}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1972
    .end local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .end local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    .restart local v10    # "optimalSize":Lcom/android/camera/util/Size;
    :cond_f
    if-nez v10, :cond_10

    .line 1973
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, " not support PIP cus size or not have expected ratio"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1977
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    sget-object v27, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 1978
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v25

    .line 1979
    .local v25, "width":I
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    .line 1986
    .local v6, "height":I
    :goto_9
    new-instance v10, Lcom/android/camera/util/Size;

    .end local v10    # "optimalSize":Lcom/android/camera/util/Size;
    move/from16 v0, v25

    invoke-direct {v10, v0, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1989
    .end local v6    # "height":I
    .end local v25    # "width":I
    .restart local v10    # "optimalSize":Lcom/android/camera/util/Size;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewWidth:I

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PIPPhotoModule;->mGLPreviewHeight:I

    .line 1992
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 1993
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PIP preview is not supported, ori optimalSize "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1994
    aget-object v26, v12, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->width()I

    move-result v26

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aget-object v28, v12, v7

    invoke-virtual/range {v28 .. v28}, Lcom/android/camera/util/Size;->height()I

    move-result v28

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-object/from16 v0, v20

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v10

    .line 1995
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "PIP preview size is not supported, select optimalSize "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1998
    :cond_11
    new-instance v11, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1999
    .local v11, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v10, v11}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 2000
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setting preview size. optimal: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "original: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v27

    aput-object v27, v26, v7

    .line 2008
    :cond_12
    sget-boolean v26, Lcom/android/camera/product_utils/ProductUtil;->USE_WITH_18x9_LAYOUT_IN_PIP:Z

    if-eqz v26, :cond_14

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_18x9:Lcom/android/camera/exif/Rational;

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/PIPPhotoUI;->updatePreviewAspectRatio(F)V

    .line 2013
    :goto_a
    sget-object v26, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Preview size is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1951
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    .line 1982
    .end local v11    # "original":Lcom/android/camera/util/Size;
    :cond_13
    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v14

    .line 1983
    .local v14, "profile":Landroid/media/CamcorderProfile;
    iget v0, v14, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v25, v0

    .line 1984
    .restart local v25    # "width":I
    iget v6, v14, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .restart local v6    # "height":I
    goto/16 :goto_9

    .line 2011
    .end local v6    # "height":I
    .end local v14    # "profile":Landroid/media/CamcorderProfile;
    .end local v25    # "width":I
    .restart local v11    # "original":Lcom/android/camera/util/Size;
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/PIPPhotoUI;->updatePreviewAspectRatio(F)V

    goto :goto_a
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 2027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 2029
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    .line 2031
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2032
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    .line 2035
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2036
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 2037
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 2042
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2043
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2052
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_4

    .line 2055
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2056
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2063
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2064
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2027
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 2046
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    aput-object v2, v1, v0

    .line 2047
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 2048
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    goto :goto_1

    .line 2066
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_2

    .line 2070
    :cond_7
    return-void
.end method

.method private updateParametersShutterSound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2188
    iget-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v4, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2189
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_2

    .line 2190
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    if-eqz v4, :cond_0

    .line 2189
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2192
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v4, :cond_0

    .line 2193
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    .line 2194
    .local v3, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v3, :cond_0

    .line 2195
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v2

    .line 2196
    .local v2, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2197
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    const-string v5, "default_scope"

    const-string v6, "pref_shutter_sound_key"

    invoke-virtual {v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2199
    .local v0, "enable":Z
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v7

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    .line 2200
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v7}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersZslMode()V
    .locals 6

    .prologue
    .line 1868
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 1869
    const/4 v0, 0x0

    .line 1870
    .local v0, "enableZSL":Z
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1871
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1872
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v3, "default_scope"

    const-string v4, "pref_camera_zsl_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1874
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable ZSL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1875
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1876
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 1868
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1878
    .end local v0    # "enableZSL":Z
    :cond_1
    return-void
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 1049
    const/4 v0, 0x0

    return v0
.end method

.method public autoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1446
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1447
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1446
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1450
    :cond_0
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Starting auto focus"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1451
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFocusStartTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1452
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAutoFocusCallback:[Lcom/android/camera/PIPPhotoModule$AutoFocusCallback;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    goto :goto_1

    .line 1454
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1455
    invoke-direct {p0, v4}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1456
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 1460
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1461
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1460
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1464
    :cond_0
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Starting cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1465
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFocusStartTime:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 1466
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    goto :goto_1

    .line 1469
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1470
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PIPPhotoModule;->setCameraParameters(I)V

    .line 1471
    return-void
.end method

.method public capture()Z
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 1023
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "capture  cameraState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-eq v1, v4, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return v0

    .line 1031
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1033
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->animateAfterShutter()V

    .line 1035
    invoke-direct {p0, v0}, Lcom/android/camera/PIPPhotoModule;->takePictureWithDevice(I)V

    .line 1037
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    iget-wide v2, p0, Lcom/android/camera/PIPPhotoModule;->mCaptureStartTime:J

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/PhotoModule$NamedImages;->nameNewImage(J)V

    .line 1039
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 2242
    const/4 v0, 0x1

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2259
    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1424
    :cond_0
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 617
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 619
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 620
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 621
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 622
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 623
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 624
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 625
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 626
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 627
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getSecondBackCameraId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 628
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 629
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 630
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 632
    return-object v0
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 2150
    iget v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 607
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 609
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 610
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 610
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 395
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 394
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 602
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 403
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 404
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->initSubCameraControllerIfNeed()Z

    move-result v3

    .line 405
    .local v3, "success":Z
    if-nez v3, :cond_0

    sget-object v4, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "initSubCameraController Failed"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 406
    :cond_0
    const/4 v1, 0x0

    .line 407
    .local v1, "orientation":I
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 408
    :cond_1
    new-instance v4, Lcom/android/camera/PIPPhotoUI;

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v6, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-direct {v4, v5, p0, v6, v1}, Lcom/android/camera/PIPPhotoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PIPPhotoController;Landroid/view/View;I)V

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    .line 409
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 411
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 414
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->shouldShowAspectRatioDialog()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 416
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraId:I

    .line 422
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v4

    iput v4, p0, Lcom/android/camera/PIPPhotoModule;->mSubCameraId:I

    .line 424
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 426
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v4, p0}, Lcom/android/camera/PIPPhotoUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 428
    new-instance v4, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 429
    new-instance v4, Lcom/android/camera/SoundPlayer;

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 432
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v5, 0x7f0f00ba

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 433
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v4, Lcom/android/camera/PIPPhotoModule$4;

    invoke-direct {v4, p0}, Lcom/android/camera/PIPPhotoModule$4;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/pip/opengl/PIPUtil;->initPIPMode(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 440
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->getModeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2134
    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

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
    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyModeListState(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2231
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 2232
    .local v0, "viewVisible":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/PIPPhotoUI;->setViewVisible(I)V

    .line 2233
    :cond_0
    return-void

    .line 2231
    .end local v0    # "viewVisible":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySwipeStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2255
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoUI;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v2, 0x0

    .line 1054
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onCameraAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1055
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1065
    :goto_0
    return-void

    .line 1058
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object p1, v0, v2

    .line 1062
    invoke-direct {p0, v2}, Lcom/android/camera/PIPPhotoModule;->initializeCapabilities(I)V

    .line 1064
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->requestSubCameraOpen()V

    goto :goto_0
.end method

.method public onCountDownFinished()V
    .locals 2

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1225
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->changePIPModeOptions(Z)V

    .line 1226
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1230
    :goto_0
    return-void

    .line 1229
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->focusAndCapture()V

    goto :goto_0
.end method

.method public onDown(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 318
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/pip/opengl/GLRenderer;->onDown(FF)Z

    move-result v0

    .line 319
    .local v0, "enabled":Z
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 321
    :cond_1
    return v0

    .end local v0    # "enabled":Z
    :cond_2
    move v0, v1

    .line 318
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 1486
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 1515
    :cond_0
    :goto_1
    return v1

    .line 1485
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1488
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1515
    goto :goto_1

    .line 1492
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-eqz v3, :cond_3

    .line 1493
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1494
    invoke-virtual {p0, v1}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1498
    goto :goto_1

    .line 1500
    :sswitch_1
    iget-boolean v2, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1501
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonClick()V

    goto :goto_1

    .line 1507
    :sswitch_2
    iget-boolean v2, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 1511
    invoke-virtual {p0, v1}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_1

    .line 1488
    nop

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
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1520
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 1521
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 1542
    :cond_0
    :goto_1
    return v1

    .line 1520
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1523
    :cond_2
    sparse-switch p1, :sswitch_data_0

    move v1, v2

    .line 1542
    goto :goto_1

    .line 1526
    :sswitch_0
    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-eqz v3, :cond_4

    .line 1527
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PIPPhotoUI;->isCountingDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1528
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->cancelCountDown()V

    goto :goto_1

    .line 1530
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mVolumeButtonClickedFlag:Z

    .line 1531
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonClick()V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 1535
    goto :goto_1

    .line 1537
    :sswitch_1
    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-eqz v3, :cond_0

    .line 1538
    invoke-virtual {p0, v2}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonFocus(Z)V

    goto :goto_1

    .line 1523
    nop

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
    .line 1428
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->setDisplayOrientation()V

    .line 1429
    return-void
.end method

.method public onLongPressed()Z
    .locals 2

    .prologue
    .line 338
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->onLongPressed()Z

    move-result v0

    .line 350
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 338
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2161
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2155
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2156
    return-void

    .line 2155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2221
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 0
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2217
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 3

    .prologue
    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 478
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->stopPreview()V

    goto :goto_1

    .line 485
    :cond_1
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 472
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->startPreview()V

    .line 474
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 3
    .param p1, "remainingSeconds"    # I

    .prologue
    const v2, 0x3f19999a    # 0.6f

    .line 1213
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    .line 1214
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 1220
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1217
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 2207
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PIPPhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPPhotoModule$9;-><init>(Lcom/android/camera/PIPPhotoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2213
    return-void
.end method

.method public onScroll(FF)Z
    .locals 1
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/GLRenderer;->onScroll(FF)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1750
    const-string v4, "pref_camera_screen_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-nez v4, :cond_5

    .line 1751
    const-string v4, "default_scope"

    invoke-virtual {p1, v4, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1752
    .local v0, "currentValue":I
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1753
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0803c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 1754
    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1755
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 1756
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 1779
    .end local v0    # "currentValue":I
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1758
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    const v4, 0x7f0803c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 1759
    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1760
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 1761
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->getModeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_0

    .line 1763
    :cond_3
    const v4, 0x7f0803c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 1764
    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1765
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 1766
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->getModeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_0

    .line 1771
    .end local v0    # "currentValue":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->isCameraIdle()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1772
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/camera/PIPPhotoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 1774
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->couldUpdateSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1775
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 1776
    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1775
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1141
    iget-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1143
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1144
    :cond_0
    iput-boolean v6, p0, Lcom/android/camera/PIPPhotoModule;->mVolumeButtonClickedFlag:Z

    .line 1177
    :goto_0
    return-void

    .line 1148
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 1151
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_2

    .line 1152
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1153
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1152
    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1154
    iput-boolean v6, p0, Lcom/android/camera/PIPPhotoModule;->mVolumeButtonClickedFlag:Z

    goto :goto_0

    .line 1157
    :cond_2
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick: mCameraState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVolumeButtonClickedFlag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/PIPPhotoModule;->mVolumeButtonClickedFlag:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1160
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1161
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1162
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 1163
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v6}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1165
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_camera_countdown_duration_key"

    .line 1166
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1167
    .local v0, "countDownDuration":I
    iput v0, p0, Lcom/android/camera/PIPPhotoModule;->mTimerDuration:I

    .line 1168
    if-lez v0, :cond_3

    .line 1170
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 1171
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->changePIPModeOptions(Z)V

    .line 1172
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/PIPPhotoUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 1175
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->focusAndCapture()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1137
    :goto_0
    return-void

    .line 1136
    :cond_0
    sget-object v0, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1182
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule;->mShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 1130
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1476
    return-void
.end method

.method public onSubCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 8
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v7, 0x1

    .line 1068
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSubCameraAvailable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1069
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "wait sub camera opened start"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1071
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object p1, v3, v7

    .line 1073
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "wait sub camera opened end"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1075
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v7

    if-nez v3, :cond_0

    .line 1076
    sget-object v3, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "could not get sub camera"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1125
    :goto_0
    return-void

    .line 1080
    :cond_0
    invoke-direct {p0, v7}, Lcom/android/camera/PIPPhotoModule;->initializeCapabilities(I)V

    .line 1083
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/camera/PIPPhotoModule;->mZoomValue:F

    .line 1093
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    .line 1094
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v4, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1096
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1098
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1099
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1093
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1104
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1106
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1107
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080300

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    :cond_3
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/camera/PIPPhotoModule;->setCameraParameters(I)V

    .line 1111
    iput-boolean v7, p0, Lcom/android/camera/PIPPhotoModule;->mCameraPreviewParamsReady:Z

    .line 1113
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->startPreview()V

    .line 1115
    invoke-virtual {v2, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1116
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->onCameraOpened()V

    .line 1118
    new-instance v3, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1119
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->isCameraFrontFacing()Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 1121
    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1122
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0
.end method

.method public onUp()Z
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->onUp()Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1350
    sget-object v2, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "pause"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1351
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    .line 1353
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1354
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1357
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1358
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-eqz v2, :cond_0

    .line 1364
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1371
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->stopPreview()V

    .line 1372
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->cancelCountDown()V

    .line 1374
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v2, :cond_2

    .line 1375
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001b

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1376
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1379
    :cond_2
    iput-object v6, p0, Lcom/android/camera/PIPPhotoModule;->mNamedImages:Lcom/android/camera/PhotoModule$NamedImages;

    .line 1382
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1391
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->closeCamera()V

    .line 1392
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1393
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v2}, Lcom/android/camera/PIPPhotoUI;->onPause()V

    .line 1394
    invoke-static {}, Lcom/android/camera/PIPImageSaver;->getInstance()Lcom/android/camera/PIPImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PIPImageSaver;->finish()V

    .line 1395
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->releasePreviewRender()V

    .line 1397
    iput v4, p0, Lcom/android/camera/PIPPhotoModule;->mPendingSwitchCameraId:I

    .line 1403
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1407
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1409
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1410
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1414
    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/PIPUtil;->resetPIPMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1415
    iput v4, p0, Lcom/android/camera/PIPPhotoModule;->mPIPModeState:I

    .line 1416
    return-void
.end method

.method protected releasePreviewRender()V
    .locals 1

    .prologue
    .line 2236
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->release()V

    .line 2238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 2240
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mPaused:Z

    .line 1236
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v1, :cond_0

    .line 1237
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001b

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1238
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCountdownSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v2, 0x7f07001c

    invoke-virtual {v1, v2}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1249
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1251
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1252
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_1

    .line 1284
    :goto_0
    return-void

    .line 1257
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->requestCameraOpen()V

    .line 1259
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/camera/PIPPhotoModule;->mJpegPictureCallbackTime:J

    .line 1260
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/PIPPhotoModule;->mZoomValue:F

    .line 1262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PIPPhotoModule;->mOnResumeTime:J

    .line 1263
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->checkDisplayRotation()V

    .line 1267
    iget-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_2

    .line 1268
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1277
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_front_camera_mirror_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/PIPPhotoModule;->mFrontCameraMirrorEnabled:Z

    .line 1278
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1280
    invoke-virtual {p0}, Lcom/android/camera/PIPPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1281
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    goto :goto_0

    .line 1270
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setDebugUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule;->mDebugUri:Landroid/net/Uri;

    .line 2166
    return-void
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 1044
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PIPPhotoModule;->setCameraParameters(I)V

    .line 1045
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2225
    iput p1, p0, Lcom/android/camera/PIPPhotoModule;->mOrientation:I

    .line 2226
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PIPPhotoUI;->setOrientation(IZ)V

    .line 2227
    :cond_0
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 686
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFaceDetectionStarted:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 699
    :cond_0
    return-void

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v1

    if-lez v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFaceDetectionStarted:[Z

    aput-boolean v4, v1, v0

    .line 694
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPPhotoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PIPPhotoModule;->mUI:Lcom/android/camera/PIPPhotoUI;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 695
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 696
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    .line 686
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public startPreCaptureAnimation()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 490
    return-void
.end method

.method public stopFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 703
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFaceDetectionStarted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 716
    :cond_0
    return-void

    .line 707
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v1

    if-lez v1, :cond_2

    .line 708
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mFaceDetectionStarted:[Z

    aput-boolean v2, v1, v0

    .line 709
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 710
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 713
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    .line 703
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1733
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 1734
    sget-object v1, Lcom/android/camera/PIPPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stopPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1735
    iget-object v1, p0, Lcom/android/camera/PIPPhotoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1732
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1738
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/camera/PIPPhotoModule;->setCameraState(I)V

    .line 1744
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1745
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1433
    iget v0, p0, Lcom/android/camera/PIPPhotoModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1434
    invoke-direct {p0}, Lcom/android/camera/PIPPhotoModule;->setDisplayOrientation()V

    .line 1436
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 643
    return-void
.end method
