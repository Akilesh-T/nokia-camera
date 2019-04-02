.class public Lcom/android/camera/SlowmotionModule;
.super Lcom/android/camera/CameraModule;
.source "SlowmotionModule.java"

# interfaces
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/SlowmotionController;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SlowmotionModule$JpegPictureCallback;,
        Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;,
        Lcom/android/camera/SlowmotionModule$MainHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final HFR_LOWEST_RATE:I = 0x5a

.field private static final MSG_CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MSG_ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final MSG_SWITCH_CAMERA:I = 0x8

.field private static final MSG_SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x5

.field public static final NORMAL_FPS:I = 0x1e

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

.field private static final SIZE_480P:Lcom/android/ex/camera2/portability/Size;

.field private static final SIZE_720P:Lcom/android/ex/camera2/portability/Size;

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
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

.field private mCompassTagEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoFps:I

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoUriFromMediaSaved:Z

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mDesiredPreviewHeight:I

.field private mDesiredPreviewWidth:I

.field private mDisplayRotation:I

.field private mDontResetIntentUiOnResume:Z

.field private mFaceDetectionStarted:Z

.field private final mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

.field private mFocusAreaSupported:Z

.field private mFocusManager:Lcom/android/camera/FocusOverlayManager;

.field private mHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

.field private final mHandler:Landroid/os/Handler;

.field private mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsInReviewMode:Z

.field private mJpegRotation:I

.field private mLocationManager:Lcom/android/camera/app/LocationManager;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mMediaRecorderRecordingTimestamp:J

.field private mMeteringAreaSupported:Z

.field private mMirror:Z

.field private final mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOnResumeTime:J

.field private final mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

.field private mOriginalRingerMode:I

.field private mPaused:Z

.field private mPendingSwitchCameraId:I

.field private mPreferenceRead:Z

.field mPreviewing:Z

.field private mProfile:Landroid/media/CamcorderProfile;

.field private mQuickCapture:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mShutterIconId:I

.field private mSnapshotInProgress:Z

.field private mSwitchingCamera:Z

