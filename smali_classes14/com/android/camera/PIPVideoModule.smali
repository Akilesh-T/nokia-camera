.class public Lcom/android/camera/PIPVideoModule;
.super Lcom/android/camera/CameraModule;
.source "PIPVideoModule.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Lcom/android/camera/PIPVideoController;
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/PIPVideoModule$AutoFocusMoveCallback;,
        Lcom/android/camera/PIPVideoModule$AutoFocusCallback;,
        Lcom/android/camera/PIPVideoModule$MainHandler;
    }
.end annotation


# static fields
.field private static final HIDE_OPTIONS_DELAY_TIME:I = 0xbb8

.field private static final MAIN_CAMERA_INDEX:I = 0x0

.field private static final MSG_ENABLE_SHUTTER_BUTTON:I = 0x4

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_HIDE_MODE_OPTIONS_DRUING_RECORDING:I = 0x5

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final MSG_SHOW_MODE_OPTIONS_DRUING_RECORDING:I = 0x6

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x3

.field private static final PERMISSION_GET_ACCOUNT_REQUEST_CODE:I = 0x1002

.field private static final PERMISSION_REQUEST:I = 0x1000

.field private static final PERMISSION_REQUEST_AGAIN:I = 0x1001

.field private static final PIP_CAMERA_COUNT:I = 0x2

.field private static final PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

.field private static final PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

.field private static final RECORDING_FAILED_TOAST_TIME:I = 0xbb8

.field private static final RECORDING_OZO_TOAST_TIME:I = 0x7d0

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x1003

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x0L

.field private static final SUB_CAMERA_INDEX:I = 0x1

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final UPDATE_PARAM_ALL:I = -0x1

.field private static final UPDATE_PARAM_INITIALIZE:I = 0x1

.field private static final UPDATE_PARAM_PREFERENCE:I = 0x4

.field private static final UPDATE_PARAM_ZOOM:I = 0x2

.field private static final mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;


# instance fields
.field private mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

.field private mAccountParams:Ljava/lang/Object;

.field private mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAppController:Lcom/android/camera/app/AppController;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAutoFocusCallback:Lcom/android/camera/PIPVideoModule$AutoFocusCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field public mAutoFocusTime:J

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraId:I

.field private mCameraPreviewParamsReady:Z

.field private mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

.field private mCameraState:I

.field public mCaptureStartTime:J

.field private mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

.field private mCompassTagEnabled:Z

