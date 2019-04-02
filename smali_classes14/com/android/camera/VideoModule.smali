.class public Lcom/android/camera/VideoModule;
.super Lcom/android/camera/CameraModule;
.source "VideoModule.java"

# interfaces
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/VideoController;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/VideoModule$JpegPictureCallback;,
        Lcom/android/camera/VideoModule$MyBroadcastReceiver;,
        Lcom/android/camera/VideoModule$MainHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final HIDE_OPTIONS_DELAY_TIME:I = 0xbb8

.field private static final MSG_CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MSG_ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final MSG_HIDE_MODE_OPTIONS_DRUING_RECORDING:I = 0xa

.field private static final MSG_SHOW_MODE_OPTIONS_DRUING_RECORDING:I = 0xb

.field private static final MSG_SWITCH_CAMERA:I = 0x8

.field private static final MSG_SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x5

.field private static final PERMISSION_GET_ACCOUNT_REQUEST_CODE:I = 0x1002

.field private static final PERMISSION_REQUEST:I = 0x1000

.field private static final PERMISSION_REQUEST_AGAIN:I = 0x1001

.field private static final RECORDING_FAILED_TOAST_TIME:I = 0xbb8

.field private static final RECORDING_OZO_TOAST_TIME:I = 0x7d0

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x1003

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;


# instance fields
.field private mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

.field private mAccountParams:Ljava/lang/Object;

.field private mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private mActivity:Lcom/android/camera/CameraActivity;

.field private mAppController:Lcom/android/camera/app/AppController;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

.field private final mAutoFocusMoveCallback:Ljava/lang/Object;

.field private final mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

.field private mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

.field private mCameraDisplayOrientation:I

.field private mCameraFrontFacingForLastRecord:Z

.field private mCameraId:I

.field private mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

.field private final mCancelCallback:Landroid/view/View$OnClickListener;

.field private mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoUriFromMediaSaved:Z

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private final mDoneCallback:Landroid/view/View$OnClickListener;

.field private mDontResetIntentUiOnResume:Z

.field private mFaceDetectionStarted:Z

.field private final mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsAccountExisted:Z

.field private mIsInReviewMode:Z

.field private mIsQualityReset:Z

.field private mIsSecureCamera:Z

.field private mIsVideoCaptureIntent:Z

.field private mJpegRotation:I

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

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingTimestamp:J

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private mOZOInUsed:Z

.field private final mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOrientation:I

.field private mOriginalRingerMode:I

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPreferenceRead:Z

.field private mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

.field private final mRetakeCallback:Landroid/view/View$OnClickListener;

.field private final mReviewCallback:Landroid/view/View$OnClickListener;

.field private mShouldUseGLRenderer:Z

.field private mShutterIconId:I

.field private mShutterSoundEnabled:Z

.field private mSnapshotInProgress:Z

.field private final mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

.field private mSwitchingCamera:Z