.field private mUI:Lcom/android/camera/SlowmotionUI;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x2d0

    .line 104
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SlowmotionModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 117
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    const/16 v1, 0x500

    invoke-direct {v0, v1, v2}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/SlowmotionModule;->SIZE_720P:Lcom/android/ex/camera2/portability/Size;

    .line 118
    new-instance v0, Lcom/android/ex/camera2/portability/Size;

    const/16 v1, 0x1e0

    invoke-direct {v0, v2, v1}, Lcom/android/ex/camera2/portability/Size;-><init>(II)V

    sput-object v0, Lcom/android/camera/SlowmotionModule;->SIZE_480P:Lcom/android/ex/camera2/portability/Size;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 379
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 115
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I

    .line 144
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    .line 162
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mRecordingTimeCountsDown:Z

    .line 182
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    .line 196
    new-instance v0, Lcom/android/camera/SlowmotionModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/SlowmotionModule$MainHandler;-><init>(Lcom/android/camera/SlowmotionModule;Lcom/android/camera/SlowmotionModule$1;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    .line 200
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mFaceDetectionStarted:Z

    .line 206
    new-instance v0, Lcom/android/camera/SlowmotionModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$1;-><init>(Lcom/android/camera/SlowmotionModule;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 228
    new-instance v0, Lcom/android/camera/SlowmotionModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$2;-><init>(Lcom/android/camera/SlowmotionModule;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 252
    new-instance v0, Lcom/android/camera/SlowmotionModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$3;-><init>(Lcom/android/camera/SlowmotionModule;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 263
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/SlowmotionModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$4;-><init>(Lcom/android/camera/SlowmotionModule;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 355
    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 373
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mCompassTagEnabled:Z

    .line 555
    new-instance v0, Lcom/android/camera/SlowmotionModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$5;-><init>(Lcom/android/camera/SlowmotionModule;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 572
    new-instance v0, Lcom/android/camera/SlowmotionModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowmotionModule$6;-><init>(Lcom/android/camera/SlowmotionModule;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 380
    return-void

    :cond_0
    move-object v0, v1

    .line 263
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/SlowmotionModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/SlowmotionModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/SlowmotionModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/SlowmotionModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/SlowmotionModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/camera/SlowmotionModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/SlowmotionModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/SlowmotionModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/SlowmotionModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/camera/SlowmotionModule;->enableTorchMode(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/camera/SlowmotionModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/camera/SlowmotionModule;->mPendingSwitchCameraId:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/SlowmotionModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->pauseAudioPlayback()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/camera/SlowmotionModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/SlowmotionModule;->mCameraFrontFacingForLastRecord:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/SlowmotionModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/SlowmotionModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateParametersHFRMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/camera/SlowmotionModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/SlowmotionModule;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->silenceSoundsAndVibrations()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/SlowmotionModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecordingTimestamp:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/android/camera/SlowmotionModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecordingTimestamp:J

    return-wide p1
.end method

.method static synthetic access$3402(Lcom/android/camera/SlowmotionModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # J

    .prologue
    .line 98
    iput-wide p1, p0, Lcom/android/camera/SlowmotionModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/android/camera/SlowmotionModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/SlowmotionUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/camera/SlowmotionModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/SlowmotionModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SlowmotionModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/SlowmotionModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SlowmotionModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/SlowmotionModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/SlowmotionModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget v0, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/SlowmotionModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/SlowmotionModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowmotionModule;
    .param p1, "x1"    # Z

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1248
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1249
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    .line 1254
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1163
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1165
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1177
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopFaceDetection()V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1170
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1171
    iput-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1172
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    .line 1173
    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    .line 1174
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2212
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2214
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2218
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2220
    :cond_0
    return-void

    .line 2215
    :catch_0
    move-exception v0

    .line 2216
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2205
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2206
    const-string v0, ".mp4"

    .line 2208
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
    .line 2198
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2199
    const-string v0, "video/mp4"

    .line 2201
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
    .line 389
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 390
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080448

    .line 391
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 393
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private currentZoomValue()F
    .locals 1

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    return v0
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1437
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1438
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1439
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1440
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1442
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1233
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1235
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1236
    const/4 v0, -0x1

    .line 1237
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1238
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1243
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1244
    return-void

    .line 1240
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
    .line 2103
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2134
    :goto_0
    return-void

    .line 2107
    :cond_0
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 2109
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 2111
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    if-eqz p1, :cond_3

    .line 2112
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2113
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 2118
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2119
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2130
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_2

    .line 2131
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2133
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/camera/SlowmotionUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0

    .line 2116
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
    .line 1378
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1379
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SlowmotionModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1381
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/SlowmotionModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1382
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/SlowmotionModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1383
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

    .line 1384
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

    .line 1385
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1386
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1389
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1390
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1391
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1392
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "width"

    iget-object v10, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1393
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "height"

    iget-object v10, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1394
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1395
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1396
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1394
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v8}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1398
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1399
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1400
    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1402
    :cond_0
    iput-object v7, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    .line 1403
    sget-object v8, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1404
    return-void
.end method

.method private getCamcorderProfileQuality(I)I
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 865
    const/4 v0, 0x5

    .line 867
    .local v0, "quality":I
    const/16 v1, 0x870

    if-lt p1, v1, :cond_0

    .line 868
    const/16 v0, 0x8

    .line 876
    :goto_0
    return v0

    .line 869
    :cond_0
    const/16 v1, 0x438

    if-lt p1, v1, :cond_1

    .line 870
    const/4 v0, 0x6

    goto :goto_0

    .line 871
    :cond_1
    const/16 v1, 0x2d0

    if-lt p1, v1, :cond_2

    .line 872
    const/4 v0, 0x5

    goto :goto_0

    .line 874
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private static getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 12
    .param p0, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "previewScreenSize"    # Landroid/graphics/Point;

    .prologue
    .line 938
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    .line 940
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 976
    :goto_0
    return-object v8

    .line 943
    :cond_0
    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_3

    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 945
    .local v4, "previewScreenShortSide":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 946
    .local v7, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 947
    .local v2, "preferred":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 948
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    .line 949
    .local v3, "preferredPreviewSizeShortSide":I
    :goto_2
    mul-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_1

    .line 950
    new-instance v2, Lcom/android/camera/util/Size;

    .end local v2    # "preferred":Lcom/android/camera/util/Size;
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v8, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 952
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int v5, v8, v9

    .line 953
    .local v5, "product":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 955
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/util/Size;>;"
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 956
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 957
    .local v6, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int/2addr v8, v9

    if-le v8, v5, :cond_2

    .line 958
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 943
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

    .line 948
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    .restart local v4    # "previewScreenShortSide":I
    .restart local v7    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    goto :goto_2

    .line 965
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

    .line 966
    .restart local v6    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v9, v10, :cond_6

    .line 967
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v9, v10, :cond_6

    .line 968
    sget-object v8, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 970
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    .line 974
    .end local v6    # "size":Lcom/android/camera/util/Size;
    :cond_7
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v8, v8

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 976
    .local v1, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0
.end method

.method private getHFRByInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .locals 2
    .param p1, "ihfr"    # I

    .prologue
    .line 853
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 854
    .local v0, "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    const/16 v1, 0x78

    if-ne p1, v1, :cond_1

    .line 855
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_120:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 861
    :cond_0
    :goto_0
    return-object v0

    .line 856
    :cond_1
    const/16 v1, 0x5a

    if-ne p1, v1, :cond_2

    .line 857
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_90:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    goto :goto_0

    .line 858
    :cond_2
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_0

    .line 859
    sget-object v0, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_60:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    goto :goto_0
.end method

.method private getHFRInt(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)I
    .locals 6
    .param p1, "hfr"    # Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .prologue
    .line 881
    invoke-virtual {p1}, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 882
    .local v2, "shfr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 884
    .local v0, "ihfr":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 888
    :goto_0
    return v0

    .line 885
    :catch_0
    move-exception v1

    .line 886
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid hfr rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1610
    const/4 v0, 0x0

    .line 1611
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 1612
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1625
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1628
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraFrontFacingForLastRecord:Z

    invoke-static {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1630
    :cond_1
    return-object v0

    .line 1614
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1616
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1617
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1618
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    .line 1617
    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1619
    :catch_0
    move-exception v1

    .line 1621
    .local v1, "ex":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 546
    :goto_0
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 547
    return-void

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMirror:Z

    .line 531
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 534
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v10, v8, v0

    .line 537
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 538
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_1

    .line 539
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 542
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/SlowmotionModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 544
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v4}, Lcom/android/camera/SlowmotionUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 22

    .prologue
    .line 1258
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "initializeRecorder: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1261
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v19, "null camera proxy, not recording"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1352
    :goto_0
    return-void

    .line 1264
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 1265
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 1267
    .local v10, "myExtras":Landroid/os/Bundle;
    const-wide/16 v12, 0x0

    .line 1268
    .local v12, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SlowmotionModule;->closeVideoFileDescriptor()V

    .line 1269
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1271
    new-instance v18, Landroid/media/MediaRecorder;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->unlock()V

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v4

    .line 1281
    .local v4, "camera":Landroid/hardware/Camera;
    if-nez v4, :cond_1

    .line 1282
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v19, "null camera within proxy, not recording"

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1286
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1295
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentHFR()Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->stringify(Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1298
    :goto_1
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mCurrentVideoFps = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    const/16 v19, 0x1e

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    move/from16 v18, v0

    const/16 v19, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v20, v0

    div-int v19, v19, v20

    mul-int v14, v18, v19

    .line 1303
    .local v14, "scaledBitrate":I
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "scaledBitrate = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 1306
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SlowmotionModule;->setRecordLocation()V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1319
    :goto_2
    const-wide/32 v16, 0x2aea540

    .line 1320
    .local v16, "threshold":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v18

    sub-long v8, v18, v16

    .line 1321
    .local v8, "maxFileSize":J
    const-wide/16 v18, 0x0

    cmp-long v18, v12, v18

    if-lez v18, :cond_2

    cmp-long v18, v12, v8

    if-gez v18, :cond_2

    .line 1322
    move-wide v8, v12

    .line 1326
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1334
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    move-object/from16 v18, v0

    .line 1335
    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v15

    .line 1336
    .local v15, "sensorOrientation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v18, v0

    .line 1337
    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v5

    .line 1339
    .local v5, "deviceOrientation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v18

    .line 1338
    move/from16 v0, v18

    invoke-static {v15, v5, v0}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v11

    .line 1340
    .local v11, "rotation":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1343
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1314
    .end local v5    # "deviceOrientation":I
    .end local v8    # "maxFileSize":J
    .end local v11    # "rotation":I
    .end local v15    # "sensorOrientation":I
    .end local v16    # "threshold":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/camera/SlowmotionModule;->generateVideoFilename(I)V

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1344
    .restart local v5    # "deviceOrientation":I
    .restart local v8    # "maxFileSize":J
    .restart local v11    # "rotation":I
    .restart local v15    # "sensorOrientation":I
    .restart local v16    # "threshold":J
    :catch_0
    move-exception v6

    .line 1345
    .local v6, "e":Ljava/io/IOException;
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "prepare failed for "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v6}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1346
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/SlowmotionModule;->releaseMediaRecorder()V

    .line 1347
    new-instance v18, Ljava/lang/RuntimeException;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1327
    .end local v5    # "deviceOrientation":I
    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "rotation":I
    .end local v15    # "sensorOrientation":I
    :catch_1
    move-exception v18

    goto/16 :goto_3

    .line 1296
    .end local v8    # "maxFileSize":J
    .end local v14    # "scaledBitrate":I
    .end local v16    # "threshold":J
    :catch_2
    move-exception v18

    goto/16 :goto_1
.end method

.method private initializeVideoSnapshot()V
    .locals 1

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 2079
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 985
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 987
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 988
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 989
    new-instance v1, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/SlowmotionModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/SlowmotionModule;Lcom/android/camera/SlowmotionModule$1;)V

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 990
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 991
    return-void
.end method

.method private isCameraBackFacing()Z
    .locals 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v0

    .line 516
    return v0
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 508
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

    .line 1800
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
    .line 1407
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1408
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1410
    .local v10, "flashSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v11

    .line 1411
    .local v11, "gridLinesOn":Z
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1412
    .local v6, "width":I
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1413
    .local v7, "height":I
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1414
    .local v8, "size":J
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1415
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v4

    .line 1416
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->currentZoomValue()F

    move-result v5

    move-wide v2, p1

    .line 1415
    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(Ljava/lang/String;JZFIIJLjava/lang/String;Z)V

    .line 1417
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 1735
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 1736
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 1737
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 1738
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 1739
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 1741
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1744
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 1745
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 1746
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1748
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1750
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1754
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 1755
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1757
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1758
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1761
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 1762
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1764
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1767
    if-eqz p2, :cond_5

    .line 1768
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1769
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 1770
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 1771
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1773
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1776
    .end local v4    # "remainderCentiSeconds":J
    :cond_5
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method private onPreviewStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1101
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1103
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1104
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1105
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 1108
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->startFaceDetection()V

    .line 1109
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 704
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->stopVideoRecording()Z

    move-result v0

    .line 705
    .local v0, "recordFail":Z
    if-nez v0, :cond_1

    .line 707
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 5

    .prologue
    .line 2320
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_0

    .line 2328
    :goto_0
    return-void

    .line 2321
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2322
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2324
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2325
    :catch_0
    move-exception v0

    .line 2326
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 1

    .prologue
    .line 778
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setHFRParameter()V

    .line 779
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPreferenceRead:Z

    .line 780
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1367
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1368
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1369
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->cleanupEmptyFile()V

    .line 1370
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1372
    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1374
    :cond_0
    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    .line 1375
    return-void
.end method

.method private requestCamera(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2233
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraProvider;->requestCamera(I)V

    .line 2234
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 3

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowmotionUI;->setAspectRatio(F)V

    .line 981
    return-void
.end method

.method private restoreRingerMode()V
    .locals 1

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1493
    :cond_0
    return-void
.end method

.method private saveVideo()V
    .locals 6

    .prologue
    .line 1420
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 1421
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/SlowmotionModule;->mRecordingStartTime:J

    sub-long v0, v2, v4

    .line 1422
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1423
    iget v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFps:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 1427
    :goto_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1428
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1429
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/app/MediaSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 1431
    invoke-direct {p0, v0, v1}, Lcom/android/camera/SlowmotionModule;->logVideoCapture(J)V

    .line 1433
    .end local v0    # "duration":J
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1434
    return-void

    .line 1425
    .restart local v0    # "duration":J
    :cond_1
    sget-object v2, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1805
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    .line 1808
    .local v5, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateDesiredPreviewSize()V

    .line 1810
    new-instance v4, Lcom/android/camera/util/Size;

    iget v7, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    iget v8, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewHeight:I

    invoke-direct {v4, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1811
    .local v4, "previewSize":Lcom/android/camera/util/Size;
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1814
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const-string v8, "video-size"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/ex/camera2/portability/CameraSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1818
    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v0

    .line 1819
    .local v0, "fpsRange":[I
    array-length v7, v0

    if-lez v7, :cond_4

    .line 1820
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v8, v0, v11

    aget v9, v0, v12

    invoke-virtual {v7, v8, v9}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1825
    :goto_0
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/camera/SlowmotionModule;->enableTorchMode(Z)V

    .line 1828
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1829
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v8, p0, Lcom/android/camera/SlowmotionModule;->mZoomValue:F

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1831
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateFocusParameters()V

    .line 1833
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1836
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1837
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1848
    :cond_1
    :goto_1
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 1849
    .local v6, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget v7, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    iget v8, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewHeight:I

    invoke-static {v6, v7, v8}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    .line 1851
    .local v2, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v3, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1852
    .local v3, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v3, v2}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1853
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1855
    :cond_2
    sget-object v7, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Video snapshot size is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1858
    iget v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 1860
    .local v1, "jpegQuality":I
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 1862
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateParametersTouchAfAec()V

    .line 1864
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v7, :cond_3

    .line 1865
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1868
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1872
    :cond_3
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v8}, Lcom/android/camera/SlowmotionUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1873
    return-void

    .line 1822
    .end local v1    # "jpegQuality":I
    .end local v2    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v3    # "original":Lcom/android/camera/util/Size;
    .end local v6    # "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v8, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v8, v8, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .line 1838
    :cond_5
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1839
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    goto/16 :goto_1

    .line 1840
    :cond_6
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v8, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v7, v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1841
    iget-object v7, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v7, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    goto/16 :goto_1
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .prologue
    .line 1355
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1356
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 994
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    .line 995
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 996
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 997
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDisplayOrientation:I

    .line 999
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1002
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 1003
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 1005
    :cond_1
    return-void
.end method

.method private setHFRParameter()V
    .locals 21

    .prologue
    .line 785
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    move/from16 v17, v0

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedHFRMap()Ljava/util/HashMap;

    move-result-object v10

    .line 789
    .local v10, "hfrMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/ex/camera2/portability/Size;Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v4, "avaliableSize":Ljava/util/List;, "Ljava/util/List<Lcom/android/ex/camera2/portability/Size;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 791
    .local v9, "hfrIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 792
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/ex/camera2/portability/Size;

    .line 793
    .local v14, "key":Lcom/android/ex/camera2/portability/Size;
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 794
    .local v8, "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/camera/SlowmotionModule;->getHFRInt(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)I

    move-result v12

    .line 795
    .local v12, "ihfr":I
    const/16 v17, 0x5a

    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 796
    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v8    # "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .end local v12    # "ihfr":I
    .end local v14    # "key":Lcom/android/ex/camera2/portability/Size;
    :cond_1
    new-instance v17, Lcom/android/camera/SlowmotionModule$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/camera/SlowmotionModule$7;-><init>(Lcom/android/camera/SlowmotionModule;)V

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 810
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    .line 811
    .local v15, "lastIndex":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v17

    sget-object v18, Lcom/android/camera/SlowmotionModule;->SIZE_720P:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_2

    .line 812
    sget-object v17, Lcom/android/camera/SlowmotionModule;->SIZE_720P:Lcom/android/ex/camera2/portability/Size;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    sget-object v17, Lcom/android/camera/SlowmotionModule;->SIZE_720P:Lcom/android/ex/camera2/portability/Size;

    add-int/lit8 v18, v15, -0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    sget-object v17, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add 720_hfr = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 816
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v17

    sget-object v18, Lcom/android/camera/SlowmotionModule;->SIZE_480P:Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v18 .. v18}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 817
    sget-object v17, Lcom/android/camera/SlowmotionModule;->SIZE_480P:Lcom/android/ex/camera2/portability/Size;

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 818
    sget-object v17, Lcom/android/camera/SlowmotionModule;->SIZE_480P:Lcom/android/ex/camera2/portability/Size;

    add-int/lit8 v18, v15, -0x1

    move/from16 v0, v18

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    sget-object v17, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "add 480_hfr = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 823
    :cond_3
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_4

    .line 824
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 826
    .local v5, "currentHfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v7

    .line 827
    .local v7, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/camera/SlowmotionModule;->getCamcorderProfileQuality(I)I

    move-result v18

    invoke-static/range {v17 .. v18}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v16

    .line 828
    .local v16, "profile":Landroid/media/CamcorderProfile;
    sget-object v18, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profile:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ", avasize:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 829
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "x"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v17

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, ", currentHFR:"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 828
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 830
    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v18, v0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->height()I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v18, v0

    .line 831
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/ex/camera2/portability/Size;

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/Size;->width()I

    move-result v17

    move/from16 v0, v18

    move/from16 v1, v17

    if-gt v0, v1, :cond_7

    .line 833
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/camera/SlowmotionModule;->getHFRInt(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)I

    move-result v13

    .local v13, "j":I
    :goto_2
    const/16 v17, 0x5a

    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    .line 835
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/SlowmotionModule;->getHFRByInt(I)Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-result-object v8

    .line 836
    .restart local v8    # "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getCameraCapabilitiesExtension()Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;

    move-result-object v17

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v18, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    move/from16 v20, v0

    .line 837
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/ex/camera2/portability/extension/CameraCapabilitiesExtension;->isHFRSettingSupportedByEncoder(IILcom/android/ex/camera2/portability/CameraCapabilities$HFR;I)Z

    move-result v6

    .line 838
    .local v6, "encoderSupport":Z
    if-eqz v6, :cond_5

    .line 839
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/camera/SlowmotionModule;->mHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    .line 840
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 841
    sget-object v17, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "#mHFR:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/SlowmotionModule;->mHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 850
    .end local v5    # "currentHfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .end local v6    # "encoderSupport":Z
    .end local v7    # "height":I
    .end local v8    # "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .end local v13    # "j":I
    .end local v16    # "profile":Landroid/media/CamcorderProfile;
    :cond_4
    return-void

    .line 844
    .restart local v5    # "currentHfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .restart local v6    # "encoderSupport":Z
    .restart local v7    # "height":I
    .restart local v8    # "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    .restart local v13    # "j":I
    .restart local v16    # "profile":Landroid/media/CamcorderProfile;
    :cond_5
    sget-object v17, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "codec not support:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 833
    add-int/lit8 v13, v13, -0x1e

    goto/16 :goto_2

    .line 847
    .end local v6    # "encoderSupport":Z
    .end local v8    # "hfr":Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;
    :cond_6
    sget-object v17, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v18, "#setHFRParameter choose no avaliable hfr"

    invoke-static/range {v17 .. v18}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 823
    .end local v13    # "j":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 1359
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1360
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1361
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1362
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 1361
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1364
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .prologue
    .line 1634
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mIsInReviewMode:Z

    .line 1635
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1636
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1637
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "get null video thumbnail"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1639
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1}, Lcom/android/camera/SlowmotionUI;->showReviewControls()V

    .line 1640
    return-void
.end method

.method private silenceSoundsAndVibrations()V
    .locals 4

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1483
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/SlowmotionModule;->mOriginalRingerMode:I

    .line 1485
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 692
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 693
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 694
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/SlowmotionModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    :goto_0
    return-void

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private startPreview()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1045
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1047
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 1048
    .local v2, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPreferenceRead:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v3, :cond_1

    .line 1098
    :cond_0
    :goto_0
    return-void

    .line 1053
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    if-ne v3, v5, :cond_2

    .line 1054
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopPreview()V

    .line 1057
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setDisplayOrientation()V

    .line 1058
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v4, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 1059
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setCameraParameters()V

    .line 1061
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_3

    .line 1064
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1065
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 1066
    .local v1, "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v3, :cond_3

    .line 1067
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1076
    .end local v1    # "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :cond_3
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1077
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "calling onPreviewReadyToStart to set one shot callback"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1078
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->onPreviewReadyToStart()V

    .line 1083
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 1084
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/camera/SlowmotionModule$8;

    invoke-direct {v5, p0}, Lcom/android/camera/SlowmotionModule$8;-><init>(Lcom/android/camera/SlowmotionModule;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 1093
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1094
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->closeCamera()V

    .line 1096
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "startPreview failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1080
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "on L, no one shot callback necessary"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 3

    .prologue
    .line 1501
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVideoRecording: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1502
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowmotionUI;->cancelAnimations()V

    .line 1503
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowmotionUI;->setSwipingEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowmotionUI;->hidePassiveFocusIndicator()V

    .line 1505
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1506
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/SlowmotionModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowmotionModule$9;-><init>(Lcom/android/camera/SlowmotionModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1607
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1643
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1647
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->restoreRingerMode()V

    .line 1649
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/SlowmotionUI;->setSwipingEnabled(Z)V

    .line 1650
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v3}, Lcom/android/camera/SlowmotionUI;->showPassiveFocusIndicator()V

    .line 1651
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1652
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 1653
    const/4 v1, 0x0

    .line 1654
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_2

    .line 1655
    const/4 v2, 0x0

    .line 1658
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1659
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1660
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 1661
    const/4 v2, 0x1

    .line 1662
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1663
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    .line 1672
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecordingTimestamp:J

    .line 1673
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    if-eqz v3, :cond_0

    .line 1674
    iput-boolean v6, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    .line 1675
    invoke-virtual {p0, v6}, Lcom/android/camera/SlowmotionModule;->showVideoSnapshotUI(Z)V

    .line 1677
    :cond_0
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->unlockOrientation()V

    .line 1678
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 1683
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1686
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopPreview()V

    .line 1687
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->closeCamera()V

    .line 1690
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/SlowmotionUI;->showRecordingUI(Z)V

    .line 1693
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/SlowmotionUI;->setOrientationIndicator(IZ)V

    .line 1694
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1695
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1696
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_2

    .line 1697
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->saveVideo()V

    .line 1702
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->releaseMediaRecorder()V

    .line 1704
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1706
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, v7}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1708
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/SlowmotionModule;->mShutterIconId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 1709
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_3

    .line 1710
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->setFocusParameters()V

    .line 1711
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    .line 1712
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v3, :cond_5

    .line 1713
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopPreview()V

    .line 1715
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->startPreview()V

    .line 1722
    :goto_1
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1729
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v8}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1731
    return v1

    .line 1664
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 1665
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1666
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1667
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/SlowmotionModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1669
    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1717
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_5
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v4, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraSettings;->setHFR(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)V

    .line 1718
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_1
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2166
    .local v8, "dateTaken":J
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v7

    .line 2167
    .local v7, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2168
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v12

    .line 2169
    .local v12, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v12}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 2170
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SlowmotionModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v17

    .line 2171
    .local v17, "heading":I
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/SlowmotionModule;->mCompassTagEnabled:Z

    if-eqz v5, :cond_0

    .line 2173
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    invoke-virtual {v12, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 2176
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

    .line 2179
    .local v14, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v12, v4}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2180
    invoke-virtual {v12, v14}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2185
    .end local v4    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v14    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2186
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v10, "pref_camera_video_flashmode_key"

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2187
    .local v15, "flashSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2193
    .local v16, "gridLinesOn":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SlowmotionModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/SlowmotionModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 2195
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2041
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 2073
    :goto_0
    return-void

    .line 2044
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2046
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Start to switch camera."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2047
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    .line 2048
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mPendingSwitchCameraId:I

    .line 2049
    const-string v1, "PhotoModule"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2052
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 2053
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 2055
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1}, Lcom/android/camera/SlowmotionUI;->resetPreviewOverlay()V

    .line 2056
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 2057
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->closeCamera()V

    .line 2058
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/SlowmotionModule;->requestCamera(I)V

    .line 2060
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mMirror:Z

    .line 2061
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    .line 2062
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 2066
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mZoomValue:F

    .line 2067
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/SlowmotionUI;->setOrientationIndicator(IZ)V

    .line 2071
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2072
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/camera/SlowmotionUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0
.end method

.method private takeASnapshot()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 466
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 467
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cannot take a video snapshot - not supported by hardware"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 472
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 477
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 478
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 480
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateJpegRotation()V

    .line 481
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 483
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;

    iget-wide v8, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecordingTimestamp:J

    invoke-direct {v5, p0, v6, v8, v9}, Lcom/android/camera/SlowmotionModule$JpegPictureCallback;-><init>(Lcom/android/camera/SlowmotionModule;Landroid/location/Location;J)V

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 486
    invoke-virtual {p0, v7}, Lcom/android/camera/SlowmotionModule;->showVideoSnapshotUI(Z)V

    .line 487
    iput-boolean v7, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 492
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_2

    .line 497
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateDesiredPreviewSize()V
    .locals 4

    .prologue
    .line 907
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_1

    .line 919
    :cond_0
    :goto_0
    return-void

    .line 911
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 912
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    .line 913
    invoke-virtual {v3}, Lcom/android/camera/SlowmotionUI;->getPreviewScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 912
    invoke-static {v1, v2, v3}, Lcom/android/camera/SlowmotionModule;->getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 914
    .local v0, "desiredPreviewSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    .line 915
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewHeight:I

    .line 916
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget v2, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/SlowmotionUI;->setPreviewSize(II)V

    .line 917
    sget-object v1, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated DesiredPreview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowmotionModule;->mDesiredPreviewHeight:I

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
    .line 2358
    sget-object v4, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2360
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mJpegRotation:I

    .line 2361
    .local v1, "lJpegRotation":I
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    .line 2362
    .local v0, "hw_rotate_support":Z
    sget-object v4, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2364
    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    .line 2365
    .local v2, "needOverrideRotation":Z
    :goto_0
    sget-object v4, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2367
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2368
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 2369
    .local v3, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p2, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2372
    .end local v3    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    return-void

    .line 2364
    .end local v2    # "needOverrideRotation":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateFocusParameters()V
    .locals 4

    .prologue
    .line 1904
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1905
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v0

    .line 1916
    .local v0, "supportedFocus":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1917
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1918
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1919
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    .line 1918
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1920
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 1921
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1924
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_1

    .line 1925
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1929
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateParametersExposureCompensation()V

    .line 1930
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateAutoFocusMoveCallback()V

    .line 1931
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2341
    iget-boolean v4, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2354
    :goto_0
    return-void

    .line 2346
    :cond_0
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2347
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2348
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2349
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2350
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2352
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/SlowmotionModule;->mJpegRotation:I

    .line 2353
    sget-object v4, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/SlowmotionModule;->mJpegRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParametersExposureCompensation()V
    .locals 7

    .prologue
    .line 1876
    const/4 v0, 0x0

    .line 1877
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1878
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 1879
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 1880
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 1881
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 1882
    move v0, v3

    .line 1887
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1888
    return-void

    .line 1884
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

.method private updateParametersHFRMode()V
    .locals 3

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_1

    .line 897
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HFR:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setHFR(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)V

    .line 896
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateParametersHFRMode #setHFR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mHFR:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateParametersShutterSound()V
    .locals 6

    .prologue
    .line 1115
    iget-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1127
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 1117
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 1118
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1119
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 1120
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 1121
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1122
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1124
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 1894
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 1897
    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    .line 1780
    iget-boolean v9, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-nez v9, :cond_0

    .line 1797
    :goto_0
    return-void

    .line 1783
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1784
    .local v4, "now":J
    iget-wide v10, p0, Lcom/android/camera/SlowmotionModule;->mRecordingStartTime:J

    sub-long v2, v4, v10

    .line 1790
    .local v2, "delta":J
    const/4 v9, 0x0

    invoke-static {v2, v3, v9}, Lcom/android/camera/SlowmotionModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1791
    .local v8, "text":Ljava/lang/String;
    const-wide/16 v6, 0x3e8

    .line 1793
    .local v6, "targetNextUpdateDelay":J
    iget-object v9, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v9, v8}, Lcom/android/camera/SlowmotionUI;->setRecordingTime(Ljava/lang/String;)V

    .line 1795
    rem-long v10, v2, v6

    sub-long v0, v6, v10

    .line 1796
    .local v0, "actualNextUpdateDelay":J
    iget-object v9, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 2299
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusAreaSupported:Z

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
    .line 2249
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2250
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 2252
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2257
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2258
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->setFocusParameters()V

    .line 2260
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 2264
    const/4 v0, 0x0

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 2332
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 2028
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 614
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 616
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    sget-object v2, Lcom/android/camera/util/ProductConfigUtil;->DEFALUT_SLOW_MOTION_FRONT_ON:Ljava/lang/String;

    sget-object v5, Lcom/android/camera/util/ProductConfigUtil;->CONFIG_SLOW_MOTION_FRONT:Ljava/lang/String;

    .line 617
    invoke-static {v5}, Lcom/android/camera/util/ProductConfigUtil;->getConfigProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 618
    .local v1, "hasFrontSlowMotion":Z
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 619
    if-nez v1, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 620
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 621
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 622
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraBackFacing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 623
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    iput-object v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 624
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 625
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 626
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 627
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 628
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 630
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 633
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 635
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 636
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 637
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 638
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 640
    iget-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-nez v2, :cond_5

    :goto_4
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 642
    return-object v0

    :cond_0
    move v2, v4

    .line 619
    goto :goto_0

    :cond_1
    move v2, v4

    .line 622
    goto :goto_1

    .line 623
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    goto :goto_2

    :cond_3
    move v2, v4

    .line 636
    goto :goto_3

    :cond_4
    move v2, v3

    goto :goto_3

    :cond_5
    move v3, v4

    .line 640
    goto :goto_4
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 606
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 607
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/SlowmotionModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 607
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 600
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 398
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 401
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 402
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAudioManager:Landroid/media/AudioManager;

    .line 404
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 406
    new-instance v1, Lcom/android/camera/SlowmotionUI;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/SlowmotionUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/SlowmotionController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    .line 407
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 409
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 411
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "PhotoModule"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    .line 418
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/SlowmotionModule;->requestCamera(I)V

    .line 420
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 422
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mQuickCapture:Z

    .line 423
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 425
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/SlowmotionUI;->setOrientationIndicator(IZ)V

    .line 426
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setDisplayOrientation()V

    .line 428
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mPendingSwitchCameraId:I

    .line 430
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 431
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 430
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getCameraShutterIconId(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mShutterIconId:I

    .line 432
    new-instance v1, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 433
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1497
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1181
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1188
    :goto_0
    return v0

    .line 1184
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1188
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 647
    if-nez p1, :cond_0

    .line 648
    sget-object v2, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable returns a null CameraProxy object"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 654
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 655
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_1
    iput-object p1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 659
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 662
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 663
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 664
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusAreaSupported:Z

    .line 665
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 666
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/SlowmotionModule;->mMeteringAreaSupported:Z

    .line 667
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->readVideoPreferences()V

    .line 668
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateDesiredPreviewSize()V

    .line 669
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->resizeForPreviewAspectRatio()V

    .line 670
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->initializeFocusManager()V

    .line 674
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 676
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->startPreview()V

    .line 678
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 680
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->initializeVideoSnapshot()V

    .line 681
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    iget-object v3, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/SlowmotionUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 682
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->initializeControlByIntent()V

    .line 684
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 685
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/SlowmotionModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 687
    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 688
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
    .line 1447
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1448
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1450
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->stopVideoRecording()Z

    .line 1451
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1453
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1458
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1459
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1460
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onStopVideoRecording()V

    .line 1471
    :cond_0
    :goto_0
    return-void

    .line 1462
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1463
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1464
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onStopVideoRecording()V

    .line 1468
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f08028e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1469
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1195
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return v0

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 1200
    sparse-switch p1, :sswitch_data_0

    .line 1215
    const/4 v0, 0x0

    goto :goto_0

    .line 1202
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1203
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1207
    :cond_2
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1208
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1213
    :cond_3
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1200
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

    .line 1220
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1229
    :goto_0
    return v0

    .line 1221
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1229
    const/4 v0, 0x0

    goto :goto_0

    .line 1223
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1227
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1221
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
    .line 2032
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setDisplayOrientation()V

    .line 2033
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2244
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2238
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2239
    return-void

    .line 2238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 1
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SlowmotionUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 553
    return-void
.end method

.method public onPhoneStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2310
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2317
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 1
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2304
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2306
    :goto_0
    return-void

    .line 2305
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/SlowmotionModule;->enableTorchMode(Z)V

    goto :goto_0
.end method

.method public onPreviewInitialDataReceived()V
    .locals 0

    .prologue
    .line 1131
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 2229
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopPreview()V

    .line 2230
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 0

    .prologue
    .line 2224
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->startPreview()V

    .line 2225
    return-void
.end method

.method public onPreviewVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2138
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2139
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/SlowmotionModule;->enableTorchMode(Z)V

    .line 2141
    :cond_0
    return-void

    .line 2139
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 722
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 285
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 287
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 288
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 289
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 290
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_2

    :cond_0
    move v2, v4

    .line 291
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 292
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 293
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 294
    iget-object v4, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 298
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 290
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 2038
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 726
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_0

    .line 760
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    .line 742
    .local v0, "stop":Z
    if-eqz v0, :cond_2

    .line 745
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 746
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onStopVideoRecording()V

    .line 753
    :goto_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 754
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v1, :cond_1

    .line 755
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 758
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 750
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 751
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 775
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 765
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 770
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 461
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 275
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 276
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->takeASnapshot()V

    .line 281
    :cond_0
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 1032
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return-void

    .line 1035
    :cond_1
    iput p1, p0, Lcom/android/camera/SlowmotionModule;->mZoomValue:F

    .line 1036
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1978
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    .line 1980
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/OrientationManager;->removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 1982
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1986
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1987
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1989
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1991
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->onStopVideoRecording()V

    .line 1998
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->closeVideoFileDescriptor()V

    .line 2000
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 2001
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2002
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SlowmotionModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2005
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 2007
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 2008
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2010
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2011
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2012
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2013
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mPendingSwitchCameraId:I

    .line 2014
    iput-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mSwitchingCamera:Z

    .line 2015
    iput-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPreferenceRead:Z

    .line 2018
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 2019
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 2021
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 2022
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1}, Lcom/android/camera/SlowmotionUI;->onPause()V

    .line 2023
    return-void

    .line 1993
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->stopPreview()V

    .line 1994
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->closeCamera()V

    .line 1995
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1936
    iput-boolean v3, p0, Lcom/android/camera/SlowmotionModule;->mPaused:Z

    .line 1937
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->installIntentFilter()V

    .line 1938
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1939
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1940
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/SlowmotionModule;->mZoomValue:F

    .line 1942
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    .line 1943
    .local v0, "orientationManager":Lcom/android/camera/app/OrientationManager;
    invoke-interface {v0, p0}, Lcom/android/camera/app/OrientationManager;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 1944
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/SlowmotionUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 1946
    invoke-virtual {p0, v3}, Lcom/android/camera/SlowmotionModule;->showVideoSnapshotUI(Z)V

    .line 1948
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    if-nez v1, :cond_2

    .line 1949
    iget v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/SlowmotionModule;->requestCamera(I)V

    .line 1955
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1959
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1962
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    if-eqz v1, :cond_1

    .line 1963
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/SlowmotionModule;->mOnResumeTime:J

    .line 1964
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1971
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1973
    invoke-virtual {p0}, Lcom/android/camera/SlowmotionModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1974
    return-void

    .line 1952
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 2291
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2292
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->updateFocusParameters()V

    .line 2293
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2295
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2337
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SlowmotionUI;->setOrientation(IZ)V

    .line 2338
    :cond_0
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 2082
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v1, :cond_1

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2085
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2086
    if-eqz p1, :cond_3

    .line 2087
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 2091
    :goto_1
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 2089
    :cond_3
    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mUI:Lcom/android/camera/SlowmotionUI;

    invoke-virtual {v1, p1}, Lcom/android/camera/SlowmotionUI;->showPreviewBorder(Z)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 2269
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2276
    :cond_0
    :goto_0
    return-void

    .line 2272
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFaceDetectionStarted:Z

    .line 2274
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 2280
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2283
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mFaceDetectionStarted:Z

    .line 2285
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 1136
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since it\'s not mPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1160
    :goto_0
    return-void

    .line 1139
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1140
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since mCameraDevice is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1146
    sget-object v0, Lcom/android/camera/SlowmotionModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1150
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;->HFR_OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setHFR(Lcom/android/ex/camera2/portability/CameraCapabilities$HFR;)V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-ne v0, v1, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1154
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/SlowmotionModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1156
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1159
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mPreviewing:Z

    goto :goto_0
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 1009
    iget-boolean v0, p0, Lcom/android/camera/SlowmotionModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget v0, p0, Lcom/android/camera/SlowmotionModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1013
    invoke-direct {p0}, Lcom/android/camera/SlowmotionModule;->setDisplayOrientation()V

    goto :goto_0
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/camera/SlowmotionModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1020
    return-void
.end method