.field private mContinuousFocusSupported:[Z

.field private mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDisplayOrientation:I

.field private mDisplayRotation:I

.field private mFaceDetectionStarted:[Z

.field private mFirstTimeInitialized:Z

.field private final mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mFocusStartTime:J

.field private mGLPreviewHeight:I

.field protected mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

.field private mGLPreviewWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsSecureCamera:Z

.field public mJpegCallbackFinishTime:J

.field private mLBOrientation:I

.field private mLBStarted:Z

.field private mListComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/livebroadcast/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mLiveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field private mLiveBroadcasting:Z

.field private mLocationManager:Lcom/android/camera/app/LocationManager;

.field private mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

.field private mMaxVideoDurationInMs:I

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaActionSoundLoaded:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mOZOInUsed:Z

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field protected mOrientation:I

.field protected mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

.field protected mPIPModeState:I

.field protected mPaused:Z

.field protected mPendingSwitchCameraId:I

.field public mPictureDisplayedToJpegCallbackTime:J

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

.field private mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

.field private mShutterIconId:I

.field public mShutterLag:J

.field private mShutterSoundEnabled:Z

.field public mShutterToPictureDisplayedTime:J

.field private mSnapshotOnIdle:Z

.field private final mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private final mSubAutoFocusMoveCallback:Ljava/lang/Object;

.field private mSubCameraId:I

.field private mUI:Lcom/android/camera/PIPVideoUI;

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

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 125
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PIPVideo"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 293
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCode;

    const/16 v1, 0x1000

    const/16 v2, 0x1001

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;-><init>(III)V

    sput-object v0, Lcom/android/camera/PIPVideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    .line 299
    sget-object v0, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    sput-object v0, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    .line 300
    new-instance v0, Lcom/android/camera/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Lcom/android/camera/util/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/PIPVideoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 6
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 486
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 143
    new-array v0, v3, [Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 149
    new-array v0, v3, [Lcom/android/ex/camera2/portability/CameraCapabilities;

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 150
    new-array v0, v3, [Lcom/android/ex/camera2/portability/CameraSettings;

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    .line 154
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mOZOInUsed:Z

    .line 159
    iput v4, p0, Lcom/android/camera/PIPVideoModule;->mPendingSwitchCameraId:I

    .line 168
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mContinuousFocusSupported:[Z

    .line 170
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mFaceDetectionStarted:[Z

    .line 181
    iput v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    .line 182
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mSnapshotOnIdle:Z

    .line 184
    iput-boolean v5, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    .line 186
    new-instance v0, Lcom/android/camera/PIPVideoModule$AutoFocusCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/PIPVideoModule$AutoFocusCallback;-><init>(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/PIPVideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAutoFocusCallback:Lcom/android/camera/PIPVideoModule$AutoFocusCallback;

    .line 188
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/PIPVideoModule$AutoFocusMoveCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/camera/PIPVideoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PIPVideoModule;I)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 193
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/camera/PIPVideoModule$AutoFocusMoveCallback;

    invoke-direct {v1, p0, v5}, Lcom/android/camera/PIPVideoModule$AutoFocusMoveCallback;-><init>(Lcom/android/camera/PIPVideoModule;I)V

    :cond_0
    iput-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSubAutoFocusMoveCallback:Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    .line 218
    new-array v0, v3, [Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    .line 222
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraPreviewParamsReady:Z

    .line 226
    sget-object v0, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 227
    iput v4, p0, Lcom/android/camera/PIPVideoModule;->mPIPModeState:I

    .line 233
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mIsSecureCamera:Z

    .line 236
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSoundLoaded:Z

    .line 238
    new-instance v0, Lcom/android/camera/PIPVideoModule$MainHandler;

    invoke-direct {v0, p0, p0}, Lcom/android/camera/PIPVideoModule$MainHandler;-><init>(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    .line 240
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    .line 241
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mRecordingTimeCountsDown:Z

    .line 267
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mCompassTagEnabled:Z

    .line 278
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    .line 284
    iput v2, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    .line 334
    new-instance v0, Lcom/android/camera/PIPVideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$1;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 619
    new-instance v0, Lcom/android/camera/PIPVideoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$4;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 677
    new-instance v0, Lcom/android/camera/PIPVideoModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$5;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 695
    new-instance v0, Lcom/android/camera/PIPVideoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$6;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 2694
    new-instance v0, Lcom/android/camera/PIPVideoModule$12;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$12;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 2723
    new-instance v0, Lcom/android/camera/PIPVideoModule$13;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$13;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .line 2749
    new-instance v0, Lcom/android/camera/PIPVideoModule$14;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$14;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 2974
    new-instance v0, Lcom/android/camera/PIPVideoModule$15;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$15;-><init>(Lcom/android/camera/PIPVideoModule;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 487
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 488
    return-void

    :cond_1
    move-object v0, v1

    .line 188
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/PIPVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->cancelPublish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->getModeText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->resetHideTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/PIPVideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->enableTorchMode(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/PIPVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateOzoDynamicParameter()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/PIPVideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/PIPVideoModule;->mFocusStartTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/camera/PIPVideoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/PIPVideoModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/PIPVideoModule;)[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/camera/PIPVideoModule;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PIPVideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/android/camera/PIPVideoModule;->mRecordingStartTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/camera/PIPVideoModule;)Landroid/content/ContentValues;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/PIPVideoModule;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Landroid/content/ContentValues;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PIPVideoModule;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/AccountAgent;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    return-object p1
.end method

.method static synthetic access$2902(Lcom/android/camera/PIPVideoModule;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startCountdown()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startLiveBroadcast()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/PIPVideoModule;Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->updateLiveBroadcast(Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/PIPVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/PIPVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/camera/PIPVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopPublish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startPublish()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkDisplayRotation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->initializeFirstTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/PIPVideoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->setCameraParametersWhenIdle(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->cancelCountdown()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->restoreUI()V

    return-void
.end method

.method private addIdleHandler()V
    .locals 2

    .prologue
    .line 792
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 793
    .local v0, "queue":Landroid/os/MessageQueue;
    new-instance v1, Lcom/android/camera/PIPVideoModule$7;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPVideoModule$7;-><init>(Lcom/android/camera/PIPVideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 800
    return-void
.end method

.method private cancelCountdown()V
    .locals 1

    .prologue
    .line 2999
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3001
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->cancelCountDown()V

    .line 3004
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 3008
    :goto_0
    return-void

    .line 3005
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 3006
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 3007
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    goto :goto_0
.end method

.method private cancelPublish()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2952
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPublish() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_0

    .line 2954
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;Z)V

    .line 2956
    iput-object v6, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    .line 2957
    iput-object v6, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    .line 2960
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkDisplayRotation()V
    .locals 4

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    if-eq v0, v1, :cond_2

    .line 368
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->setDisplayOrientation()V

    .line 370
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/PIPVideoModule;->mOnResumeTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PIPVideoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPVideoModule$2;-><init>(Lcom/android/camera/PIPVideoModule;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private checkMediaActionSound()Z
    .locals 1

    .prologue
    .line 2607
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSoundLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkPreviewPreconditions()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1440
    iget-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1461
    :goto_0
    return v2

    .line 1444
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 1445
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v0

    if-nez v3, :cond_1

    .line 1446
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1444
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1451
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1452
    .local v1, "st":Landroid/graphics/SurfaceTexture;
    if-nez v1, :cond_3

    .line 1453
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview: surfaceTexture is not ready."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1457
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraPreviewParamsReady:Z

    if-nez v3, :cond_4

    .line 1458
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview: parameters for preview is not ready."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1461
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z
    .locals 8
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "callback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3011
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-nez v0, :cond_0

    .line 3020
    :goto_0
    return v7

    .line 3012
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3013
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The current account has login successfully, Skip it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v7, v6

    .line 3014
    goto :goto_0

    .line 3017
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v2, Lcom/android/camera/PIPVideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v4, 0x1003

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .line 3019
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 3020
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    if-nez v0, :cond_2

    move v0, v6

    :goto_1
    move v7, v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 2475
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2476
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2477
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2478
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2479
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2482
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_3

    .line 1379
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1380
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->stopFaceDetection()V

    .line 1381
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1382
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 1384
    if-nez v0, :cond_2

    .line 1385
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1389
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object v3, v1, v0

    .line 1378
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1386
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1387
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->releaseSubCamera(I)V

    goto :goto_1

    .line 1392
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    .line 1396
    return-void
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2485
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2487
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2491
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2493
    :cond_0
    return-void

    .line 2488
    :catch_0
    move-exception v0

    .line 2489
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2541
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2542
    const-string v0, ".mp4"

    .line 2544
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2548
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2549
    const-string v0, "video/mp4"

    .line 2551
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private couldUpdateSettings()Z
    .locals 3

    .prologue
    .line 1621
    const/4 v0, 0x0

    .line 1622
    .local v0, "couldUpdate":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1623
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1622
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1625
    :cond_1
    return v0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J

    .prologue
    .line 2533
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 2534
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080448

    .line 2535
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2537
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 2555
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2556
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2558
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2560
    :cond_0
    return-void
.end method

.method private enableTorchMode(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    .line 2639
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 2640
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2669
    :cond_0
    return-void

    .line 2644
    :cond_1
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2646
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    .line 2648
    .local v3, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    if-eqz p1, :cond_3

    .line 2649
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_video_flashmode_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2653
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :goto_1
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2654
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v4, v4, v1

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2655
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 2656
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2639
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2651
    .end local v0    # "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :cond_3
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    .restart local v0    # "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    goto :goto_1
.end method

.method private generateVideoFilename(I)V
    .locals 12
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2504
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2505
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/PIPVideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 2507
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2508
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/PIPVideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 2509
    .local v4, "mime":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/android/camera/Storage;->DIRECTORY:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2510
    .local v5, "path":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tmp"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2511
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 2512
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2515
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2516
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2517
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2518
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "width"

    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2519
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "height"

    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2520
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2521
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2522
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2520
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v8}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 2524
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 2525
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2526
    iget-object v8, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 2528
    :cond_0
    iput-object v7, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2529
    sget-object v8, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2530
    return-void
.end method

.method private getModeText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2686
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    sget-object v1, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_UP_FRONT_DOWN:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    if-ne v0, v1, :cond_1

    .line 2687
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2689
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

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
    .line 1979
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v1

    aput-object v1, v0, p1

    .line 1980
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mContinuousFocusSupported:[Z

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, p1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    aput-boolean v1, v0, p1

    .line 1981
    return-void
.end method

.method private initializeFirstTime()V
    .locals 2

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mFirstTimeInitialized:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mFirstTimeInitialized:Z

    .line 780
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->addIdleHandler()V

    .line 782
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 14

    .prologue
    .line 2371
    sget-object v10, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initializeRecorder: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2373
    const-wide/16 v6, 0x0

    .line 2374
    .local v6, "requestedSizeLimit":J
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->closeVideoFileDescriptor()V

    .line 2376
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2377
    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    .line 2376
    invoke-static {v10}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v10

    iput v10, p0, Lcom/android/camera/PIPVideoModule;->mMaxVideoDurationInMs:I

    .line 2378
    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v10, v11}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 2379
    new-instance v10, Landroid/media/MediaRecorder;

    invoke-direct {v10}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2380
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 2381
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 2382
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 2383
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v12, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v12, v12, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v10, v11, v12}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 2384
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v11, p0, Lcom/android/camera/PIPVideoModule;->mMaxVideoDurationInMs:I

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 2386
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/PIPVideoModule;->mOZOInUsed:Z

    .line 2387
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v10, :cond_0

    .line 2389
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "default_scope"

    const-string v12, "pref_sound_focus_key"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2390
    .local v5, "ozoValue":Ljava/lang/String;
    if-eqz v5, :cond_0

    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    .line 2391
    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2393
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    sget-object v11, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->DUAL_SIGHT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    iget-object v12, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2394
    invoke-interface {v12}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v12

    .line 2393
    invoke-static {v10, v5, v11, v12}, Lcom/android/camera/one/OZOModeSelector;->getOZOMode(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;I)I

    move-result v4

    .line 2395
    .local v4, "ozoMode":I
    sget-object v10, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ozoMode = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2396
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v11, v4}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setOzoMode(Landroid/media/MediaRecorder;I)V

    .line 2397
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCustomNumMic()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 2398
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/camera/PIPVideoModule;->mOZOInUsed:Z

    .line 2401
    .end local v4    # "ozoMode":I
    .end local v5    # "ozoValue":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->setRecordLocation()V

    .line 2406
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v10, :cond_2

    .line 2407
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 2414
    :goto_0
    const-wide/32 v8, 0x2aea540

    .line 2415
    .local v8, "threshold":J
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v10

    sub-long v2, v10, v8

    .line 2416
    .local v2, "maxFileSize":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-lez v10, :cond_1

    cmp-long v10, v6, v2

    if-gez v10, :cond_1

    .line 2417
    move-wide v2, v6

    .line 2421
    :cond_1
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 2429
    :goto_1
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v10

    .line 2430
    invoke-virtual {v10}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 2431
    .local v1, "orientation":I
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 2434
    :try_start_1
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2454
    :goto_2
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2455
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v10, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2457
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v10, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->setOrientation(I)V

    .line 2458
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v11}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/camera/pip/opengl/GLRenderer;->setRecordSurface(Landroid/view/Surface;)V

    .line 2459
    return-void

    .line 2409
    .end local v1    # "orientation":I
    .end local v2    # "maxFileSize":J
    .end local v8    # "threshold":J
    :cond_2
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v10}, Lcom/android/camera/PIPVideoModule;->generateVideoFilename(I)V

    .line 2410
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0

    .line 2435
    .restart local v1    # "orientation":I
    .restart local v2    # "maxFileSize":J
    .restart local v8    # "threshold":J
    :catch_0
    move-exception v0

    .line 2438
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v10, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare failed for not found "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2439
    new-instance v10, Lcom/android/camera/ui/RotateTextToast;

    iget-object v11, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v12, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v13, 0x7f080217

    invoke-virtual {v12, v13}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget v13, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v10, v11, v12, v13}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v11, 0xbb8

    .line 2440
    invoke-virtual {v10, v11}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2441
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->releaseMediaRecorder()V

    .line 2443
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2444
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2445
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v10}, Lcom/android/camera/PIPVideoUI;->showPassiveFocusIndicator()V

    .line 2446
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2447
    iget-object v10, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto/16 :goto_2

    .line 2448
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 2449
    .local v0, "e":Ljava/io/IOException;
    sget-object v10, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "prepare failed for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2450
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->releaseMediaRecorder()V

    .line 2451
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 2422
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "orientation":I
    :catch_2
    move-exception v10

    goto/16 :goto_1
.end method

.method private initializeSecondTime()V
    .locals 1

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 789
    return-void
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1096
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1095
    return v0
.end method

.method private isCameraFrontFacing(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1104
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 1103
    return v0
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2325
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2326
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2327
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2328
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2329
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2331
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2334
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2335
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2336
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2338
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2340
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2344
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2345
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2347
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2348
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2351
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2352
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2354
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2357
    if-eqz p2, :cond_5

    .line 2358
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2359
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2360
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2361
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2363
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2366
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onCameraOpened()V
    .locals 0

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->openCameraCommon()V

    .line 571
    return-void
.end method

.method private onClickOnLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V
    .locals 6
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 2811
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isStreaming()Z

    move-result v0

    .line 2812
    .local v0, "stop":Z
    if-eqz v0, :cond_1

    .line 2815
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkMediaActionSound()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    if-eqz v1, :cond_0

    .line 2816
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 2818
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2819
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopPublish()Z

    .line 2820
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2821
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2844
    :goto_0
    return-void

    .line 2825
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 2826
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkMediaActionSound()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    if-eqz v1, :cond_2

    .line 2827
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 2830
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1}, Lcom/android/camera/PIPVideoUI;->cancelAnimations()V

    .line 2831
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1, v5}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2832
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1}, Lcom/android/camera/PIPVideoUI;->hidePassiveFocusIndicator()V

    .line 2833
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2834
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2836
    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    iput v1, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    .line 2837
    iput-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mLBStarted:Z

    .line 2838
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->createLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2839
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 2841
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->restoreUI()V

    goto :goto_0
.end method

.method private onClickOnVideoModule()V
    .locals 6

    .prologue
    .line 2072
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    .line 2073
    .local v1, "stop":Z
    const/4 v0, 0x0

    .line 2075
    .local v0, "recordFail":Z
    if-eqz v1, :cond_0

    .line 2078
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 2079
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopVideoRecording()Z

    move-result v0

    .line 2098
    :goto_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2100
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2101
    return-void

    .line 2092
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 2093
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkMediaActionSound()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2094
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/MediaActionSound;->play(I)V

    .line 2096
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startVideoRecording()V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 543
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 544
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 546
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 547
    invoke-direct {p0, v1}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    .line 549
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->startFaceDetection()V

    .line 550
    return-void
.end method

.method private onStopPublish()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2893
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopPublish: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", with live broadcast?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2894
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2895
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2896
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->stopPublish()Z

    move-result v0

    .line 2897
    .local v0, "recordFail":Z
    if-nez v0, :cond_0

    .line 2899
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 2905
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2906
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    .line 2909
    :cond_0
    return v4
.end method

.method private onStopVideoRecording()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 2193
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2194
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2195
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->stopVideoRecording()Z

    move-result v0

    .line 2196
    .local v0, "recordFail":Z
    if-nez v0, :cond_2

    .line 2198
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 2204
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 2217
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkMediaActionSound()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2218
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 2221
    :cond_1
    return v0

    .line 2207
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 2210
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080217

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    .line 2211
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2212
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto :goto_0
.end method

.method private openCameraCommon()V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->lockZoom()V

    .line 760
    return-void
.end method

.method private pauseAudioPlayback()V
    .locals 5

    .prologue
    .line 2041
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_0

    .line 2049
    :goto_0
    return-void

    .line 2042
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2045
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2046
    :catch_0
    move-exception v0

    .line 2047
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2462
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2463
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 2464
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->cleanupEmptyFile()V

    .line 2465
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 2466
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 2467
    iput-object v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 2469
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->releaseRecord()V

    .line 2471
    :cond_1
    iput-object v2, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    .line 2472
    return-void
.end method

.method private requestCameraOpen()V
    .locals 3

    .prologue
    .line 606
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 609
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 608
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 607
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 610
    return-void
.end method

.method private requestSubCameraOpen()V
    .locals 3

    .prologue
    .line 613
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "requestSubCameraOpen"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mSubCameraId:I

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 616
    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 615
    invoke-static {v2}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v2

    .line 614
    invoke-interface {v0, v1, v2}, Lcom/android/camera/app/CameraProvider;->requestSubCamera(IZ)V

    .line 617
    return-void
.end method

.method private resetHideTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x5

    .line 1283
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-eqz v0, :cond_1

    .line 1284
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1287
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1289
    :cond_1
    return-void
.end method

.method private restoreUI()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2104
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2105
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->showPassiveFocusIndicator()V

    .line 2106
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2107
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 2108
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2109
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-ne v0, v1, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2111
    :cond_0
    iput-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mLBStarted:Z

    .line 2112
    return-void
.end method

.method private saveVideo()V
    .locals 3

    .prologue
    .line 2563
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 2564
    new-instance v0, Lcom/android/camera/PIPVideoModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/PIPVideoModule$11;-><init>(Lcom/android/camera/PIPVideoModule;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 2592
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/PIPVideoModule$11;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2594
    :cond_0
    return-void
.end method

.method private setCameraParameters(I)V
    .locals 3
    .param p1, "updateSet"    # I

    .prologue
    .line 1927
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    .line 1928
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateCameraParametersInitialize()V

    .line 1931
    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 1932
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateCameraParametersZoom()V

    .line 1935
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 1936
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateCameraParametersPreference()V

    .line 1939
    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PIPVideoModule;->enableTorchMode(Z)V

    .line 1941
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_4

    .line 1942
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 1943
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1941
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1946
    :cond_4
    return-void
.end method

.method private setCameraParametersWhenIdle(I)V
    .locals 5
    .param p1, "additionalUpdateSet"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 1951
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/PIPVideoModule;->mUpdateSet:I

    .line 1952
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    .line 1955
    :cond_0
    iput v2, p0, Lcom/android/camera/PIPVideoModule;->mUpdateSet:I

    .line 1965
    :cond_1
    :goto_0
    return-void

    .line 1957
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->isCameraIdle()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1958
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mUpdateSet:I

    invoke-direct {p0, v0}, Lcom/android/camera/PIPVideoModule;->setCameraParameters(I)V

    .line 1959
    iput v2, p0, Lcom/android/camera/PIPVideoModule;->mUpdateSet:I

    goto :goto_0

    .line 1961
    :cond_3
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1962
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setCameraState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 874
    iput p1, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 885
    :pswitch_0
    return-void

    .line 875
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

    .line 1405
    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    .line 1407
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1408
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1409
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/PIPVideoModule;->mDisplayOrientation:I

    .line 1416
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 1417
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v3

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1421
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v4

    if-eqz v1, :cond_1

    .line 1422
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v4

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1425
    :cond_1
    return-void
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 2496
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 2497
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 2498
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 2499
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 2498
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 2501
    :cond_0
    return-void
.end method

.method private setupPreview()V
    .locals 2

    .prologue
    .line 1429
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "setupPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1433
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startPreview()V

    .line 1434
    return-void
.end method

.method private silenceSoundsAndVibrations()V
    .locals 4

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 2604
    return-void
.end method

.method private startCountdown()V
    .locals 2

    .prologue
    .line 2991
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 2992
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 2993
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 2994
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/PIPVideoUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 2995
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/PIPVideoUI;->startCountdown(I)V

    .line 2996
    return-void
.end method

.method private startLiveBroadcast()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 2866
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLiveBroadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2868
    iput-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    .line 2869
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2870
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2871
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->lockOrientation()V

    .line 2872
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/PIPVideoModule;->mRecordingStartTime:J

    .line 2877
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2878
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020212

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToVideoStop(I)V

    .line 2879
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2880
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2881
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v4}, Lcom/android/camera/PIPVideoUI;->showRecordingUI(Z)V

    .line 2882
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 2884
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2885
    new-instance v0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .line 2886
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/PIPVideoUI;->showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V

    .line 2888
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateRecordingTime()V

    .line 2889
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2890
    return-void
.end method

.method private startPreview()V
    .locals 12

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1468
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_2

    .line 1469
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v7

    if-nez v0, :cond_1

    .line 1470
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "attempted to start preview before camera device"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1560
    :cond_0
    :goto_1
    return-void

    .line 1468
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1476
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkPreviewPreconditions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->setDisplayOrientation()V

    .line 1484
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v2, :cond_4

    .line 1485
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_3

    .line 1486
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v7

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1484
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1497
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateParametersPictureSize()V

    .line 1499
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PIPVideoModule;->setCameraParameters(I)V

    .line 1501
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewWidth:I

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v0, :cond_5

    .line 1504
    :try_start_0
    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewWidth:I

    iget v3, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewHeight:I

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/pip/opengl/GLRenderer;-><init>(Lcom/android/camera/CameraActivity;IILcom/android/camera/pip/opengl/GLRenderer$PIPMode;Z)V

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 1505
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/pip/opengl/GLRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1506
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->getModeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 1507
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1508
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->releasePreviewRender()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1511
    :catch_0
    move-exception v6

    .line 1512
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1516
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1517
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v11

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->getSlaveInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1522
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1524
    new-instance v9, Lcom/android/camera/PIPVideoModule$8;

    invoke-direct {v9, p0}, Lcom/android/camera/PIPVideoModule$8;-><init>(Lcom/android/camera/PIPVideoModule;)V

    .line 1540
    .local v9, "startSubPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    new-instance v8, Lcom/android/camera/PIPVideoModule$9;

    invoke-direct {v8, p0, v9}, Lcom/android/camera/PIPVideoModule$9;-><init>(Lcom/android/camera/PIPVideoModule;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 1552
    .local v8, "startPreviewCallback":Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1553
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1554
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreview()V

    .line 1555
    invoke-interface {v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;->onPreviewStarted()V

    goto/16 :goto_1

    .line 1557
    :cond_6
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v10

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    goto/16 :goto_1
.end method

.method private startPublish()V
    .locals 10

    .prologue
    .line 2847
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v8

    .line 2848
    .local v8, "profile":Landroid/media/CamcorderProfile;
    iget v9, v8, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2849
    .local v9, "width":I
    iget v7, v8, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2850
    .local v7, "height":I
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPublish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLBStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mLBStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2852
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mLBStarted:Z

    if-nez v0, :cond_0

    .line 2854
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->cancelAnimations()V

    .line 2855
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2856
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0}, Lcom/android/camera/PIPVideoUI;->hidePassiveFocusIndicator()V

    .line 2857
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2858
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2860
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mLBOrientation:I

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v6, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/pip/opengl/GLRenderer;ILcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;)V

    .line 2863
    return-void
.end method

.method private startVideoRecording()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2115
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVideoRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2116
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1}, Lcom/android/camera/PIPVideoUI;->cancelAnimations()V

    .line 2117
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1, v7}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2118
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1}, Lcom/android/camera/PIPVideoUI;->hidePassiveFocusIndicator()V

    .line 2119
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2120
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2122
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint()V

    .line 2123
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    .line 2124
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Storage issue, ignore the start request"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2190
    :goto_0
    return-void

    .line 2128
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-ne v1, v6, :cond_1

    .line 2129
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "in storage callback after module paused"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2136
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 2137
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "in storage callback after recording started"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2141
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->pauseAudioPlayback()V

    .line 2143
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 2145
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->initializeRecorder()V

    .line 2146
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_3

    .line 2147
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Fail to initialize media recorder"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 2151
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->silenceSoundsAndVibrations()V

    .line 2153
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->startPushVideoBuffer()V

    .line 2155
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mOZOInUsed:Z

    if-eqz v1, :cond_4

    .line 2168
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08010e

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2171
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 2172
    iput-boolean v6, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    .line 2174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PIPVideoModule;->mRecordingStartTime:J

    .line 2179
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const v2, 0x7f020212

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToVideoStop(I)V

    .line 2180
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 2181
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v8, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2182
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2184
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1, v6, v7, v7}, Lcom/android/camera/PIPVideoUI;->showRecordingUI(ZZI)V

    .line 2186
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 2188
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateRecordingTime()V

    .line 2189
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    goto/16 :goto_0

    .line 2156
    :catch_0
    move-exception v0

    .line 2157
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Could not start media recorder. "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2158
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->stopPushVideoBuffer()V

    .line 2160
    new-instance v1, Lcom/android/camera/ui/RotateTextToast;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f080217

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v2, 0xbb8

    .line 2161
    invoke-virtual {v1, v2}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 2162
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->restoreUI()V

    .line 2163
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->releaseMediaRecorder()V

    goto/16 :goto_0
.end method

.method private stopPublish()Z
    .locals 9

    .prologue
    const v3, 0x7f0e000e

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2913
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPublish() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2914
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v7}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2916
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2917
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2919
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2921
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2922
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2925
    const/4 v6, 0x0

    .line 2926
    .local v6, "fail":Z
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_0

    .line 2927
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;Z)V

    .line 2929
    iput-object v8, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    .line 2930
    iput-object v8, p0, Lcom/android/camera/PIPVideoModule;->mAccountParams:Ljava/lang/Object;

    .line 2932
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-eqz v0, :cond_1

    .line 2933
    iput-boolean v5, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    .line 2934
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->unlockOrientation()V

    .line 2935
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v5}, Lcom/android/camera/PIPVideoUI;->showRecordingUI(Z)V

    .line 2936
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v8, v5, v5}, Lcom/android/camera/PIPVideoUI;->showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V

    .line 2939
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, v5, v7}, Lcom/android/camera/PIPVideoUI;->setOrientationIndicator(IZ)V

    .line 2940
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2941
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-ne v0, v7, :cond_1

    .line 2942
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2944
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2945
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mShutterIconId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 2947
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 2948
    return v6