.field private mUI:Lcom/android/camera/VideoUI;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 126
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 254
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCode;

    const/16 v1, 0x1000

    const/16 v2, 0x1001

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;-><init>(III)V

    sput-object v0, Lcom/android/camera/VideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 465
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 152
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mOZOInUsed:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 184
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 206
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 220
    new-instance v0, Lcom/android/camera/VideoModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/VideoModule$MainHandler;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    .line 224
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    .line 241
    iput v2, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    .line 243
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    .line 244
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mShutterSoundEnabled:Z

    .line 263
    new-instance v0, Lcom/android/camera/VideoModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$1;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 288
    new-instance v0, Lcom/android/camera/VideoModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$2;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 314
    new-instance v0, Lcom/android/camera/VideoModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$3;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 325
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/VideoModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$4;-><init>(Lcom/android/camera/VideoModule;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 437
    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 459
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mCompassTagEnabled:Z

    .line 670
    new-instance v0, Lcom/android/camera/VideoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$6;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 687
    new-instance v0, Lcom/android/camera/VideoModule$7;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$7;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 712
    new-instance v0, Lcom/android/camera/VideoModule$8;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$8;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 731
    new-instance v0, Lcom/android/camera/VideoModule$9;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$9;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCancelCallback:Landroid/view/View$OnClickListener;

    .line 738
    new-instance v0, Lcom/android/camera/VideoModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$10;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mDoneCallback:Landroid/view/View$OnClickListener;

    .line 744
    new-instance v0, Lcom/android/camera/VideoModule$11;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$11;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mReviewCallback:Landroid/view/View$OnClickListener;

    .line 750
    new-instance v0, Lcom/android/camera/VideoModule$12;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$12;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRetakeCallback:Landroid/view/View$OnClickListener;

    .line 2879
    new-instance v0, Lcom/android/camera/VideoModule$15;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$15;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 2917
    new-instance v0, Lcom/android/camera/VideoModule$16;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$16;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .line 2988
    new-instance v0, Lcom/android/camera/VideoModule$17;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$17;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    .line 3215
    new-instance v0, Lcom/android/camera/VideoModule$18;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoModule$18;-><init>(Lcom/android/camera/VideoModule;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    .line 466
    return-void

    :cond_0
    move-object v0, v1

    .line 325
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/VideoModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1600()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cancelCountdown()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restoreUI()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cancelPublish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->enableTorchMode(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetHideTimer()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/camera/VideoModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateOzoDynamicParameter()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->pauseAudioPlayback()V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mCameraFrontFacingForLastRecord:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeRecorder()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoModule;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->silenceSoundsAndVibrations()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mOZOInUsed:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/camera/VideoModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-wide v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecordingTimestamp:J

    return-wide v0
.end method

.method static synthetic access$3902(Lcom/android/camera/VideoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecordingTimestamp:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/camera/VideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/camera/VideoModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/camera/VideoModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/camera/VideoModule;)Lcom/android/camera/VideoUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/VideoModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoModule;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4702(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/android/camera/VideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restartPreviewIfNecessary()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/AccountAgent;)Lcom/android/camera/livebroadcast/AccountAgent;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/AccountAgent;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/camera/VideoModule;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startCountdown()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startLiveBroadcast()V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/camera/VideoModule;Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->updateLiveBroadcast(Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/camera/VideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/VideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopPublish()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPublish()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/VideoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/VideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoModule;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    return v0
.end method

.method private cancelCountdown()V
    .locals 1

    .prologue
    .line 3240
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3242
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cancelCountDown()V

    .line 3245
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_2

    .line 3249
    :cond_1
    :goto_0
    return-void

    .line 3246
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 3247
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 3248
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    goto :goto_0
.end method

.method private cancelPublish()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3193
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPublish() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3194
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_0

    .line 3195
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;Z)V

    .line 3197
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    .line 3198
    iput-object v6, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    .line 3201
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private checkMediaActionSound()Z
    .locals 1

    .prologue
    .line 3252
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkRingerModeAccessRights()Z
    .locals 6

    .prologue
    .line 1816
    const/4 v0, 0x1

    .line 1817
    .local v0, "hasRights":Z
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1818
    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1819
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGranted()Z

    move-result v1

    .line 1820
    .local v1, "isNotificationPolicyAccessGranted":Z
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    if-nez v1, :cond_0

    .line 1821
    const/4 v0, 0x0

    .line 1823
    :cond_0
    sget-object v3, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkRingerModeAccessRights AccessGranted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1824
    return v0
.end method

.method private chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Z
    .locals 8
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "callback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3256
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-nez v0, :cond_0

    .line 3265
    :goto_0
    return v7

    .line 3257
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3258
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "The current account has login successfully, Skip it!"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v7, v6

    .line 3259
    goto :goto_0

    .line 3262
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v2, Lcom/android/camera/VideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v4, 0x1003

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .line 3264
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 3265
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

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
    .line 1507
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1508
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1509
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1510
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1514
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1410
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1411
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1412
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1424
    :cond_0
    :goto_0
    return-void

    .line 1415
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopFaceDetection()V

    .line 1416
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1417
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1418
    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1419
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    .line 1420
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 1421
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2661
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2663
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2667
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2669
    :cond_0
    return-void

    .line 2664
    :catch_0
    move-exception v0

    .line 2665
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2654
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2655
    const-string v0, ".mp4"

    .line 2657
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
    .line 2647
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2648
    const-string v0, "video/mp4"

    .line 2650
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method private createName(J)Ljava/lang/String;
    .locals 5
    .param p1, "dateTaken"    # J

    .prologue
    .line 475
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 476
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080448

    .line 477
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 479
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private currentZoomValue()F
    .locals 1

    .prologue
    .line 1233
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    return v0
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1745
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1746
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1747
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1748
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1750
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1493
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1495
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1496
    const/4 v0, -0x1

    .line 1497
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1498
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1502
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1503
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1504
    return-void

    .line 1500
    .end local v0    # "resultCode":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "resultCode":I
    goto :goto_0
.end method

.method private enableTorchMode(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 2552
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2583
    :goto_0
    return-void

    .line 2556
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2558
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 2560
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    if-eqz p1, :cond_3

    .line 2561
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2562
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2567
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2568
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2579
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_2

    .line 2580
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2582
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0

    .line 2565
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
    .line 1686
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1687
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1689
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1690
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1691
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

    .line 1692
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

    .line 1693
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1694
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1697
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1698
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1699
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1700
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "width"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1701
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "height"

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1702
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1703
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1704
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1702
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v8}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1706
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1707
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1708
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1710
    :cond_0
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1711
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1712
    return-void
.end method

.method private static getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 12
    .param p0, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "previewScreenSize"    # Landroid/graphics/Point;

    .prologue
    .line 1138
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1140
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 1176
    :goto_0
    return-object v8

    .line 1143
    :cond_0
    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_3

    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 1145
    .local v4, "previewScreenShortSide":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1146
    .local v7, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1147
    .local v2, "preferred":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 1148
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    .line 1149
    .local v3, "preferredPreviewSizeShortSide":I
    :goto_2
    mul-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_1

    .line 1150
    new-instance v2, Lcom/android/camera/util/Size;

    .end local v2    # "preferred":Lcom/android/camera/util/Size;
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v8, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1152
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int v5, v8, v9

    .line 1153
    .local v5, "product":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1155
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/util/Size;>;"
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1156
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 1157
    .local v6, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int/2addr v8, v9

    if-le v8, v5, :cond_2

    .line 1158
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 1143
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/util/Size;>;"
    .end local v2    # "preferred":Lcom/android/camera/util/Size;
    .end local v3    # "preferredPreviewSizeShortSide":I
    .end local v4    # "previewScreenShortSide":I
    .end local v5    # "product":I
    .end local v6    # "size":Lcom/android/camera/util/Size;
    .end local v7    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_3
    iget v4, p2, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 1148
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    .restart local v4    # "previewScreenShortSide":I
    .restart local v7    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    goto :goto_2

    .line 1165
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/util/Size;>;"
    .restart local v3    # "preferredPreviewSizeShortSide":I
    .restart local v5    # "product":I
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 1166
    .restart local v6    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v9, v10, :cond_6

    .line 1167
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v9, v10, :cond_6

    .line 1168
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Selected ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " on WYSIWYG Priority"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1170
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    .line 1174
    .end local v6    # "size":Lcom/android/camera/util/Size;
    :cond_7
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v8, v8

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 1176
    .local v1, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 1992
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2005
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2008
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mCameraFrontFacingForLastRecord:Z

    invoke-static {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2010
    :cond_1
    return-object v0

    .line 1994
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1996
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1997
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1998
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1997
    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1999
    :catch_0
    move-exception v1

    .line 2001
    .local v1, "ex":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 550
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mDontResetIntentUiOnResume:Z

    if-nez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToIntentCaptureLayout()V

    .line 554
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mDontResetIntentUiOnResume:Z

    .line 556
    :cond_1
    return-void
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 662
    return-void

    .line 645
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mMirror:Z

    .line 646
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 648
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 649
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v10, v8, v0

    .line 652
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 653
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_1

    .line 654
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 657
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 659
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v4}, Lcom/android/camera/VideoUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0
.end method

.method private initializeRecorder()Z
    .locals 28

    .prologue
    .line 1518
    const/4 v10, 0x0

    .line 1519
    .local v10, "initialSuccess":Z
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "initializeRecorder: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v23, v0

    if-nez v23, :cond_0

    .line 1522
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v26, "null camera proxy, not recording"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v11, v10

    .line 1659
    .end local v10    # "initialSuccess":Z
    .local v11, "initialSuccess":I
    :goto_0
    return v11

    .line 1525
    .end local v11    # "initialSuccess":I
    .restart local v10    # "initialSuccess":Z
    :cond_0
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v23

    const-string v26, "initializeRecorder"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v9

    .line 1526
    .local v9, "guard":Lcom/android/camera/stats/profiler/Profile;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1527
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1529
    .local v13, "myExtras":Landroid/os/Bundle;
    const-wide/16 v18, 0x0

    .line 1530
    .local v18, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 1531
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1532
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2

    if-eqz v13, :cond_2

    .line 1533
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1534
    const-string v23, "output"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    .line 1535
    .local v21, "saveUri":Landroid/net/Uri;
    const-string v23, "get EXTRA_OUTPUT"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1536
    if-eqz v21, :cond_1

    .line 1538
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v23, v0

    const-string v26, "rw"

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1539
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    .line 1540
    const-string v23, "init EXTRA_OUTPUT uri and fd"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1546
    :cond_1
    :goto_1
    const-string v23, "android.intent.extra.sizeLimit"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 1549
    .end local v21    # "saveUri":Landroid/net/Uri;
    :cond_2
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1550
    new-instance v23, Landroid/media/MediaRecorder;

    invoke-direct/range {v23 .. v23}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1551
    const-string v23, "MediaRecorder init"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->unlock()V

    .line 1554
    const-string v23, "mCameraDevice.unlock"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 1562
    .local v4, "camera":Landroid/hardware/Camera;
    if-nez v4, :cond_3

    .line 1563
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v26, "null camera within proxy, not recording"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    move v11, v10

    .line 1564
    .restart local v11    # "initialSuccess":I
    goto/16 :goto_0

    .line 1541
    .end local v4    # "camera":Landroid/hardware/Camera;
    .end local v11    # "initialSuccess":I
    .restart local v21    # "saveUri":Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 1543
    .local v7, "ex":Ljava/io/FileNotFoundException;
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1

    .line 1567
    .end local v7    # "ex":Ljava/io/FileNotFoundException;
    .end local v21    # "saveUri":Landroid/net/Uri;
    .restart local v4    # "camera":Landroid/hardware/Camera;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1568
    const-string v23, "mMediaRecorder.setCamera"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const/16 v26, 0x5

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 1570
    const-string v23, "mMediaRecorder.setAudioSource"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1572
    const-string v23, "mMediaRecorder.setVideoSource"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1574
    const-string v23, "mMediaRecorder.setProfile"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1576
    const-string v23, "mMediaRecorder.setVideoSize"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 1578
    const-string v23, "mMediaRecorder.setMaxDuration"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1580
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOZOInUsed:Z

    .line 1581
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    move/from16 v23, v0

    if-nez v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v23, v0

    sget-object v26, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 1582
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v23

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1585
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v23

    const-string v26, "default_scope"

    const-string v27, "pref_sound_focus_key"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1587
    .local v17, "ozoValue":Ljava/lang/String;
    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1588
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->isCameraBackFacing()Z

    move-result v23

    if-eqz v23, :cond_7

    sget-object v8, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->REAR:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    .line 1589
    .local v8, "facing":Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v26

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    move/from16 v2, v26

    invoke-static {v0, v1, v8, v2}, Lcom/android/camera/one/OZOModeSelector;->getOZOMode(Landroid/content/Context;Ljava/lang/String;Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;I)I

    move-result v16

    .line 1590
    .local v16, "ozoMode":I
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ozoMode = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setOzoMode(Landroid/media/MediaRecorder;I)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCustomNumMic()I

    move-result v26

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 1593
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/VideoModule;->mOZOInUsed:Z

    .line 1595
    .end local v8    # "facing":Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;
    .end local v16    # "ozoMode":I
    :cond_4
    const-string v23, "config OZO done"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1598
    .end local v17    # "ozoValue":Ljava/lang/String;
    :cond_5
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1599
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->setRecordLocation()V

    .line 1600
    const-string v23, "setRecordLocation"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1611
    :goto_3
    const-string v23, "mMediaRecorder.setOutputFile"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1614
    const-wide/32 v24, 0x2aea540

    .line 1615
    .local v24, "threshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v26

    sub-long v14, v26, v24

    .line 1616
    .local v14, "maxFileSize":J
    const-wide/16 v26, 0x0

    cmp-long v23, v18, v26

    if-lez v23, :cond_6

    cmp-long v23, v18, v14

    if-gez v23, :cond_6

    .line 1617
    move-wide/from16 v14, v18

    .line 1621
    :cond_6
    :try_start_1
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    .line 1623
    const-string v23, "mMediaRecorder.setMaxFileSize"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1631
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v23, v0

    .line 1632
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/VideoModule;->mCameraId:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v22

    .line 1633
    .local v22, "sensorOrientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v23, v0

    .line 1634
    invoke-interface/range {v23 .. v23}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    .line 1636
    .local v5, "deviceOrientation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v23

    .line 1635
    move/from16 v0, v22

    move/from16 v1, v23

    invoke-static {v0, v5, v1}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v20

    .line 1637
    .local v20, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1638
    const-string v23, "mMediaRecorder.setOrientationHint"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1641
    :try_start_2
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1642
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v26, "before mMediaRecorder.prepare()"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/media/MediaRecorder;->prepare()V

    .line 1644
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v26, "mMediaRecorder.prepared"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1645
    const-string v23, "mMediaRecorder.prepare"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1656
    const-string v23, "mMediaRecorder.setListener"

    move-object/from16 v0, v23

    invoke-interface {v9, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1657
    invoke-interface {v9}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1658
    const/4 v10, 0x1

    move v11, v10

    .line 1659
    .restart local v11    # "initialSuccess":I
    goto/16 :goto_0

    .line 1588
    .end local v5    # "deviceOrientation":I
    .end local v11    # "initialSuccess":I
    .end local v14    # "maxFileSize":J
    .end local v20    # "rotation":I
    .end local v22    # "sensorOrientation":I
    .end local v24    # "threshold":J
    .restart local v17    # "ozoValue":Ljava/lang/String;
    :cond_7
    sget-object v8, Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;->FRONT:Lcom/android/camera/one/OZOModeSelector$CAMERA_FACING;

    goto/16 :goto_2

    .line 1608
    .end local v17    # "ozoValue":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/camera/VideoModule;->generateVideoFilename(I)V

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1646
    .restart local v5    # "deviceOrientation":I
    .restart local v14    # "maxFileSize":J
    .restart local v20    # "rotation":I
    .restart local v22    # "sensorOrientation":I
    .restart local v24    # "threshold":J
    :catch_1
    move-exception v6

    .line 1647
    .local v6, "e":Ljava/io/IOException;
    sget-object v23, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "prepare failed for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1648
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    move v11, v10

    .line 1649
    .restart local v11    # "initialSuccess":I
    goto/16 :goto_0

    .line 1624
    .end local v5    # "deviceOrientation":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "initialSuccess":I
    .end local v20    # "rotation":I
    .end local v22    # "sensorOrientation":I
    :catch_2
    move-exception v23

    goto/16 :goto_4
.end method

.method private initializeVideoSnapshot()V
    .locals 1

    .prologue
    .line 2524
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 2527
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 1185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1188
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1189
    new-instance v1, Lcom/android/camera/VideoModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/VideoModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/VideoModule$1;)V

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1190
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1191
    return-void
.end method

.method private isCameraBackFacing()Z
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 632
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v0

    .line 631
    return v0
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 624
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 623
    return v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2203
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logVideoCapture(J)V
    .locals 13
    .param p1, "duration"    # J

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1716
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1718
    .local v10, "flashSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v11

    .line 1719
    .local v11, "gridLinesOn":Z
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1720
    .local v6, "width":I
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1721
    .local v7, "height":I
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1722
    .local v8, "size":J
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1723
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v4

    .line 1724
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->currentZoomValue()F

    move-result v5

    move-wide v2, p1

    .line 1723
    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(Ljava/lang/String;JZFIIJLjava/lang/String;Z)V

    .line 1725
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 2119
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 2120
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 2121
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 2122
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 2123
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 2125
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 2128
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 2129
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 2130
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2132
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2134
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2138
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 2139
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2141
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2142
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2145
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 2146
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2148
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2151
    if-eqz p2, :cond_5

    .line 2152
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2153
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 2154
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 2155
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2157
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2160
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onClickOnLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V
    .locals 6
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 3057
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isStreaming()Z

    move-result v0

    .line 3058
    .local v0, "stop":Z
    if-eqz v0, :cond_1

    .line 3061
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkMediaActionSound()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3062
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 3064
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 3065
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopPublish()Z

    .line 3066
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 3067
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3090
    :goto_0
    return-void

    .line 3071
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 3072
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkMediaActionSound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3073
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1, v2}, Landroid/media/MediaActionSound;->play(I)V

    .line 3076
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 3077
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v5}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 3078
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hidePassiveFocusIndicator()V

    .line 3079
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 3080
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 3082
    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    .line 3083
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mLBStarted:Z

    .line 3084
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget v4, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->createLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/CameraActivity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3085
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 3087
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restoreUI()V

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1344
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewStarted"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1346
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1347
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 1349
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1350
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1351
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v2}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1352
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1353
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_2

    .line 1354
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1356
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->startFaceDetection()V

    .line 1357
    return-void
.end method

.method private onStopPublish()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3135
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3136
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 3137
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3138
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopPublish()Z

    move-result v0

    .line 3139
    .local v0, "recordFail":Z
    if-nez v0, :cond_0

    .line 3141
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 3147
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 3148
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    .line 3151
    :cond_0
    return v4
.end method

.method private onStopVideoRecording()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 931
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 932
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    move-result v0

    .line 933
    .local v0, "recordFail":Z
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_3

    .line 934
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    if-eqz v3, :cond_2

    .line 935
    if-nez v0, :cond_1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 953
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 935
    goto :goto_0

    .line 936
    :cond_2
    if-nez v0, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1

    .line 939
    :cond_3
    if-nez v0, :cond_4

    .line 941
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 947
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    goto :goto_1

    .line 950
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto :goto_1
.end method

.method private pauseAudioPlayback()V
    .locals 5

    .prologue
    .line 2791
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_0

    .line 2799
    :goto_0
    return-void

    .line 2792
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2793
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2795
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2796
    :catch_0
    move-exception v0

    .line 2797
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

.method private readVideoPreferences()V
    .locals 14

    .prologue
    .line 1039
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    .line 1040
    .local v6, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v8, "pref_video_quality_front_key"

    .line 1042
    .local v8, "videoQualityKey":Ljava/lang/String;
    :goto_0
    const-string v9, "default_scope"

    .line 1043
    invoke-virtual {v6, v9, v8}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1044
    .local v7, "videoQuality":Ljava/lang/String;
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v7, v9}, Lcom/android/camera/settings/SettingsUtil;->getVideoQuality(Ljava/lang/String;I)I

    move-result v4

    .line 1045
    .local v4, "quality":I
    sget-object v9, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected video quality for \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1046
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    .line 1047
    iget-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    if-eqz v9, :cond_0

    .line 1049
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1050
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 1051
    .local v3, "profile":Landroid/media/CamcorderProfile;
    iget v9, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v9, v9

    iget v10, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v10, v10

    div-float v0, v9, v10

    .line 1052
    .local v0, "aspectRatio":F
    sget-object v9, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual {v9}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v9

    sub-float/2addr v9, v0

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    float-to-double v10, v9

    const-wide v12, 0x3fa999999999999aL    # 0.05

    cmpg-double v9, v10, v12

    if-gtz v9, :cond_4

    .line 1054
    sget-object v9, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The video quality is good enough with quality is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1068
    .end local v0    # "aspectRatio":F
    .end local v3    # "profile":Landroid/media/CamcorderProfile;
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1069
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.extra.videoQuality"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1070
    const-string v9, "android.intent.extra.videoQuality"

    const/4 v10, 0x0

    .line 1071
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1072
    .local v1, "extraVideoQuality":I
    if-lez v1, :cond_6

    .line 1073
    const/4 v4, 0x1

    .line 1081
    .end local v1    # "extraVideoQuality":I
    :cond_1
    :goto_2
    const-string v9, "android.intent.extra.durationLimit"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1082
    const-string v9, "android.intent.extra.durationLimit"

    const/4 v10, 0x0

    .line 1083
    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1084
    .local v5, "seconds":I
    mul-int/lit16 v9, v5, 0x3e8

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    .line 1091
    .end local v5    # "seconds":I
    :goto_3
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1092
    sget-object v9, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v10, "The current video quality is not supported, we changed to QUALITY_HIGH."

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1093
    const/4 v4, 0x1

    .line 1095
    :cond_2
    iget v9, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-static {v9, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v9

    iput-object v9, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 1096
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 1097
    return-void

    .line 1040
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "quality":I
    .end local v7    # "videoQuality":Ljava/lang/String;
    .end local v8    # "videoQualityKey":Ljava/lang/String;
    :cond_3
    const-string v8, "pref_video_quality_back_key"

    goto/16 :goto_0

    .line 1056
    .restart local v0    # "aspectRatio":F
    .restart local v3    # "profile":Landroid/media/CamcorderProfile;
    .restart local v4    # "quality":I
    .restart local v7    # "videoQuality":Ljava/lang/String;
    .restart local v8    # "videoQualityKey":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x5

    .line 1057
    sget-object v9, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The video quality is changed to 720p with quality is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1058
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    goto :goto_1

    .line 1061
    .end local v0    # "aspectRatio":F
    .end local v3    # "profile":Landroid/media/CamcorderProfile;
    :cond_5
    const/4 v4, 0x5

    .line 1062
    sget-object v9, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The current video quality is not supported, and changed to 720p with quality is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1063
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    goto/16 :goto_1

    .line 1075
    .restart local v1    # "extraVideoQuality":I
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2

    .line 1086
    .end local v1    # "extraVideoQuality":I
    :cond_7
    iget-object v9, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1087
    invoke-virtual {v9}, Lcom/android/camera/CameraActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    .line 1086
    invoke-static {v9}, Lcom/android/camera/settings/SettingsUtil;->getMaxVideoDuration(Landroid/content/Context;)I

    move-result v9

    iput v9, p0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    goto :goto_3
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1675
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1676
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1677
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cleanupEmptyFile()V

    .line 1678
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1679
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1680
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1682
    :cond_0
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    .line 1683
    return-void
.end method

.method private requestCamera(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 2687
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    .line 2688
    .local v0, "cameraProvider":Lcom/android/camera/app/CameraProvider;
    if-eqz v0, :cond_1

    .line 2689
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-nez v1, :cond_0

    .line 2690
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "VideoModule.OpenCameraAndPreview"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2692
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 2694
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2693
    invoke-static {v1}, Lcom/android/camera/util/GservicesHelper;->useCamera2ApiThroughPortabilityLayer(Landroid/content/ContentResolver;)Z

    move-result v1

    .line 2692
    invoke-interface {v0, p1, v1}, Lcom/android/camera/app/CameraProvider;->requestCamera(IZ)V

    .line 2696
    :cond_1
    return-void
.end method

.method private resetHideTimer()V
    .locals 4

    .prologue
    const/16 v2, 0xb

    const/16 v1, 0xa

    .line 2725
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-eqz v0, :cond_0

    .line 2726
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2727
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2728
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2729
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2731
    :cond_0
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 3

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setAspectRatio(F)V

    .line 1181
    return-void
.end method

.method private restartPreviewIfNecessary()V
    .locals 6

    .prologue
    .line 2953
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 2954
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "restartPreviewIfNecessary() is skipped, because currently is paused."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2986
    :cond_0
    :goto_0
    return-void

    .line 2958
    :cond_1
    sget-object v3, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restartPreviewIfNecessary() with mShouldUseGLRenderer="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mIsAccountExisted="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mIsQualityReset="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mGLPreviewRender="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2960
    const/4 v1, 0x0

    .line 2962
    .local v1, "shouldRestartPreview":Z
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    if-eqz v2, :cond_2

    .line 2963
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v2, :cond_7

    .line 2964
    const/4 v1, 0x1

    .line 2965
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "The profile is empty, the preview should be re-started."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2977
    :cond_2
    :goto_2
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsQualityReset:Z

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    .line 2978
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 2979
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateDesiredPreviewSize()V

    .line 2980
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 2981
    const/4 v1, 0x1

    .line 2983
    :cond_4
    if-nez v1, :cond_5

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    if-eqz v2, :cond_0

    .line 2984
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    goto :goto_0

    .line 2958
    .end local v1    # "shouldRestartPreview":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2967
    .restart local v1    # "shouldRestartPreview":Z
    :cond_7
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 2968
    .local v0, "aspectRatio":F
    sget-object v2, Lcom/android/camera/settings/ResolutionUtil;->ASPECT_RATIO_16x9:Lcom/android/camera/exif/Rational;

    invoke-virtual {v2}, Lcom/android/camera/exif/Rational;->toFloat()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    .line 2969
    const/4 v1, 0x1

    .line 2970
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "The current resolution is not matched, the preview should be re-started."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2

    .line 2972
    :cond_8
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "The current resolution is matched."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private restoreRingerMode()V
    .locals 4

    .prologue
    .line 1804
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkRingerModeAccessRights()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1806
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcom/android/camera/VideoModule;->mOriginalRingerMode:I

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1808
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreRingerMode mOriginalRingerMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mOriginalRingerMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1809
    :catch_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreUI()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1833
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1834
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->showPassiveFocusIndicator()V

    .line 1835
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1836
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 1837
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 1839
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1840
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mLBStarted:Z

    .line 1841
    return-void
.end method

.method private saveVideo()V
    .locals 6

    .prologue
    .line 1728
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 1729
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    sub-long v0, v2, v4

    .line 1730
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1735
    :goto_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1736
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1737
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/app/MediaSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 1739
    invoke-direct {p0, v0, v1}, Lcom/android/camera/VideoModule;->logVideoCapture(J)V

    .line 1741
    .end local v0    # "duration":J
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1742
    return-void

    .line 1733
    .restart local v0    # "duration":J
    :cond_1
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video duration <= 0 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setCameraParameters()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2208
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    .line 2211
    .local v6, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateDesiredPreviewSize()V

    .line 2213
    new-instance v5, Lcom/android/camera/util/Size;

    iget v10, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v11, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-direct {v5, v10, v11}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 2214
    .local v5, "previewSize":Lcom/android/camera/util/Size;
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2217
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const-string v11, "video-size"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2221
    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v1

    .line 2222
    .local v1, "fpsRange":[I
    array-length v10, v1

    if-lez v10, :cond_6

    .line 2223
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v11, v1, v9

    aget v12, v1, v8

    invoke-virtual {v10, v11, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 2228
    :goto_0
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/camera/VideoModule;->enableTorchMode(Z)V

    .line 2231
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2232
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v11, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 2234
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateFocusParameters()V

    .line 2236
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v10, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 2238
    const/4 v0, 0x0

    .line 2239
    .local v0, "allowVideoStabilization":Z
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v10, :cond_2

    .line 2240
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->quality:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->quality:I

    const/16 v11, 0x3f0

    if-eq v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v11, 0xf00

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const/16 v11, 0x870

    if-eq v10, v11, :cond_7

    :cond_1
    move v0, v8

    .line 2244
    :goto_1
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "allowVideoStabilization = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2247
    :cond_2
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2248
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VIDEO_DIS_STABILIZATION enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2249
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 2262
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 2263
    .local v7, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget v8, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v9, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 2265
    .local v3, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v4, Lcom/android/camera/util/Size;

    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 2266
    .local v4, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v4, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2267
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 2269
    :cond_4
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video snapshot size is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2272
    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v2

    .line 2274
    .local v2, "jpegQuality":I
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 2276
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateParametersTouchAfAec()V

    .line 2278
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v8, :cond_5

    .line 2279
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2282
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2286
    :cond_5
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v9, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 2287
    return-void

    .line 2225
    .end local v0    # "allowVideoStabilization":Z
    .end local v2    # "jpegQuality":I
    .end local v3    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v4    # "original":Lcom/android/camera/util/Size;
    .end local v7    # "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_6
    iget-object v10, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v11, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .restart local v0    # "allowVideoStabilization":Z
    :cond_7
    move v0, v9

    .line 2240
    goto/16 :goto_1

    .line 2250
    :cond_8
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2251
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VIDEO_EIS_STABILIZATION enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2252
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    goto/16 :goto_2

    .line 2253
    :cond_9
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2254
    sget-object v8, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "VIDEO_STABILIZATION enabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2255
    iget-object v8, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    goto/16 :goto_2
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .prologue
    .line 1663
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1664
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 1200
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    .line 1202
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1203
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1204
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    .line 1206
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1209
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 1210
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1212
    :cond_1
    return-void
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 1667
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1668
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1669
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1670
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 1669
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1672
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .prologue
    .line 2014
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 2015
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2016
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 2017
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->showReviewImage(Landroid/graphics/Bitmap;)V

    .line 2021
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->showReviewControls()V

    .line 2022
    return-void

    .line 2019
    :cond_0
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "get null video thumbnail"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private silenceSoundsAndVibrations()V
    .locals 5

    .prologue
    .line 1787
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1790
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->checkRingerModeAccessRights()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoModule;->mOriginalRingerMode:I

    .line 1793
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 1794
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "silenceSoundsAndVibrations setRingerMode RINGER_MODE_SILENT"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1795
    :catch_0
    move-exception v0

    .line 1796
    .local v0, "e":Ljava/lang/SecurityException;
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startCountdown()V
    .locals 2

    .prologue
    .line 3232
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 3233
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 3234
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 3235
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCountdownFinishedListener:Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 3236
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->startCountdown(I)V

    .line 3237
    return-void
.end method

.method private startLiveBroadcast()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 3108
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3110
    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    .line 3111
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 3112
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 3113
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->lockOrientation()V

    .line 3114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    .line 3119
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 3120
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const v1, 0x7f020212

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToVideoStop(I)V

    .line 3121
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 3122
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3123
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v4}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 3124
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 3126
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3127
    new-instance v0, Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    .line 3128
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget v2, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/camera/VideoUI;->showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V

    .line 3130
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateRecordingTime()V

    .line 3131
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v4}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 3132
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 876
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 877
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 878
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 880
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 884
    :goto_0
    return-void

    .line 881
    :catch_0
    move-exception v0

    .line 882
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startPreview()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    .line 1252
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1254
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    .line 1255
    .local v10, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    if-eqz v0, :cond_0

    if-eqz v10, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1341
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-ne v0, v2, :cond_2

    .line 1261
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 1266
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v0, :cond_3

    .line 1267
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1268
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1271
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 1272
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1273
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setCameraParameters()V

    .line 1274
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_4

    .line 1275
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "setCameraParameters done"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1278
    :cond_4
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_5

    .line 1281
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1282
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v8

    .line 1283
    .local v8, "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v8, v0, :cond_5

    .line 1284
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1293
    .end local v8    # "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :cond_5
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1294
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "calling onPreviewReadyToStart to set one shot callback"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1295
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewReadyToStart()V

    .line 1302
    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    if-eqz v0, :cond_9

    .line 1303
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "We use openGL surface view with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_6

    .line 1306
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v9

    .line 1307
    .local v9, "previewSurface":Landroid/graphics/SurfaceTexture;
    iget v0, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v9, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1308
    new-instance v0, Lcom/android/camera/pip/opengl/GLRenderer;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    sget-object v4, Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;->NORMAL:Lcom/android/camera/pip/opengl/GLRenderer$PIPMode;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/pip/opengl/GLRenderer;-><init>(Lcom/android/camera/CameraActivity;IILcom/android/camera/pip/opengl/GLRenderer$PIPMode;Z)V

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 1309
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0, v9}, Lcom/android/camera/pip/opengl/GLRenderer;->setPreviewOutputSurface(Landroid/graphics/SurfaceTexture;)V

    .line 1310
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1311
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->releasePreviewRender()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1314
    .end local v9    # "previewSurface":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v6

    .line 1315
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1319
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v1}, Lcom/android/camera/pip/opengl/GLRenderer;->getMainInputSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1324
    :goto_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_7

    .line 1325
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "startPreview"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1327
    :cond_7
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/android/camera/VideoModule$13;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$13;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 1336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1337
    :catch_1
    move-exception v7

    .line 1338
    .local v7, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 1339
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "startPreview failed"

    invoke-direct {v0, v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1297
    .end local v7    # "ex":Ljava/lang/Throwable;
    :cond_8
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "on L, no one shot callback necessary"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1321
    :cond_9
    :try_start_3
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "We use original surface view from capture intent."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1322
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method private startPublish()V
    .locals 7

    .prologue
    .line 3093
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPublish: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", orientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mLBStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mLBStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3094
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mLBStarted:Z

    if-nez v0, :cond_0

    .line 3096
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 3097
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 3098
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hidePassiveFocusIndicator()V

    .line 3099
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 3100
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 3102
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    iget v4, p0, Lcom/android/camera/VideoModule;->mLBOrientation:I

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->startLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/pip/opengl/GLRenderer;ILcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;)V

    .line 3105
    return-void