.end method

.method private stopVideoRecording()Z
    .locals 9

    .prologue
    const v5, 0x7f0e000e

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2225
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2227
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/PIPVideoUI;->setSwipingEnabled(Z)V

    .line 2229
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2230
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 2232
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2234
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x8000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 2235
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v5}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 2238
    const/4 v1, 0x0

    .line 2239
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_0

    .line 2240
    const/4 v2, 0x0

    .line 2243
    .local v2, "shouldAddToMediaStoreNow":Z
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v3}, Lcom/android/camera/pip/opengl/GLRenderer;->stopPushVideoBuffer()V

    .line 2245
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2246
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2247
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 2248
    const/4 v2, 0x1

    .line 2249
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2250
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2258
    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    .line 2259
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v3, v6, v6, v6}, Lcom/android/camera/PIPVideoUI;->showRecordingUI(ZZI)V

    .line 2262
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/PIPVideoUI;->setOrientationIndicator(IZ)V

    .line 2263
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2264
    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 2265
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_0

    .line 2266
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->saveVideo()V

    .line 2271
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->releaseMediaRecorder()V

    .line 2273
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2274
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2275
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, v7}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2276
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mShutterIconId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 2278
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 2284
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v8}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2285
    return v1

    .line 2251
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 2252
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2253
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2254
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/PIPVideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2256
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    .line 574
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 577
    :cond_0
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 579
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->freezeScreenUntilPreviewReady()V

    .line 580
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 582
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to switch camera. id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PIPVideoModule;->mPendingSwitchCameraId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->closeCamera()V

    .line 584
    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    .line 586
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 587
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->requestCameraOpen()V

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1908
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    .line 1909
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 1908
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1912
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mContinuousFocusSupported:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v2, :cond_0

    .line 1913
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v2, v3, :cond_3

    .line 1914
    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 1915
    .local v0, "callback":Ljava/lang/Object;
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    .end local v0    # "callback":Ljava/lang/Object;
    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_1

    .line 1914
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mSubAutoFocusMoveCallback:Ljava/lang/Object;

    goto :goto_2

    .line 1917
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v1

    invoke-virtual {v2, v4, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_1

    .line 1921
    :cond_4
    return-void
.end method

.method private updateCameraParametersInitialize()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1631
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    .line 1632
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/camera/util/CameraUtil;->getPhotoPreviewFpsRange(Lcom/android/ex/camera2/portability/CameraCapabilities;)[I

    move-result-object v0

    .line 1633
    .local v0, "fpsRange":[I
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1634
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    aget v3, v0, v5

    aget v4, v0, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1637
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1639
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1640
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    .line 1643
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1644
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1647
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1648
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v5}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    .line 1651
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_PREVIEW_RATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1652
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v1

    invoke-virtual {v2, v6}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableCustomizePipFps(Z)V

    .line 1631
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1655
    .end local v0    # "fpsRange":[I
    :cond_5
    return-void
.end method

.method private updateCameraParametersPreference()V
    .locals 3

    .prologue
    .line 1669
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1701
    :goto_0
    return-void

    .line 1678
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1679
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    .line 1680
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1678
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1683
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_2

    .line 1688
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateParametersPictureQuality()V

    .line 1695
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateParametersSceneMode()V

    .line 1698
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateParametersZslMode()V

    .line 1700
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->updateAutoFocusMoveCallback()V

    goto :goto_0
.end method

.method private updateCameraParametersZoom()V
    .locals 3

    .prologue
    .line 1659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1660
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mZoomValue:F

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1659
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1664
    :cond_1
    return-void
.end method

.method private updateLiveBroadcast(Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V
    .locals 7
    .param p1, "status"    # Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .prologue
    .line 2964
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2965
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/status/Comment;

    .line 2966
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2967
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->notifyItemInserted(I)V

    .line 2964
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2970
    .end local v0    # "comment":Lcom/android/camera/livebroadcast/status/Comment;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getViewCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getReactions()Ljava/util/List;

    move-result-object v4

    .line 2971
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/PIPVideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 2970
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/PIPVideoUI;->updateLiveBroadcastStatus(ILjava/util/List;Ljava/util/List;I)V

    .line 2972
    return-void
.end method

.method private updateOzoDynamicParameter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2672
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v5

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v2, :cond_0

    .line 2675
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_sound_focus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2676
    .local v1, "ozoValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v5

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v3, v3, v5

    .line 2677
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2678
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/one/OZOModeSelector;->getOZODynamicMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2679
    .local v0, "ozoDynamicMode":I
    sget-object v2, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ozoDynamicMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2680
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V

    .line 2683
    .end local v0    # "ozoDynamicMode":I
    .end local v1    # "ozoValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateParametersPictureQuality()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 1851
    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    invoke-static {v2, v3}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 1853
    .local v1, "jpegQuality":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 1854
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 1853
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1856
    :cond_0
    return-void
.end method

.method private updateParametersPictureSize()V
    .locals 30

    .prologue
    .line 1725
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_2

    .line 1726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    if-nez v26, :cond_1

    .line 1727
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, "attempting to set picture size without caemra device"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1848
    :cond_0
    return-void

    .line 1725
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1732
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    sget-object v27, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v26

    if-eqz v26, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    sget-object v27, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->PIP_CUS_SIZE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v26

    if-eqz v26, :cond_4

    const/4 v9, 0x1

    .line 1735
    .local v9, "isSupportPIPCusSize":Z
    :goto_1
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/util/List;

    move-object/from16 v22, v0

    .line 1736
    .local v22, "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v12, v0, [Lcom/android/camera/util/Size;

    .line 1737
    .local v12, "pictureSize":[Lcom/android/camera/util/Size;
    const v21, 0x7fffffff

    .line 1738
    .local v21, "smallestPixNum":I
    const/16 v23, 0x0

    .line 1739
    .local v23, "targetIndex":I
    const/16 v24, 0x0

    .line 1740
    .local v24, "targetSize":Lcom/android/camera/util/Size;
    const/16 v16, 0x0

    .line 1742
    .local v16, "selectCusSizeSuccess":Z
    if-eqz v9, :cond_6

    .line 1743
    const/4 v7, 0x0

    :goto_2
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_6

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPictureSizeForListPIP()Ljava/util/List;

    move-result-object v19

    .line 1745
    .local v19, "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const/16 v17, 0x0

    .line 1746
    .local v17, "selectSize":Lcom/android/ex/camera2/portability/Size;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_3
    :goto_3
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/ex/camera2/portability/Size;

    .line 1747
    .local v15, "s":Lcom/android/ex/camera2/portability/Size;
    new-instance v27, Lcom/android/camera/util/Size;

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v28

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v29

    invoke-direct/range {v27 .. v29}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static/range {v27 .. v27}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v4

    .line 1748
    .local v4, "aspectRatio":Lcom/android/camera/exif/Rational;
    sget-object v27, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1751
    move-object/from16 v17, v15

    .line 1752
    goto :goto_3

    .line 1732
    .end local v4    # "aspectRatio":Lcom/android/camera/exif/Rational;
    .end local v9    # "isSupportPIPCusSize":Z
    .end local v12    # "pictureSize":[Lcom/android/camera/util/Size;
    .end local v15    # "s":Lcom/android/ex/camera2/portability/Size;
    .end local v16    # "selectCusSizeSuccess":Z
    .end local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .end local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    .end local v21    # "smallestPixNum":I
    .end local v22    # "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .end local v23    # "targetIndex":I
    .end local v24    # "targetSize":Lcom/android/camera/util/Size;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1753
    .restart local v9    # "isSupportPIPCusSize":Z
    .restart local v12    # "pictureSize":[Lcom/android/camera/util/Size;
    .restart local v16    # "selectCusSizeSuccess":Z
    .restart local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .restart local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    .restart local v21    # "smallestPixNum":I
    .restart local v22    # "supported":[Ljava/util/List;, "[Ljava/util/List<Lcom/android/camera/util/Size;>;"
    .restart local v23    # "targetIndex":I
    .restart local v24    # "targetSize":Lcom/android/camera/util/Size;
    :cond_5
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1754
    new-instance v26, Lcom/android/camera/util/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v27

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v28

    invoke-direct/range {v26 .. v28}, Lcom/android/camera/util/Size;-><init>(II)V

    aput-object v26, v12, v7

    .line 1755
    const/16 v16, 0x1

    .line 1743
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 1759
    .end local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .end local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    :cond_6
    if-nez v16, :cond_c

    .line 1761
    const/4 v7, 0x0

    :goto_4
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_a

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v26

    aput-object v26, v22, v7

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v27

    aget-object v28, v22, v7

    invoke-static/range {v26 .. v28}, Lcom/android/camera/settings/CameraPictureSizesCacher;->updateSizesForCamera(Landroid/content/Context;ILjava/util/List;)V

    .line 1765
    if-nez v7, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    .line 1767
    .local v8, "id":I
    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/PIPVideoModule;->isCameraFrontFacing(I)Z

    move-result v26

    if-eqz v26, :cond_9

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    .line 1768
    .local v5, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v26

    aget-object v27, v22, v7

    sget-object v28, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/camera/settings/ResolutionSetting;->getPIPPictureSize(Lcom/android/camera/one/OneCamera$Facing;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;

    move-result-object v26

    aput-object v26, v12, v7

    .line 1769
    aget-object v26, v12, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->width()I

    move-result v26

    aget-object v27, v12, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->height()I

    move-result v27

    mul-int v13, v26, v27

    .line 1770
    .local v13, "pixNum":I
    move/from16 v0, v21

    if-ge v13, v0, :cond_7

    .line 1771
    move/from16 v21, v13

    .line 1772
    move/from16 v23, v7

    .line 1773
    aget-object v24, v12, v7

    .line 1761
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1765
    .end local v5    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v8    # "id":I
    .end local v13    # "pixNum":I
    :cond_8
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/camera/PIPVideoModule;->mSubCameraId:I

    goto :goto_5

    .line 1767
    .restart local v8    # "id":I
    :cond_9
    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_6

    .line 1777
    .end local v8    # "id":I
    :cond_a
    const/4 v7, 0x0

    :goto_7
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_c

    .line 1779
    move/from16 v0, v23

    if-eq v7, v0, :cond_b

    .line 1780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v26

    aget-object v27, v22, v7

    sget-object v28, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/ResolutionSetting;->selectTheClosestSize(Lcom/android/camera/util/Size;Ljava/util/List;Lcom/android/camera/exif/Rational;)Lcom/android/camera/util/Size;

    move-result-object v18

    .line 1781
    .local v18, "size":Lcom/android/camera/util/Size;
    if-eqz v18, :cond_b

    .line 1782
    aput-object v18, v12, v7

    .line 1777
    .end local v18    # "size":Lcom/android/camera/util/Size;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1788
    :cond_c
    const/4 v7, 0x0

    :goto_8
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v7, v0, :cond_0

    .line 1789
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    aget-object v27, v12, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v20

    .line 1795
    .local v20, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    const/4 v10, 0x0

    .line 1796
    .local v10, "optimalSize":Lcom/android/camera/util/Size;
    if-eqz v9, :cond_f

    .line 1797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPreviewSizeListForPIP()Ljava/util/List;

    move-result-object v19

    .line 1798
    .restart local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    const/16 v17, 0x0

    .line 1799
    .restart local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_d
    :goto_9
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/ex/camera2/portability/Size;

    .line 1800
    .restart local v15    # "s":Lcom/android/ex/camera2/portability/Size;
    new-instance v27, Lcom/android/camera/util/Size;

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v28

    invoke-virtual {v15}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v29

    invoke-direct/range {v27 .. v29}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-static/range {v27 .. v27}, Lcom/android/camera/settings/ResolutionUtil;->getAspectRatio(Lcom/android/camera/util/Size;)Lcom/android/camera/exif/Rational;

    move-result-object v4

    .line 1801
    .restart local v4    # "aspectRatio":Lcom/android/camera/exif/Rational;
    sget-object v27, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/camera/settings/ResolutionUtil;->hasSameAspectRatio(Lcom/android/camera/exif/Rational;Lcom/android/camera/exif/Rational;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1804
    move-object/from16 v17, v15

    .line 1805
    goto :goto_9

    .line 1806
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

    .line 1809
    .end local v17    # "selectSize":Lcom/android/ex/camera2/portability/Size;
    .end local v19    # "sizeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    .restart local v10    # "optimalSize":Lcom/android/camera/util/Size;
    :cond_f
    if-nez v10, :cond_10

    .line 1810
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v27, " not support PIP cus size or not have expected ratio"

    invoke-static/range {v26 .. v27}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1814
    sget-object v26, Lcom/android/camera/PIPVideoModule;->PIP_EXPECTED_RATIO:Lcom/android/camera/exif/Rational;

    sget-object v27, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_4x3:Lcom/android/camera/exif/Rational;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 1815
    sget-object v26, Lcom/android/camera/PIPVideoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v25

    .line 1816
    .local v25, "width":I
    sget-object v26, Lcom/android/camera/PIPVideoModule;->PIP_RATION_43_EXPECTED_SIZE:Lcom/android/camera/util/Size;

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v6

    .line 1823
    .local v6, "height":I
    :goto_a
    new-instance v10, Lcom/android/camera/util/Size;

    .end local v10    # "optimalSize":Lcom/android/camera/util/Size;
    move/from16 v0, v25

    invoke-direct {v10, v0, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1826
    .end local v6    # "height":I
    .end local v25    # "width":I
    .restart local v10    # "optimalSize":Lcom/android/camera/util/Size;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewWidth:I

    .line 1827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/PIPVideoModule;->mGLPreviewHeight:I

    .line 1829
    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 1830
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1831
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

    .line 1832
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1835
    :cond_11
    new-instance v11, Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPreviewSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v11, v0}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1836
    .local v11, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v10, v11}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    .line 1837
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    invoke-virtual {v10}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v26 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v27, v0

    aget-object v27, v27, v7

    invoke-virtual/range {v27 .. v27}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v27

    aput-object v27, v26, v7

    .line 1845
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    move-object/from16 v26, v0

    sget-object v27, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lcom/android/camera/PIPVideoUI;->updatePreviewAspectRatio(F)V

    .line 1846
    sget-object v26, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1788
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    .line 1819
    .end local v11    # "original":Lcom/android/camera/util/Size;
    :cond_13
    const/16 v26, 0x5

    invoke-static/range {v26 .. v26}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v14

    .line 1820
    .local v14, "profile":Landroid/media/CamcorderProfile;
    iget v0, v14, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v25, v0

    .line 1821
    .restart local v25    # "width":I
    iget v6, v14, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .restart local v6    # "height":I
    goto/16 :goto_a
.end method

.method private updateParametersSceneMode()V
    .locals 3

    .prologue
    .line 1860
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_7

    .line 1862
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    .line 1864
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1865
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1869
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 1870
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setSceneMode(Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;)V

    .line 1875
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1876
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1885
    :cond_1
    :goto_1
    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->ASD:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v2, v2, v0

    if-ne v1, v2, :cond_4

    .line 1888
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1889
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1896
    :cond_3
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1897
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1860
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 1879
    :cond_5
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentSceneMode()Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1880
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 1881
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSceneMode:[Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$SceneMode;

    aput-object v2, v1, v0

    goto :goto_1

    .line 1899
    :cond_6
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    goto :goto_2

    .line 1903
    :cond_7
    return-void
.end method

.method private updateParametersShutterSound()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2002
    iget-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 2003
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    .line 2004
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 2003
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2006
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 2007
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 2008
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 2009
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2010
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2011
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    .line 2013
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v6

    iget-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mShutterSoundEnabled:Z

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    .line 2014
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3, v6}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersZslMode()V
    .locals 6

    .prologue
    .line 1707
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 1708
    const/4 v0, 0x0

    .line 1709
    .local v0, "enableZSL":Z
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZSL:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1710
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1711
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v3, "default_scope"

    const-string v4, "pref_camera_zsl_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1713
    .end local v2    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_0
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1714
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUseZSL:Lcom/android/camera/async/ConcurrentState;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 1715
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableZSL(Z)V

    .line 1707
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1717
    .end local v0    # "enableZSL":Z
    :cond_1
    return-void
.end method

.method private updateRecordingTime()V
    .locals 20

    .prologue
    .line 2289
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v15, :cond_0

    .line 2322
    :goto_0
    return-void

    .line 2292
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2293
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/PIPVideoModule;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v6, v10, v16

    .line 2297
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/PIPVideoModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/PIPVideoModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-ltz v15, :cond_3

    const/4 v5, 0x1

    .line 2300
    .local v5, "countdownRemainingTime":Z
    :goto_1
    move-wide v8, v6

    .line 2301
    .local v8, "deltaAdjusted":J
    if-eqz v5, :cond_1

    .line 2302
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/PIPVideoModule;->mMaxVideoDurationInMs:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    .line 2306
    :cond_1
    const-wide/16 v12, 0x0

    .line 2307
    .local v12, "targetNextUpdateDelay":J
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/PIPVideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2308
    .local v14, "text":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2309
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v15, v14}, Lcom/android/camera/PIPVideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2311
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/PIPVideoModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_2

    .line 2314
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/PIPVideoModule;->mRecordingTimeCountsDown:Z

    .line 2316
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e00a4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2317
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v15, v4}, Lcom/android/camera/PIPVideoUI;->setRecordingTimeTextColor(I)V

    .line 2320
    .end local v4    # "color":I
    :cond_2
    rem-long v16, v6, v12

    sub-long v2, v12, v16

    .line 2321
    .local v2, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2297
    .end local v2    # "actualNextUpdateDelay":J
    .end local v5    # "countdownRemainingTime":Z
    .end local v8    # "deltaAdjusted":J
    .end local v12    # "targetNextUpdateDelay":J
    .end local v14    # "text":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 900
    const/4 v0, 0x0

    return v0
.end method

.method public autoFocus()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1255
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    .line 1256
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1255
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    :cond_0
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Starting auto focus"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PIPVideoModule;->mFocusStartTime:J

    .line 1261
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAutoFocusCallback:Lcom/android/camera/PIPVideoModule$AutoFocusCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    goto :goto_1

    .line 1263
    :cond_1
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/SessionStatsCollector;->autofocusManualTrigger()V

    .line 1264
    invoke-direct {p0, v4}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    .line 1265
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 4

    .prologue
    .line 1269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 1270
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 1269
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1273
    :cond_0
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Starting cancel focus"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PIPVideoModule;->mFocusStartTime:J

    .line 1275
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    goto :goto_1

    .line 1278
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    .line 1279
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/camera/PIPVideoModule;->setCameraParameters(I)V

    .line 1280
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 890
    const/4 v0, 0x0

    return v0
.end method

.method public closeExistCamera()Z
    .locals 1

    .prologue
    .line 2610
    const/4 v0, 0x1

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 2627
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1229
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 1230
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1231
    iput-object v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSoundLoaded:Z

    .line 1234
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_1

    .line 1235
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onDestroy(Landroid/app/Activity;)V

    .line 1236
    iput-object v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 1238
    :cond_1
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 732
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 734
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 735
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 736
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 737
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 738
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 739
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 740
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 741
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 742
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 743
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 744
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 745
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 746
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 747
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v3

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    :goto_3
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 748
    iget-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    :goto_4
    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 749
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_5

    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 750
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_7

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mIsSecureCamera:Z

    if-nez v1, :cond_7

    :goto_6
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 751
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mIsSecureCamera:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 752
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 754
    return-object v0

    :cond_0
    move v1, v3

    .line 739
    goto :goto_0

    :cond_1
    move v1, v3

    .line 745
    goto :goto_1

    :cond_2
    move v1, v3

    .line 746
    goto :goto_2

    :cond_3
    move v1, v3

    .line 747
    goto :goto_3

    .line 748
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    move v1, v3

    .line 749
    goto :goto_5

    :cond_6
    move v1, v2

    goto :goto_5

    :cond_7
    move v2, v3

    .line 750
    goto :goto_6
.end method

.method public getCameraState()I
    .locals 1

    .prologue
    .line 1985
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    return v0
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v0, v0, v3

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 724
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 725
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 725
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 492
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
    const/4 v6, 0x0

    .line 498
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 501
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 502
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->initSubCameraControllerIfNeed()Z

    move-result v2

    .line 503
    .local v2, "success":Z
    if-nez v2, :cond_0

    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "initSubCameraController Failed"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 505
    :cond_0
    const/4 v1, 0x0

    .line 506
    .local v1, "orientation":I
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 507
    :cond_1
    new-instance v3, Lcom/android/camera/PIPVideoUI;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-direct {v3, v4, p0, v5, v1}, Lcom/android/camera/PIPVideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/PIPVideoController;Landroid/view/View;I)V

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    .line 508
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    .line 509
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 511
    iput-boolean p2, p0, Lcom/android/camera/PIPVideoModule;->mIsSecureCamera:Z

    .line 512
    new-instance v3, Landroid/media/MediaActionSound;

    invoke-direct {v3}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 513
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/PIPVideoUI;->setOrientation(IZ)V

    .line 514
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v3, v6, v6}, Lcom/android/camera/PIPVideoUI;->setOrientationIndicator(IZ)V

    .line 515
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 516
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 517
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 518
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    .line 517
    invoke-static {v3, v4}, Lcom/android/camera/util/CameraUtil;->getCameraShutterIconId(ILandroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mShutterIconId:I

    .line 519
    new-instance v3, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 520
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 521
    const v3, 0x7f0f00ba

    invoke-virtual {p1, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 522
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v3, Lcom/android/camera/PIPVideoModule$3;

    invoke-direct {v3, p0}, Lcom/android/camera/PIPVideoModule$3;-><init>(Lcom/android/camera/PIPVideoModule;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 531
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getFirstBackCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraId:I

    .line 532
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/CameraProvider;->getFirstFrontCameraId()I

    move-result v3

    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mSubCameraId:I

    .line 533
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/pip/opengl/PIPUtil;->initPIPMode(Landroid/content/Context;Lcom/android/camera/settings/SettingsManager;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 534
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->getModeText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 535
    return-void
.end method

.method public isCameraIdle()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1969
    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

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
    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyModeListState(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 2060
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    .line 2061
    .local v0, "viewVisible":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/PIPVideoUI;->setViewVisible(I)V

    .line 2062
    :cond_0
    return-void

    .line 2060
    .end local v0    # "viewVisible":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySwipeStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2623
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3025
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult - requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3026
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 3027
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onActivityResult(IILandroid/content/Intent;)Z

    .line 3033
    :cond_0
    :goto_0
    return-void

    .line 3029
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_0

    .line 3030
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1299
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1312
    :goto_0
    return v0

    .line 1302
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1303
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopVideoRecording()Z

    goto :goto_0

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1306
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Dialog is showing during live broadcast, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1308
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-eqz v1, :cond_3

    .line 1309
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopPublish()Z

    goto :goto_0

    .line 1312
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 3
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v2, 0x0

    .line 905
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onCameraAvailable"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 906
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object p1, v0, v2

    .line 913
    invoke-direct {p0, v2}, Lcom/android/camera/PIPVideoModule;->initializeCapabilities(I)V

    .line 915
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->requestSubCameraOpen()V

    goto :goto_0
.end method

.method public onDown(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 382
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_0

    .line 387
    :goto_0
    return v1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v2, p1, p2}, Lcom/android/camera/pip/opengl/GLRenderer;->onDown(FF)Z

    move-result v0

    .line 385
    .local v0, "enabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 386
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    :cond_2
    move v1, v0

    .line 387
    goto :goto_0

    .end local v0    # "enabled":Z
    :cond_3
    move v0, v1

    .line 384
    goto :goto_1
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 304
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder error. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 307
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->stopVideoRecording()Z

    .line 308
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 314
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaRecorder info. what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 315
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 316
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopVideoRecording()Z

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 320
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 321
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopVideoRecording()Z

    .line 324
    :cond_2
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08028e

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0xbb8

    .line 325
    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1319
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1347
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1322
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 1323
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1326
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1347
    const/4 v1, 0x0

    goto :goto_0

    .line 1328
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 1329
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1333
    :cond_3
    :sswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 1334
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1339
    :cond_4
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1342
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1326
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_3
        0x52 -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 1353
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1374
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1356
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 1357
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1356
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1360
    :cond_2
    sparse-switch p1, :sswitch_data_0

    .line 1374
    const/4 v1, 0x0

    goto :goto_0

    .line 1362
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1366
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1369
    :sswitch_3
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1360
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_1
        0x4f -> :sswitch_2
        0x52 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 1242
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->setDisplayOrientation()V

    .line 1243
    return-void
.end method

.method public onLongPressed()Z
    .locals 2

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->onLongPressed()Z

    move-result v0

    .line 420
    .local v0, "enabled":Z
    :goto_0
    return v0

    .line 408
    .end local v0    # "enabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1996
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1990
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1991
    return-void

    .line 1990
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPhoneStateChange(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 2038
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 1
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2034
    :goto_0
    return-void

    .line 2033
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/PIPVideoModule;->enableTorchMode(Z)V

    goto :goto_0
.end method

.method public onPreviewUIDestroyed()V
    .locals 3

    .prologue
    .line 560
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 561
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 560
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->stopPreview()V

    goto :goto_1

    .line 567
    :cond_1
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 554
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 555
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startPreview()V

    .line 556
    return-void
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 2021
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/camera/PIPVideoModule$10;

    invoke-direct {v1, p0}, Lcom/android/camera/PIPVideoModule$10;-><init>(Lcom/android/camera/PIPVideoModule;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2028
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3037
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_0

    .line 3038
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 3040
    :cond_0
    return-void
.end method

.method public onScroll(FF)Z
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    const/4 v0, 0x0

    .line 392
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/pip/opengl/GLRenderer;->onScroll(FF)Z

    move-result v0

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1589
    const-string v4, "pref_camera_screen_key"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v4, :cond_5

    .line 1590
    const-string v4, "default_scope"

    invoke-virtual {p1, v4, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1591
    .local v0, "currentValue":I
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1592
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x7f0803c5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 1593
    const v4, 0x7f0b0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 1594
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 1595
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 1618
    .end local v0    # "currentValue":I
    .end local v2    # "index":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1597
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    const v4, 0x7f0803c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_3

    .line 1598
    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v4, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1599
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_DOWN_FRONT_UP:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 1600
    :cond_2
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->getModeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_0

    .line 1602
    :cond_3
    const v4, 0x7f0803c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v0, v4, :cond_5

    .line 1603
    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    iput-object v4, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1604
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    sget-object v5, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->REAR_FULL_FRONT_SUB:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-virtual {v4, v5}, Lcom/android/camera/pip/opengl/GLRenderer;->setDisplayMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)V

    .line 1605
    :cond_4
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->getModeText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_0

    .line 1610
    .end local v0    # "currentValue":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->isCameraIdle()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1611
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lcom/android/camera/PIPVideoModule;->setCameraParametersWhenIdle(I)V

    goto :goto_0

    .line 1613
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->couldUpdateSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1614
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    .line 1615
    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1614
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 5

    .prologue
    .line 1000
    sget-object v2, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onShutterButtonClick"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1002
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1003
    :cond_0
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShutterButtonClick ignore is paused "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " camera state"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " shutter enable "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1004
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1003
    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1015
    :goto_1
    return-void

    .line 1004
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1008
    :cond_2
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    .line 1009
    .local v1, "buttonManager":Lcom/android/camera/ButtonManager;
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    .line 1010
    .local v0, "accountType":Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    if-eqz v0, :cond_3

    const/16 v2, 0x10

    .line 1011
    invoke-virtual {v1, v2}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1012
    invoke-direct {p0, v0}, Lcom/android/camera/PIPVideoModule;->onClickOnLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    goto :goto_1

    .line 1014
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onClickOnVideoModule()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 996
    :goto_0
    return-void

    .line 995
    :cond_0
    sget-object v0, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1020
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 989
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->resetHideTimer()V

    .line 1295
    return-void
.end method

.method public onSubCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 10
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 919
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 920
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "wait sub camera opened start"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 922
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aput-object p1, v3, v8

    .line 924
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "wait sub camera opened end"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 926
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v3, v3, v8

    if-nez v3, :cond_0

    .line 927
    sget-object v3, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "could not get sub camera"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 985
    :goto_0
    return-void

    .line 931
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/camera/PIPVideoModule;->initializeCapabilities(I)V

    .line 934
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcom/android/camera/PIPVideoModule;->mZoomValue:F

    .line 944
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    .line 945
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v4, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v4

    aput-object v4, v3, v1

    .line 947
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v3

    if-nez v3, :cond_1

    .line 948
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->NO_FLASH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 950
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    if-nez v3, :cond_2

    .line 951
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v3, v3, v1

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->AUTO:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 944
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 957
    :cond_3
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 959
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 960
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080300

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :cond_4
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/camera/PIPVideoModule;->setCameraParameters(I)V

    .line 964
    iput-boolean v8, p0, Lcom/android/camera/PIPVideoModule;->mCameraPreviewParamsReady:Z

    .line 966
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->startPreview()V

    .line 968
    invoke-virtual {v2, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 970
    invoke-virtual {v2, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 972
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onCameraOpened()V

    .line 974
    new-instance v3, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v5, v5, v9

    iget-object v6, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 975
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->isCameraFrontFacing()Z

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v3, p0, Lcom/android/camera/PIPVideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 977
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v8, :cond_5

    .line 978
    const-string v3, "default_scope"

    const-string v4, "pref_sound_focus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    :cond_5
    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 982
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0
.end method

.method public onUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 399
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 402
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->onUp()Z

    move-result v0

    goto :goto_0
.end method

.method public onZoomChanged(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 332
    return-void
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 1147
    sget-object v2, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "pause"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1149
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->cancelCountdown()V

    .line 1150
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_1

    .line 1152
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopVideoRecording()Z

    .line 1166
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->closeVideoFileDescriptor()V

    .line 1167
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v2}, Lcom/android/camera/PIPVideoUI;->onPause()V

    .line 1169
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    .line 1171
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1172
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1175
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1176
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x2

    if-ge v0, v2, :cond_5

    .line 1181
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-eqz v2, :cond_0

    .line 1182
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1154
    .end local v0    # "i":I
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcasting:Z

    if-eqz v2, :cond_4

    .line 1155
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->onStopPublish()Z

    .line 1160
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v2, :cond_3

    .line 1161
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onPause(Landroid/app/Activity;)V

    .line 1163
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 1157
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->cancelPublish()Z

    .line 1158
    iget-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mLBStarted:Z

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->restoreUI()V

    goto :goto_2

    .line 1189
    .restart local v0    # "i":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->stopPreview()V

    .line 1192
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1201
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->closeCamera()V

    .line 1202
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1203
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v2}, Lcom/android/camera/PIPVideoUI;->onPause()V

    .line 1204
    invoke-static {}, Lcom/android/camera/PIPImageSaver;->getInstance()Lcom/android/camera/PIPImageSaver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PIPImageSaver;->finish()V

    .line 1205
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->releasePreviewRender()V

    .line 1207
    iput v4, p0, Lcom/android/camera/PIPVideoModule;->mPendingSwitchCameraId:I

    .line 1213
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1218
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1219
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1223
    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    invoke-static {v2}, Lcom/android/camera/pip/opengl/PIPUtil;->resetPIPMode(Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;)Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PIPVideoModule;->mPIPMode:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    .line 1224
    iput v4, p0, Lcom/android/camera/PIPVideoModule;->mPIPModeState:I

    .line 1225
    return-void
.end method

.method protected releasePreviewRender()V
    .locals 1

    .prologue
    .line 2065
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->release()V

    .line 2067
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PIPVideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 2069
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1041
    iput-boolean v2, p0, Lcom/android/camera/PIPVideoModule;->mPaused:Z

    .line 1052
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 1053
    .local v0, "camProvider":Lcom/android/camera/app/CameraProvider;
    if-nez v0, :cond_1

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSoundLoaded:Z

    if-nez v1, :cond_2

    .line 1059
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->load(I)V

    .line 1060
    iput-boolean v4, p0, Lcom/android/camera/PIPVideoModule;->mMediaActionSoundLoaded:Z

    .line 1063
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->requestCameraOpen()V

    .line 1065
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/PIPVideoModule;->mZoomValue:F

    .line 1067
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/PIPVideoModule;->mOnResumeTime:J

    .line 1068
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->checkDisplayRotation()V

    .line 1072
    iget-boolean v1, p0, Lcom/android/camera/PIPVideoModule;->mFirstTimeInitialized:Z

    if-nez v1, :cond_3

    .line 1073
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1078
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/PIPVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleReady(Lcom/android/camera/remote/RemoteCameraModule;)V

    .line 1079
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->sessionActive(Z)V

    .line 1085
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1088
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->updateAccount()Z

    goto :goto_0

    .line 1075
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->initializeSecondTime()V

    goto :goto_1
.end method

.method public setFocusParameters()V
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/camera/PIPVideoModule;->setCameraParameters(I)V

    .line 896
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2053
    iput p1, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    .line 2054
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PIPVideoUI;->setOrientation(IZ)V

    .line 2055
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mOrientation:I

    invoke-interface {v0, v1, p2}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 2056
    :cond_1
    return-void
.end method

.method public startFaceDetection()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 805
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mFaceDetectionStarted:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 818
    :cond_0
    return-void

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v1

    if-lez v1, :cond_2

    .line 810
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mFaceDetectionStarted:[Z

    aput-boolean v4, v1, v0

    .line 813
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/PIPVideoModule;->mUI:Lcom/android/camera/PIPVideoUI;

    invoke-virtual {v1, v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 814
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    .line 815
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    .line 805
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 822
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 823
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mFaceDetectionStarted:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 835
    :cond_0
    return-void

    .line 826
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraCapabilities:[Lcom/android/ex/camera2/portability/CameraCapabilities;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v1

    if-lez v1, :cond_2

    .line 827
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mFaceDetectionStarted:[Z

    aput-boolean v2, v1, v0

    .line 828
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setFaceDetectionCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraFaceDetectionCallback;)V

    .line 829
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    .line 832
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/SessionStatsCollector;->faceScanActive(Z)V

    .line 822
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1564
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 1565
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraState:I

    if-eqz v1, :cond_0

    .line 1566
    sget-object v1, Lcom/android/camera/PIPVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "stopPreview"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1567
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1570
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v1

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-ne v1, v2, :cond_1

    .line 1571
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1572
    iget-object v1, p0, Lcom/android/camera/PIPVideoModule;->mCameraDevice:[Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/camera/PIPVideoModule;->mCameraSettings:[Lcom/android/ex/camera2/portability/CameraSettings;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1564
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1577
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/PIPVideoModule;->setCameraState(I)V

    .line 1583
    invoke-static {}, Lcom/android/camera/stats/SessionStatsCollector;->instance()Lcom/android/camera/stats/SessionStatsCollector;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/stats/SessionStatsCollector;->previewActive(Z)V

    .line 1584
    return-void
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1247
    iget v0, p0, Lcom/android/camera/PIPVideoModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1248
    invoke-direct {p0}, Lcom/android/camera/PIPVideoModule;->setDisplayOrientation()V

    .line 1250
    :cond_0
    return-void
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/camera/PIPVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 765
    return-void
.end method