.end method

.method private startVideoRecording()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1844
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1845
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    const-string v2, "startVideoRecording"

    invoke-virtual {v1, v2}, Lcom/android/camera/stats/profiler/Profilers;->guard(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1846
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->cancelAnimations()V

    .line 1847
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v4}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 1848
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->hidePassiveFocusIndicator()V

    .line 1849
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1850
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1851
    const-string v1, "before updateStorageSpaceAndHint"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1853
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "before updateStorageSpaceAndHint"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1854
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v2, Lcom/android/camera/VideoModule$14;

    invoke-direct {v2, p0, v0}, Lcom/android/camera/VideoModule$14;-><init>(Lcom/android/camera/VideoModule;Lcom/android/camera/stats/profiler/Profile;)V

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1987
    return-void
.end method

.method private stopPublish()Z
    .locals 9

    .prologue
    const v3, 0x7f0e000e

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 3155
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPublish() with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 3156
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v8}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 3158
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 3159
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->changeBottomBarBackgroundResource(I)V

    .line 3161
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 3163
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 3164
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 3167
    const/4 v6, 0x0

    .line 3168
    .local v6, "fail":Z
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_0

    .line 3169
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mStatusCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->stopLiveBroadcast(Landroid/app/Activity;Lcom/android/camera/livebroadcast/LiveBroadcastManager$StatusCallback;Lcom/android/camera/livebroadcast/AccountAgent;Ljava/lang/Object;Z)V

    .line 3171
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    .line 3172
    iput-object v7, p0, Lcom/android/camera/VideoModule;->mAccountParams:Ljava/lang/Object;

    .line 3174
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-eqz v0, :cond_1

    .line 3175
    iput-boolean v5, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    .line 3176
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->unlockOrientation()V

    .line 3177
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v5}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 3178
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v7, v5, v5}, Lcom/android/camera/VideoUI;->showLiveBroadcastUI(Lcom/android/camera/livebroadcast/status/CommentsAdapter;ZI)V

    .line 3181
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, v5, v8}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 3182
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v5}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 3183
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3185
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 3186
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoModule;->mShutterIconId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->animateBottomBarToFullSize(I)V

    .line 3188
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 3189
    return v6
.end method

.method private stopVideoRecording()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2025
    sget-object v3, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2029
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restoreRingerMode()V

    .line 2031
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/VideoUI;->setSwipingEnabled(Z)V

    .line 2032
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->showPassiveFocusIndicator()V

    .line 2033
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 2034
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 2036
    const/4 v1, 0x0

    .line 2037
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_2

    .line 2038
    const/4 v2, 0x0

    .line 2041
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 2042
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 2043
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 2044
    const/4 v2, 0x1

    .line 2045
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 2046
    sget-object v3, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 2055
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecordingTimestamp:J

    .line 2056
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-eqz v3, :cond_0

    .line 2057
    iput-boolean v6, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    .line 2058
    invoke-virtual {p0, v6}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2060
    :cond_0
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->unlockOrientation()V

    .line 2065
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 2068
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2069
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2072
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/VideoUI;->showRecordingUI(Z)V

    .line 2075
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2076
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 2077
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 2078
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_7

    .line 2079
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->saveVideo()V

    .line 2087
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    .line 2089
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2090
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 2091
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, v7}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 2093
    :cond_3
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/VideoModule;->mShutterIconId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 2094
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 2096
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_5

    .line 2097
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->setFocusParameters()V

    .line 2098
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    .line 2099
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v3, :cond_4

    .line 2100
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2102
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2106
    :cond_4
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2113
    :cond_5
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v8}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 2115
    return v1

    .line 2047
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 2048
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2049
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 2050
    iget-object v3, p0, Lcom/android/camera/VideoModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/VideoModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 2052
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2080
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v3, :cond_2

    .line 2082
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    goto :goto_1
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2614
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2615
    .local v8, "dateTaken":J
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v7

    .line 2616
    .local v7, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "storeImage : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2617
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v12

    .line 2618
    .local v12, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v12}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 2619
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v17

    .line 2620
    .local v17, "heading":I
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/VideoModule;->mCompassTagEnabled:Z

    if-eqz v5, :cond_0

    .line 2622
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    invoke-virtual {v12, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 2625
    .local v4, "directionRefTag":Lcom/android/camera/exif/ExifTag;
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION:I

    new-instance v6, Lcom/android/camera/exif/Rational;

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x1

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/camera/exif/Rational;-><init>(JJ)V

    invoke-virtual {v12, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v14

    .line 2628
    .local v14, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v12, v4}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2629
    invoke-virtual {v12, v14}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2634
    .end local v4    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v14    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2635
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v10, "pref_camera_video_flashmode_key"

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2636
    .local v15, "flashSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2642
    .local v16, "gridLinesOn":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/VideoModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 2644
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2487
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2521
    :goto_0
    return-void

    .line 2490
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2492
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Start to switch camera."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2493
    iget v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 2494
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2495
    const-string v1, "PhotoModule"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2498
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 2499
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2501
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->resetPreviewOverlay()V

    .line 2502
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 2504
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2506
    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->requestCamera(I)V

    .line 2508
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mMirror:Z

    .line 2509
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    .line 2510
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 2514
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    .line 2515
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 2519
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2520
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/camera/VideoUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0
.end method

.method private takeASnapshot()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 581
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 582
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cannot take a video snapshot - not supported by hardware"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_0

    .line 586
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 587
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 592
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 593
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 595
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateJpegRotation()V

    .line 596
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v1, p0, Lcom/android/camera/VideoModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 598
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/VideoModule$JpegPictureCallback;

    iget-wide v8, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecordingTimestamp:J

    invoke-direct {v5, p0, v6, v8, v9}, Lcom/android/camera/VideoModule$JpegPictureCallback;-><init>(Lcom/android/camera/VideoModule;Landroid/location/Location;J)V

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 601
    invoke-virtual {p0, v7}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 602
    iput-boolean v7, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_2

    .line 612
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateDesiredPreviewSize()V
    .locals 4

    .prologue
    .line 1107
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1111
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1112
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 1113
    invoke-virtual {v3}, Lcom/android/camera/VideoUI;->getPreviewScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 1112
    invoke-static {v1, v2, v3}, Lcom/android/camera/VideoModule;->getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 1114
    .local v0, "desiredPreviewSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    .line 1115
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    .line 1116
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget v2, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/VideoUI;->setPreviewSize(II)V

    .line 1117
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated DesiredPreview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mDesiredPreviewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateExifOrientationIfNeed(ILcom/android/camera/exif/ExifInterface;)V
    .locals 7
    .param p1, "rotation"    # I
    .param p2, "exif"    # Lcom/android/camera/exif/ExifInterface;

    .prologue
    .line 2843
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exif.getOrientation(exif) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2845
    iget v1, p0, Lcom/android/camera/VideoModule;->mJpegRotation:I

    .line 2846
    .local v1, "lJpegRotation":I
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    .line 2847
    .local v0, "hw_rotate_support":Z
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HW_ROTATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2849
    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    .line 2850
    .local v2, "needOverrideRotation":Z
    :goto_0
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needOverrideRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " rotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2852
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2853
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 2854
    .local v3, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p2, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2856
    .end local v3    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    return-void

    .line 2849
    .end local v2    # "needOverrideRotation":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateFocusParameters()V
    .locals 4

    .prologue
    .line 2318
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 2319
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v0

    .line 2330
    .local v0, "supportedFocus":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2331
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2332
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 2333
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    .line 2332
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 2334
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 2338
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_1

    .line 2339
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 2343
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateParametersExposureCompensation()V

    .line 2344
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateAutoFocusMoveCallback()V

    .line 2345
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2826
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2839
    :goto_0
    return-void

    .line 2831
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2832
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2833
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2834
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2835
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2837
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/VideoModule;->mJpegRotation:I

    .line 2838
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/VideoModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLiveBroadcast(Lcom/android/camera/livebroadcast/status/AccountStatus$Status;)V
    .locals 7
    .param p1, "status"    # Lcom/android/camera/livebroadcast/status/AccountStatus$Status;

    .prologue
    .line 3205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3206
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/livebroadcast/status/Comment;

    .line 3207
    .local v0, "comment":Lcom/android/camera/livebroadcast/status/Comment;
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3208
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCommentsAdapter:Lcom/android/camera/livebroadcast/status/CommentsAdapter;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/livebroadcast/status/CommentsAdapter;->notifyItemInserted(I)V

    .line 3205
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3211
    .end local v0    # "comment":Lcom/android/camera/livebroadcast/status/Comment;
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getViewCount()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getReactions()Ljava/util/List;

    move-result-object v4

    .line 3212
    invoke-virtual {p1}, Lcom/android/camera/livebroadcast/status/AccountStatus$Status;->getComments()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mListComments:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 3211
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/VideoUI;->updateLiveBroadcastStatus(ILjava/util/List;Ljava/util/List;I)V

    .line 3213
    return-void
.end method

.method private updateOzoDynamicParameter()V
    .locals 5

    .prologue
    .line 2815
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v2, :cond_0

    .line 2816
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_sound_focus_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2817
    .local v1, "ozoValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->surroundSoundFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$SurroundSound;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2818
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/camera/one/OZOModeSelector;->getOZODynamicMode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2819
    .local v0, "ozoDynamicMode":I
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2820
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, v3, v0}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->setOzoDynamicFocusMode(Landroid/media/MediaRecorder;I)V

    .line 2823
    .end local v0    # "ozoDynamicMode":I
    .end local v1    # "ozoValue":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 2290
    const/4 v0, 0x0

    .line 2291
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2292
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 2293
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 2294
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 2295
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 2296
    move v0, v3

    .line 2301
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 2302
    return-void

    .line 2298
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

.method private updateParametersShutterSound()V
    .locals 5

    .prologue
    .line 1363
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v2, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v2, :cond_0

    .line 1365
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v2, :cond_0

    .line 1366
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1367
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v1, :cond_0

    .line 1368
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-interface {v2, v3}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 1369
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1370
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_shutter_sound_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mShutterSoundEnabled:Z

    .line 1372
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mShutterSoundEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 2308
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2309
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 2311
    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 20

    .prologue
    .line 2164
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-nez v15, :cond_0

    .line 2200
    :goto_0
    return-void

    .line 2167
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2168
    .local v10, "now":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/VideoModule;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v6, v10, v16

    .line 2172
    .local v6, "delta":J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    const v16, 0xea60

    sub-int v15, v15, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    cmp-long v15, v6, v16

    if-ltz v15, :cond_3

    const/4 v5, 0x1

    .line 2175
    .local v5, "countdownRemainingTime":Z
    :goto_1
    move-wide v8, v6

    .line 2176
    .local v8, "deltaAdjusted":J
    if-eqz v5, :cond_1

    .line 2177
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/camera/VideoModule;->mMaxVideoDurationInMs:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    .line 2183
    :cond_1
    const/4 v15, 0x0

    invoke-static {v8, v9, v15}, Lcom/android/camera/VideoModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v14

    .line 2184
    .local v14, "text":Ljava/lang/String;
    const-wide/16 v12, 0x3e8

    .line 2186
    .local v12, "targetNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v14}, Lcom/android/camera/VideoUI;->setRecordingTime(Ljava/lang/String;)V

    .line 2188
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    if-eq v15, v5, :cond_2

    .line 2191
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/camera/VideoModule;->mRecordingTimeCountsDown:Z

    .line 2193
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v15}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0e00a4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 2195
    .local v4, "color":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v15, v4}, Lcom/android/camera/VideoUI;->setRecordingTimeTextColor(I)V

    .line 2198
    .end local v4    # "color":I
    :cond_2
    rem-long v16, v6, v12

    sub-long v2, v12, v16

    .line 2199
    .local v2, "actualNextUpdateDelay":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2172
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
    .line 2770
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFocusAreaSupported:Z

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
    .line 2711
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2712
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 2714
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2720
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->setFocusParameters()V

    .line 2722
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 2735
    const/4 v0, 0x0

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 2803
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

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

    .line 2466
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 2468
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 2470
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_1

    .line 2471
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0, v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onDestroy(Landroid/app/Activity;)V

    .line 2472
    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 2474
    :cond_1
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 774
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 776
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 777
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 778
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 779
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraBackFacing()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 780
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v1, v4

    :goto_1
    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 781
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 782
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 783
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 784
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 786
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 789
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 791
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->SURROUND_SOUND:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    :goto_2
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 792
    iget-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mSoundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    :cond_0
    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 793
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_6

    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 795
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsSecureCamera:Z

    if-nez v1, :cond_8

    move v1, v2

    :goto_4
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 797
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsSecureCamera:Z

    if-eqz v1, :cond_9

    :cond_1
    move v1, v2

    :goto_5
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 798
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 800
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_a

    move v1, v2

    :goto_6
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 801
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-nez v1, :cond_b

    move v1, v2

    :goto_7
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 802
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqPIP()Z

    move-result v1

    if-nez v1, :cond_c

    move v1, v2

    :goto_8
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    .line 804
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 805
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showCancel:Z

    .line 806
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCancelCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cancelCallback:Landroid/view/View$OnClickListener;

    .line 807
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDone:Z

    .line 808
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mDoneCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->doneCallback:Landroid/view/View$OnClickListener;

    .line 809
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showReview:Z

    .line 810
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReviewCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->reviewCallback:Landroid/view/View$OnClickListener;

    .line 811
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showRetake:Z

    .line 812
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mRetakeCallback:Landroid/view/View$OnClickListener;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->retakeCallback:Landroid/view/View$OnClickListener;

    .line 815
    :cond_2
    return-object v0

    :cond_3
    move v1, v3

    .line 779
    goto/16 :goto_0

    .line 780
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    goto/16 :goto_1

    :cond_5
    move v1, v3

    .line 791
    goto/16 :goto_2

    :cond_6
    move v1, v3

    .line 793
    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move v1, v3

    .line 795
    goto :goto_4

    :cond_9
    move v1, v3

    .line 797
    goto :goto_5

    :cond_a
    move v1, v3

    .line 800
    goto :goto_6

    :cond_b
    move v1, v3

    .line 801
    goto :goto_7

    :cond_c
    move v1, v3

    .line 802
    goto :goto_8
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 766
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 767
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/VideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 769
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 767
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 470
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 760
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    const/4 v5, 0x0

    .line 484
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 487
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 488
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mAudioManager:Landroid/media/AudioManager;

    .line 489
    iput-boolean p2, p0, Lcom/android/camera/VideoModule;->mIsSecureCamera:Z

    .line 491
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 493
    new-instance v2, Lcom/android/camera/VideoUI;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    invoke-direct {v2, v3, p0, v4}, Lcom/android/camera/VideoUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/VideoController;Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    .line 494
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 495
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 497
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 499
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "PhotoModule"

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    .line 501
    const-string v2, "VideoModule"

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_id_key"

    iget v4, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 503
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 504
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isAccountExisted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    .line 505
    iget-boolean v2, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    .line 506
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "We should use openGL on init("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 512
    iget v2, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->requestCamera(I)V

    .line 514
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 518
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    .line 520
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.quickCapture"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mQuickCapture:Z

    .line 521
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 523
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v2, v5, v5}, Lcom/android/camera/VideoUI;->setOrientationIndicator(IZ)V

    .line 524
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 526
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 528
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 529
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 528
    invoke-static {v2, v3}, Lcom/android/camera/util/CameraUtil;->getCameraShutterIconId(ILandroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/VideoModule;->mShutterIconId:I

    .line 530
    new-instance v2, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 531
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 532
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/VideoModule$5;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoModule$5;-><init>(Lcom/android/camera/VideoModule;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    new-instance v2, Landroid/media/MediaActionSound;

    invoke-direct {v2}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 541
    return-void
.end method

.method public isInReviewMode()Z
    .locals 1

    .prologue
    .line 927
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    return v0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1829
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1489
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 3270
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 3271
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 3272
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onActivityResult(IILandroid/content/Intent;)Z

    .line 3278
    :cond_0
    :goto_0
    return-void

    .line 3274
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_0

    .line 3275
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1428
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1441
    :goto_0
    return v0

    .line 1431
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1432
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()Z

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1435
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Dialog is showing during live broadcast, Skip it!"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-eqz v1, :cond_3

    .line 1438
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopPublish()Z

    goto :goto_0

    .line 1441
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 9
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 820
    if-nez p1, :cond_0

    .line 821
    sget-object v2, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable returns a null CameraProxy object"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 873
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v4, :cond_1

    .line 826
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "onCameraAvailable"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 829
    :cond_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 831
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_video_flashmode_key"

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f080300

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    :cond_2
    iput-object p1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 836
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 839
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 840
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 841
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mFocusAreaSupported:Z

    .line 842
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 843
    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/camera/VideoModule;->mMeteringAreaSupported:Z

    .line 844
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->readVideoPreferences()V

    .line 845
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateDesiredPreviewSize()V

    .line 846
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resizeForPreviewAspectRatio()V

    .line 847
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeFocusManager()V

    .line 851
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 852
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v4, :cond_3

    .line 853
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v5, "mCameraPreviewParamsReady"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 856
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 858
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 860
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeVideoSnapshot()V

    .line 861
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v7}, Lcom/android/camera/VideoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/camera/app/CameraProvider;->getLogicCameraBackId()I

    move-result v7

    iget v8, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    if-ne v7, v8, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/camera/VideoUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;Z)V

    .line 862
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->initializeControlByIntent()V

    .line 864
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v6, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 865
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->isCameraFrontFacing()Z

    move-result v7

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/VideoModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 867
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 868
    const-string v2, "default_scope"

    const-string v3, "pref_sound_focus_key"

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :cond_5
    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 872
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0}, Lcom/android/camera/ButtonManager;->enableCameraButton()V

    goto/16 :goto_0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1755
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1756
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1758
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->stopVideoRecording()Z

    .line 1759
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1761
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1766
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1767
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1768
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()Z

    .line 1779
    :cond_0
    :goto_0
    return-void

    .line 1770
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1771
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1772
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()Z

    .line 1776
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f08028e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1777
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1449
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1469
    :cond_0
    :goto_0
    return v0

    .line 1452
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 1454
    sparse-switch p1, :sswitch_data_0

    .line 1469
    const/4 v0, 0x0

    goto :goto_0

    .line 1456
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1457
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1461
    :cond_2
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1462
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1467
    :cond_3
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1454
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1474
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1483
    :goto_0
    return v0

    .line 1475
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1483
    const/4 v0, 0x0

    goto :goto_0

    .line 1477
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1481
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1475
    :sswitch_data_0
    .sparse-switch
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 0
    .param p1, "isLandscape"    # Z

    .prologue
    .line 2478
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    .line 2479
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2706
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2700
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2701
    return-void

    .line 2700
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 1
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 667
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 668
    return-void
.end method

.method public onPhoneStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2781
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2788
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 1
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2777
    :goto_0
    return-void

    .line 2776
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->enableTorchMode(Z)V

    goto :goto_0
.end method

.method public onPreviewInitialDataReceived()V
    .locals 0

    .prologue
    .line 1379
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 2682
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2683
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 2

    .prologue
    .line 2673
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onPreviewUIReady"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2674
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v0, :cond_0

    .line 2675
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v1, "onPreviewUIReady"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2677
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPreview()V

    .line 2678
    return-void
.end method

.method public onPreviewVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2587
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2588
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->enableTorchMode(Z)V

    .line 2590
    :cond_0
    return-void

    .line 2588
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 964
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_0

    .line 3283
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 3285
    :cond_0
    return-void
.end method

.method public onReviewCancelClicked(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 905
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewImage()V

    .line 909
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewControls()V

    .line 910
    iput-boolean v2, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 911
    invoke-direct {p0, v2}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 912
    return-void
.end method

.method public onReviewDoneClicked(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 893
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewImage()V

    .line 894
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewControls()V

    .line 895
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->doReturnToCaller(Z)V

    .line 897
    return-void
.end method

.method public onReviewPlayClicked(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startPlayVideoActivity()V

    .line 889
    return-void
.end method

.method public onReviewRetakeClicked(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 916
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUriFromMediaSaved:Z

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 919
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsInReviewMode:Z

    .line 920
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 921
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewImage()V

    .line 922
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoUI;->hideReviewControls()V

    .line 923
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 347
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 348
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 350
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 351
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 352
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_2

    :cond_0
    move v2, v4

    .line 353
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 354
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 355
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 356
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 360
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 352
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 2484
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 8

    .prologue
    .line 968
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    if-eqz v4, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    sget-object v4, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onShutterButtonClick - recording : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 982
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v1

    .line 983
    .local v1, "buttonManager":Lcom/android/camera/ButtonManager;
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v4}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->getCurrentAccountType()Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    move-result-object v0

    .line 984
    .local v0, "accountType":Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    if-eqz v0, :cond_3

    const/16 v4, 0x10

    .line 985
    invoke-virtual {v1, v4}, Lcom/android/camera/ButtonManager;->isVisible(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 988
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-nez v4, :cond_2

    .line 989
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restartPreviewIfNecessary()V

    .line 990
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/camera/VideoModule;->onClickOnLiveBroadcast(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)V

    goto :goto_0

    .line 994
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    .line 995
    .local v3, "stop":Z
    const/4 v2, 0x0

    .line 997
    .local v2, "recordFail":Z
    if-eqz v3, :cond_6

    .line 1000
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()Z

    move-result v2

    .line 1008
    :goto_1
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1009
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v4, :cond_4

    .line 1010
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v5, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/camera/FocusOverlayManager;->onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1016
    :cond_4
    iget-boolean v4, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    if-nez v3, :cond_0

    .line 1017
    :cond_5
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x6

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1005
    :cond_6
    iget-object v4, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 1006
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 1034
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 1024
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 1029
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 577
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 575
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    .line 576
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->resetHideTimer()V

    goto :goto_0
.end method

.method public onVideoSaved()V
    .locals 1

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-eqz v0, :cond_0

    .line 958
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->showCaptureResult()V

    .line 960
    :cond_0
    return-void
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 337
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 338
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->takeASnapshot()V

    .line 343
    :cond_0
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 1239
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1249
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iput p1, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    .line 1243
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1248
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public onZoomClick()V
    .locals 3

    .prologue
    .line 2865
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez v1, :cond_1

    .line 2876
    :cond_0
    :goto_0
    return-void

    .line 2866
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, v1}, Lcom/android/camera/VideoModule;->useLogicCamera(Lcom/android/camera/app/AppController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2867
    iget v0, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    .line 2868
    .local v0, "zoomValue":F
    iget v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    const/high16 v2, 0x40000000    # 2.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 2869
    const/high16 v0, 0x40000000    # 2.0f

    .line 2873
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/VideoUI;->setZoom(F)V

    .line 2874
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/VideoModule;->onZoomChanged(F)V

    goto :goto_0

    .line 2871
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2400
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cancelCountdown()V

    .line 2401
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 2403
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    if-eqz v1, :cond_0

    .line 2404
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    const-string v2, "VideoModule.pause"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2405
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2406
    iput-object v4, p0, Lcom/android/camera/VideoModule;->mPreviewProfile:Lcom/android/camera/stats/profiler/Profile;

    .line 2409
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/OrientationManager;->removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 2411
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 2415
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2416
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2418
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_3

    .line 2420
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopVideoRecording()Z

    .line 2436
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->releasePreviewRender()V

    .line 2437
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeVideoFileDescriptor()V

    .line 2439
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 2440
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2441
    iput-object v4, p0, Lcom/android/camera/VideoModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2444
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 2446
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2447
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2449
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2450
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2451
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2452
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoModule;->mPendingSwitchCameraId:I

    .line 2453
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mSwitchingCamera:Z

    .line 2454
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPreferenceRead:Z

    .line 2457
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 2458
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 2460
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 2461
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoUI;->onPause()V

    .line 2462
    return-void

    .line 2422
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcasting:Z

    if-eqz v1, :cond_6

    .line 2423
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->onStopPublish()Z

    .line 2428
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v1, :cond_5

    .line 2429
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onPause(Landroid/app/Activity;)V

    .line 2431
    :cond_5
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->stopPreview()V

    .line 2432
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->closeCamera()V

    .line 2433
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->releaseMediaRecorder()V

    goto :goto_0

    .line 2425
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->cancelPublish()Z

    .line 2426
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mLBStarted:Z

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/camera/VideoModule;->restoreUI()V

    goto :goto_1
.end method

.method protected releasePreviewRender()V
    .locals 1

    .prologue
    .line 3050
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    if-eqz v0, :cond_0

    .line 3051
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    invoke-virtual {v0}, Lcom/android/camera/pip/opengl/GLRenderer;->release()V

    .line 3052
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoModule;->mGLPreviewRender:Lcom/android/camera/pip/opengl/GLRenderer;

    .line 3054
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2349
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->isVideoCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2350
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mDontResetIntentUiOnResume:Z

    .line 2353
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/VideoModule;->mPaused:Z

    .line 2354
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->installIntentFilter()V

    .line 2355
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2356
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 2357
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/VideoModule;->mZoomValue:F

    .line 2359
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    .line 2360
    .local v0, "orientationManager":Lcom/android/camera/app/OrientationManager;
    invoke-interface {v0, p0}, Lcom/android/camera/app/OrientationManager;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 2361
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/VideoUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 2363
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoModule;->showVideoSnapshotUI(Z)V

    .line 2365
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v1, :cond_1

    .line 2366
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->updateAccount()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    .line 2367
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    iput-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsAccountExisted:Z

    .line 2368
    sget-object v1, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We should use openGL on resume("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/VideoModule;->mShouldUseGLRenderer:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2370
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v1, :cond_4

    .line 2371
    iget v1, p0, Lcom/android/camera/VideoModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/VideoModule;->requestCamera(I)V

    .line 2377
    :goto_0
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    .line 2381
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 2384
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-eqz v1, :cond_3

    .line 2385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/VideoModule;->mOnResumeTime:J

    .line 2386
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2393
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 2395
    invoke-virtual {p0}, Lcom/android/camera/VideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 2396
    return-void

    .line 2374
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 2762
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2763
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->updateFocusParameters()V

    .line 2764
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2766
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2808
    iput p1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    .line 2809
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoUI;->setOrientation(IZ)V

    .line 2810
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAccountAgent:Lcom/android/camera/livebroadcast/AccountAgent;

    iget v1, p0, Lcom/android/camera/VideoModule;->mOrientation:I

    invoke-interface {v0, v1, p2}, Lcom/android/camera/livebroadcast/AccountAgent;->setOrientation(IZ)V

    .line 2811
    :cond_1
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2530
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v1, :cond_1

    .line 2542
    :cond_0
    :goto_0
    return-void

    .line 2533
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/VideoModule;->mIsVideoCaptureIntent:Z

    if-nez v1, :cond_0

    .line 2535
    if-eqz p1, :cond_3

    .line 2536
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 2540
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 2538
    :cond_3
    iget-object v1, p0, Lcom/android/camera/VideoModule;->mUI:Lcom/android/camera/VideoUI;

    invoke-virtual {v1, p1}, Lcom/android/camera/VideoUI;->showPreviewBorder(Z)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 2740
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2747
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2744
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 2745
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 2751
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2758
    :cond_0
    :goto_0
    return-void

    .line 2754
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2755
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mFaceDetectionStarted:Z

    .line 2756
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 1383
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 1384
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since it\'s not mPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1407
    :goto_0
    return-void

    .line 1387
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1388
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since mCameraDevice is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1394
    sget-object v0, Lcom/android/camera/VideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1398
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-ne v0, v1, :cond_2

    .line 1399
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1400
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1403
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_3

    .line 1404
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1406
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/VideoModule;->mPreviewing:Z

    goto :goto_0
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1216
    iget-boolean v0, p0, Lcom/android/camera/VideoModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1219
    :cond_1
    iget v0, p0, Lcom/android/camera/VideoModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1220
    invoke-direct {p0}, Lcom/android/camera/VideoModule;->setDisplayOrientation()V

    goto :goto_0
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/camera/VideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1227
    return-void
.end method

.method protected useLogicCamera(Lcom/android/camera/app/AppController;)Z
    .locals 2
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2860
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
