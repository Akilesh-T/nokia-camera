.class public Lcom/android/camera/TimelapsedModule;
.super Lcom/android/camera/CameraModule;
.source "TimelapsedModule.java"

# interfaces
.implements Lcom/android/camera/FocusOverlayManager$Listener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/android/camera/app/MemoryManager$MemoryListener;
.implements Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
.implements Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;
.implements Lcom/android/camera/TimelapsedController;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TimelapsedModule$JpegPictureCallback;,
        Lcom/android/camera/TimelapsedModule$MyBroadcastReceiver;,
        Lcom/android/camera/TimelapsedModule$MainHandler;
    }
.end annotation


# static fields
.field private static final EXTRA_QUICK_CAPTURE:Ljava/lang/String; = "android.intent.extra.quickCapture"

.field private static final MSG_CHECK_DISPLAY_ROTATION:I = 0x4

.field private static final MSG_ENABLE_SHUTTER_BUTTON:I = 0x6

.field private static final MSG_SWITCH_CAMERA:I = 0x8

.field private static final MSG_SWITCH_CAMERA_START_ANIMATION:I = 0x9

.field private static final MSG_UPDATE_RECORD_TIME:I = 0x5

.field private static final SHUTTER_BUTTON_TIMEOUT:J = 0x1f4L

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

.field private mTimelapsedFps:I

.field private mUI:Lcom/android/camera/TimelapsedUI;

.field private mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mVideoFilename:Ljava/lang/String;

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TimelapsedModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 3
    .param p1, "app"    # Lcom/android/camera/app/AppController;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 370
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 135
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    .line 153
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    .line 156
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mRecordingTimeCountsDown:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    .line 186
    new-instance v0, Lcom/android/camera/TimelapsedModule$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/camera/TimelapsedModule$MainHandler;-><init>(Lcom/android/camera/TimelapsedModule;Lcom/android/camera/TimelapsedModule$1;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    .line 190
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mFaceDetectionStarted:Z

    .line 192
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/camera/TimelapsedModule;->mTimelapsedFps:I

    .line 197
    new-instance v0, Lcom/android/camera/TimelapsedModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$1;-><init>(Lcom/android/camera/TimelapsedModule;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 219
    new-instance v0, Lcom/android/camera/TimelapsedModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$2;-><init>(Lcom/android/camera/TimelapsedModule;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    .line 243
    new-instance v0, Lcom/android/camera/TimelapsedModule$3;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$3;-><init>(Lcom/android/camera/TimelapsedModule;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    .line 254
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->HAS_AUTO_FOCUS_MOVE_CALLBACK:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/camera/TimelapsedModule$4;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$4;-><init>(Lcom/android/camera/TimelapsedModule;)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    .line 346
    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mCompassTagEnabled:Z

    .line 546
    new-instance v0, Lcom/android/camera/TimelapsedModule$5;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$5;-><init>(Lcom/android/camera/TimelapsedModule;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 563
    new-instance v0, Lcom/android/camera/TimelapsedModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapsedModule$6;-><init>(Lcom/android/camera/TimelapsedModule;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 371
    return-void

    :cond_0
    move-object v0, v1

    .line 254
    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/camera/TimelapsedModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mSwitchingCamera:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/camera/TimelapsedModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedModule;->mSwitchingCamera:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/camera/TimelapsedModule;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->startPreview()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/TimelapsedModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/TimelapsedModule;->mOnResumeTime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/camera/TimelapsedModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->switchCamera()V

    return-void
.end method

.method static synthetic access$1500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/TimelapsedModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->stopVideoRecording()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/TimelapsedModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/android/camera/TimelapsedModule;->enableTorchMode(Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/camera/TimelapsedModule;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/android/camera/TimelapsedModule;->mPendingSwitchCameraId:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/TimelapsedModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUriFromMediaSaved:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateParametersShutterSound()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->pauseAudioPlayback()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/camera/TimelapsedModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedModule;->mCameraFrontFacingForLastRecord:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/TimelapsedModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/TimelapsedModule;)Landroid/media/MediaRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->releaseMediaRecorder()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->silenceSoundsAndVibrations()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/TimelapsedModule;Lcom/android/ex/camera2/portability/CameraSettings;)Lcom/android/ex/camera2/portability/CameraSettings;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Lcom/android/ex/camera2/portability/CameraSettings;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/TimelapsedModule;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-wide v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecordingTimestamp:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/android/camera/TimelapsedModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecordingTimestamp:J

    return-wide p1
.end method

.method static synthetic access$3202(Lcom/android/camera/TimelapsedModule;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # J

    .prologue
    .line 95
    iput-wide p1, p0, Lcom/android/camera/TimelapsedModule;->mRecordingStartTime:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/android/camera/TimelapsedModule;)Lcom/android/ex/camera2/portability/CameraCapabilities;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/TimelapsedUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/TimelapsedModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/TimelapsedModule;[BLandroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/camera/TimelapsedModule;->storeImage([BLandroid/location/Location;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/TimelapsedModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/FocusOverlayManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/TimelapsedModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/TimelapsedModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/TimelapsedModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget v0, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/TimelapsedModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/TimelapsedModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapsedModule;
    .param p1, "x1"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    return p1
.end method

.method private cleanupEmptyFile()V
    .locals 6

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1128
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1130
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty video file deleted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1131
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    .line 1134
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1043
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1045
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "already stopped."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopFaceDetection()V

    .line 1049
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCameraId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->releaseCamera(I)V

    .line 1051
    iput-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 1052
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    .line 1053
    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    .line 1054
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onCameraReleased()V

    goto :goto_0
.end method

.method private closeVideoFileDescriptor()V
    .locals 3

    .prologue
    .line 2084
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    .line 2086
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 2092
    :cond_0
    return-void

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Fail to close fd"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .locals 1
    .param p1, "outputFileFormat"    # I

    .prologue
    .line 2077
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2078
    const-string v0, ".mp4"

    .line 2080
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
    .line 2070
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2071
    const-string v0, "video/mp4"

    .line 2073
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
    .line 380
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 381
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080448

    .line 382
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 384
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private currentZoomValue()F
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentZoomRatio()F

    move-result v0

    return v0
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1303
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1304
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1306
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1308
    :cond_0
    return-void
.end method

.method private doReturnToCaller(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 1113
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1115
    .local v1, "resultIntent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1116
    const/4 v0, -0x1

    .line 1117
    .local v0, "resultCode":I
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1118
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1122
    :goto_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/camera/CameraActivity;->setResultEx(ILandroid/content/Intent;)V

    .line 1123
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->finish()V

    .line 1124
    return-void

    .line 1120
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
    .line 1975
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v3

    if-nez v3, :cond_0

    .line 2006
    :goto_0
    return-void

    .line 1979
    :cond_0
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1981
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v2

    .line 1983
    .local v2, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    if-eqz p1, :cond_3

    .line 1984
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1985
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->flashModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    .line 1990
    .local v0, "flashMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;
    :goto_1
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1991
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 2002
    :cond_1
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_2

    .line 2003
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2005
    :cond_2
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3, v4}, Lcom/android/camera/TimelapsedUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0

    .line 1988
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
    .line 1244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1245
    .local v0, "dateTaken":J
    invoke-direct {p0, v0, v1}, Lcom/android/camera/TimelapsedModule;->createName(J)Ljava/lang/String;

    move-result-object v6

    .line 1247
    .local v6, "title":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p1}, Lcom/android/camera/TimelapsedModule;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1248
    .local v2, "filename":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/camera/TimelapsedModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 1249
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

    .line 1250
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

    .line 1251
    .local v7, "tmpPath":Ljava/lang/String;
    new-instance v8, Landroid/content/ContentValues;

    const/16 v9, 0x9

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1252
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "title"

    invoke-virtual {v8, v9, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_display_name"

    invoke-virtual {v8, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "date_modified"

    const-wide/16 v10, 0x3e8

    div-long v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1256
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "mime_type"

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "width"

    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "height"

    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1260
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "resolution"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1261
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1262
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1260
    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v8}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    .line 1264
    .local v3, "loc":Landroid/location/Location;
    if-eqz v3, :cond_0

    .line 1265
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "latitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1266
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v9, "longitude"

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1268
    :cond_0
    iput-object v7, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    .line 1269
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New video filename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method private static getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 12
    .param p0, "capabilities"    # Lcom/android/ex/camera2/portability/CameraCapabilities;
    .param p1, "profile"    # Landroid/media/CamcorderProfile;
    .param p2, "previewScreenSize"    # Landroid/graphics/Point;

    .prologue
    .line 819
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v8

    if-nez v8, :cond_0

    .line 821
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 857
    :goto_0
    return-object v8

    .line 824
    :cond_0
    iget v8, p2, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ge v8, v9, :cond_3

    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 826
    .local v4, "previewScreenShortSide":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 827
    .local v7, "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    new-instance v2, Lcom/android/camera/util/Size;

    invoke-virtual {p0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getPreferredPreviewSizeForVideo()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 828
    .local v2, "preferred":Lcom/android/camera/util/Size;
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    if-ge v8, v9, :cond_4

    .line 829
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v3

    .line 830
    .local v3, "preferredPreviewSizeShortSide":I
    :goto_2
    mul-int/lit8 v8, v3, 0x2

    if-ge v8, v4, :cond_1

    .line 831
    new-instance v2, Lcom/android/camera/util/Size;

    .end local v2    # "preferred":Lcom/android/camera/util/Size;
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v8, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 833
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int v5, v8, v9

    .line 834
    .local v5, "product":I
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 836
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/camera/util/Size;>;"
    :cond_2
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 837
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/util/Size;

    .line 838
    .local v6, "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    mul-int/2addr v8, v9

    if-le v8, v5, :cond_2

    .line 839
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 824
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

    .line 829
    .restart local v2    # "preferred":Lcom/android/camera/util/Size;
    .restart local v4    # "previewScreenShortSide":I
    .restart local v7    # "sizes":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/util/Size;->height()I

    move-result v3

    goto :goto_2

    .line 846
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

    .line 847
    .restart local v6    # "size":Lcom/android/camera/util/Size;
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v9, v10, :cond_6

    .line 848
    invoke-virtual {v6}, Lcom/android/camera/util/Size;->height()I

    move-result v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-ne v9, v10, :cond_6

    .line 849
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 851
    new-instance v8, Landroid/graphics/Point;

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0

    .line 855
    .end local v6    # "size":Lcom/android/camera/util/Size;
    :cond_7
    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v8, v8

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalPreviewSize(Ljava/util/List;D)Lcom/android/camera/util/Size;

    move-result-object v1

    .line 857
    .local v1, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->width()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->height()I

    move-result v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto/16 :goto_0
.end method

.method private getTimeLapseVideoLength(J)J
    .locals 5
    .param p1, "delta"    # J

    .prologue
    .line 1659
    iget v0, p0, Lcom/android/camera/TimelapsedModule;->mTimelapsedFps:I

    int-to-long v0, v0

    mul-long/2addr v0, p1

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private getVideoThumbnail()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v2, :cond_2

    .line 1474
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1487
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1490
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraFrontFacingForLastRecord:Z

    invoke-static {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1492
    :cond_1
    return-object v0

    .line 1476
    :cond_2
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 1478
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1479
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 1480
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    .line 1479
    invoke-static {v2, v3}, Lcom/android/camera/Thumbnail;->createVideoThumbnailBitmap(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1481
    :catch_0
    move-exception v1

    .line 1483
    .local v1, "ex":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initializeControlByIntent()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method private initializeFocusManager()V
    .locals 12

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 538
    return-void

    .line 521
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMirror:Z

    .line 522
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0081

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 524
    .local v8, "defaultFocusModesStrings":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getStringifier()Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;

    move-result-object v11

    .line 525
    .local v11, "stringifier":Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 527
    .local v2, "defaultFocusModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    array-length v1, v8

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    aget-object v10, v8, v0

    .line 528
    .local v10, "modeString":Ljava/lang/String;
    invoke-virtual {v11, v10}, Lcom/android/ex/camera2/portability/CameraCapabilities$Stringifier;->focusModeFromString(Ljava/lang/String;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v9

    .line 529
    .local v9, "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    if-eqz v9, :cond_1

    .line 530
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    .end local v9    # "mode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    .end local v10    # "modeString":Ljava/lang/String;
    :cond_2
    new-instance v0, Lcom/android/camera/FocusOverlayManager;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-boolean v5, p0, Lcom/android/camera/TimelapsedModule;->mMirror:Z

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 535
    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v4}, Lcom/android/camera/TimelapsedUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v7

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/FocusOverlayManager;-><init>(Lcom/android/camera/app/AppController;Ljava/util/List;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/FocusOverlayManager$Listener;ZLandroid/os/Looper;Lcom/android/camera/ui/focus/FocusRing;)V

    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 18

    .prologue
    .line 1138
    sget-object v13, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "initializeRecorder: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v13, :cond_0

    .line 1141
    sget-object v13, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v16, "null camera proxy, not recording"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1218
    :goto_0
    return-void

    .line 1144
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1145
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 1147
    .local v8, "myExtras":Landroid/os/Bundle;
    const-wide/16 v10, 0x0

    .line 1148
    .local v10, "requestedSizeLimit":J
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/TimelapsedModule;->closeVideoFileDescriptor()V

    .line 1149
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUriFromMediaSaved:Z

    .line 1151
    new-instance v13, Landroid/media/MediaRecorder;

    invoke-direct {v13}, Landroid/media/MediaRecorder;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->unlock()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCamera()Landroid/hardware/Camera;

    move-result-object v2

    .line 1161
    .local v2, "camera":Landroid/hardware/Camera;
    if-nez v2, :cond_1

    .line 1162
    sget-object v13, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v16, "null camera within proxy, not recording"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1166
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v2}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 1167
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 1169
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/TimelapsedModule;->mTimelapsedFps:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v0, v1}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1172
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/TimelapsedModule;->setRecordLocation()V

    .line 1177
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v13, :cond_3

    .line 1178
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 1185
    :goto_1
    const-wide/32 v14, 0x2aea540

    .line 1186
    .local v14, "threshold":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v16

    sub-long v6, v16, v14

    .line 1187
    .local v6, "maxFileSize":J
    const-wide/16 v16, 0x0

    cmp-long v13, v10, v16

    if-lez v13, :cond_2

    cmp-long v13, v10, v6

    if-gez v13, :cond_2

    .line 1188
    move-wide v6, v10

    .line 1192
    :cond_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v6, v7}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1200
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1201
    invoke-virtual {v13}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v13, v0}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v12

    .line 1202
    .local v12, "sensorOrientation":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1203
    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    .line 1205
    .local v3, "deviceOrientation":I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v13

    .line 1204
    invoke-static {v12, v3, v13}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v9

    .line 1206
    .local v9, "rotation":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13, v9}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 1209
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v13}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1216
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto/16 :goto_0

    .line 1180
    .end local v3    # "deviceOrientation":I
    .end local v6    # "maxFileSize":J
    .end local v9    # "rotation":I
    .end local v12    # "sensorOrientation":I
    .end local v14    # "threshold":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->fileFormat:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/camera/TimelapsedModule;->generateVideoFilename(I)V

    .line 1181
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1210
    .restart local v3    # "deviceOrientation":I
    .restart local v6    # "maxFileSize":J
    .restart local v9    # "rotation":I
    .restart local v12    # "sensorOrientation":I
    .restart local v14    # "threshold":J
    :catch_0
    move-exception v4

    .line 1211
    .local v4, "e":Ljava/io/IOException;
    sget-object v13, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "prepare failed for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0, v4}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1212
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/TimelapsedModule;->releaseMediaRecorder()V

    .line 1213
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 1193
    .end local v3    # "deviceOrientation":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "rotation":I
    .end local v12    # "sensorOrientation":I
    :catch_1
    move-exception v13

    goto/16 :goto_2
.end method

.method private initializeVideoSnapshot()V
    .locals 1

    .prologue
    .line 1948
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v0, :cond_0

    .line 1951
    :cond_0
    return-void
.end method

.method private installIntentFilter()V
    .locals 3

    .prologue
    .line 866
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 869
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 870
    new-instance v1, Lcom/android/camera/TimelapsedModule$MyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/TimelapsedModule$MyBroadcastReceiver;-><init>(Lcom/android/camera/TimelapsedModule;Lcom/android/camera/TimelapsedModule$1;)V

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 871
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/camera/CameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 872
    return-void
.end method

.method private isCameraBackFacing()Z
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 508
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingBack()Z

    move-result v0

    .line 507
    return v0
.end method

.method private isCameraFrontFacing()Z
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-interface {v0, v1}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 500
    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v0

    .line 499
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

    .line 1663
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
    .line 1273
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1274
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1276
    .local v10, "flashSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v11

    .line 1277
    .local v11, "gridLinesOn":Z
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "width"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1278
    .local v6, "width":I
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "height"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1279
    .local v7, "height":I
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 1280
    .local v8, "size":J
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_data"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1281
    .local v1, "name":Ljava/lang/String;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v4

    .line 1282
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->currentZoomValue()F

    move-result v5

    move-wide v2, p1

    .line 1281
    invoke-virtual/range {v0 .. v11}, Lcom/android/camera/stats/UsageStatistics;->videoCaptureDoneEvent(Ljava/lang/String;JZFIIJLjava/lang/String;Z)V

    .line 1283
    return-void
.end method

.method private static millisecondToTimeString(JZ)Ljava/lang/String;
    .locals 18
    .param p0, "milliSeconds"    # J
    .param p2, "displayCentiSeconds"    # Z

    .prologue
    .line 1594
    const-wide/16 v14, 0x3e8

    div-long v10, p0, v14

    .line 1595
    .local v10, "seconds":J
    const-wide/16 v14, 0x3c

    div-long v2, v10, v14

    .line 1596
    .local v2, "minutes":J
    const-wide/16 v14, 0x3c

    div-long v0, v2, v14

    .line 1597
    .local v0, "hours":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v0

    sub-long v6, v2, v14

    .line 1598
    .local v6, "remainderMinutes":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v14, v2

    sub-long v8, v10, v14

    .line 1600
    .local v8, "remainderSeconds":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1603
    .local v12, "timeStringBuilder":Ljava/lang/StringBuilder;
    const-wide/16 v14, 0x0

    cmp-long v13, v0, v14

    if-lez v13, :cond_1

    .line 1604
    const-wide/16 v14, 0xa

    cmp-long v13, v0, v14

    if-gez v13, :cond_0

    .line 1605
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1607
    :cond_0
    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1609
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1613
    :cond_1
    const-wide/16 v14, 0xa

    cmp-long v13, v6, v14

    if-gez v13, :cond_2

    .line 1614
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1616
    :cond_2
    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1617
    const/16 v13, 0x3a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1620
    const-wide/16 v14, 0xa

    cmp-long v13, v8, v14

    if-gez v13, :cond_3

    .line 1621
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1623
    :cond_3
    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1626
    if-eqz p2, :cond_5

    .line 1627
    const/16 v13, 0x2e

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1628
    const-wide/16 v14, 0x3e8

    mul-long/2addr v14, v10

    sub-long v14, p0, v14

    const-wide/16 v16, 0xa

    div-long v4, v14, v16

    .line 1629
    .local v4, "remainderCentiSeconds":J
    const-wide/16 v14, 0xa

    cmp-long v13, v4, v14

    if-gez v13, :cond_4

    .line 1630
    const/16 v13, 0x30

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1632
    :cond_4
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1635
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

    .line 982
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 983
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 984
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 985
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 986
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStarted()V

    .line 989
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->startFaceDetection()V

    .line 990
    return-void
.end method

.method private onStopVideoRecording()V
    .locals 3

    .prologue
    .line 691
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 692
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->stopVideoRecording()Z

    move-result v0

    .line 693
    .local v0, "recordFail":Z
    if-nez v0, :cond_1

    .line 695
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->showThumbnailIfAvailable()V

    goto :goto_0
.end method

.method private pauseAudioPlayback()V
    .locals 5

    .prologue
    .line 2192
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_0

    .line 2200
    :goto_0
    return-void

    .line 2193
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.music.musicservicecommand"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2194
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2196
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2197
    :catch_0
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 4

    .prologue
    .line 769
    const-string v1, "large"

    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-static {v1, v2}, Lcom/android/camera/settings/SettingsUtil;->getVideoQuality(Ljava/lang/String;I)I

    move-result v1

    add-int/lit16 v0, v1, 0x3e8

    .line 770
    .local v0, "quality":I
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected video quality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 773
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 774
    const/4 v0, 0x1

    .line 776
    :cond_0
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    .line 777
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPreferenceRead:Z

    .line 778
    return-void
.end method

.method private releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1233
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1234
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1235
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->cleanupEmptyFile()V

    .line 1236
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1237
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1238
    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1240
    :cond_0
    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    .line 1241
    return-void
.end method

.method private requestCamera(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/app/CameraProvider;->requestCamera(I)V

    .line 2106
    return-void
.end method

.method private resizeForPreviewAspectRatio()V
    .locals 3

    .prologue
    .line 861
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/camera/TimelapsedUI;->setAspectRatio(F)V

    .line 862
    return-void
.end method

.method private restoreRingerMode()V
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 1359
    :cond_0
    return-void
.end method

.method private saveVideo()V
    .locals 6

    .prologue
    .line 1286
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v2, :cond_0

    .line 1287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/TimelapsedModule;->mRecordingStartTime:J

    sub-long v0, v2, v4

    .line 1288
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1289
    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mTimelapsedFps:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameRate:I

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 1293
    :goto_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "_size"

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1294
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v3, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1295
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mOnVideoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    invoke-interface {v2, v3, v4, v5}, Lcom/android/camera/app/MediaSaver;->addVideo(Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 1297
    invoke-direct {p0, v0, v1}, Lcom/android/camera/TimelapsedModule;->logVideoCapture(J)V

    .line 1299
    .end local v0    # "duration":J
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1300
    return-void

    .line 1291
    .restart local v0    # "duration":J
    :cond_1
    sget-object v2, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1668
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v6

    .line 1671
    .local v6, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateDesiredPreviewSize()V

    .line 1673
    new-instance v5, Lcom/android/camera/util/Size;

    iget v10, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    iget v11, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewHeight:I

    invoke-direct {v5, v10, v11}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1674
    .local v5, "previewSize":Lcom/android/camera/util/Size;
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1677
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const-string v11, "video-size"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "x"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v13, v13, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1681
    invoke-virtual {v10}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/util/CameraUtil;->getMaxPreviewFpsRange(Ljava/util/List;)[I

    move-result-object v1

    .line 1682
    .local v1, "fpsRange":[I
    array-length v10, v1

    if-lez v10, :cond_5

    .line 1683
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    aget v11, v1, v9

    aget v12, v1, v8

    invoke-virtual {v10, v11, v12}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFpsRange(II)V

    .line 1688
    :goto_0
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/android/camera/settings/Keys;->isCameraBackFacing(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/camera/TimelapsedModule;->enableTorchMode(Z)V

    .line 1691
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v11, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->ZOOM:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1692
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v11, p0, Lcom/android/camera/TimelapsedModule;->mZoomValue:F

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 1694
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateFocusParameters()V

    .line 1696
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v10, v8}, Lcom/android/ex/camera2/portability/CameraSettings;->setRecordingHintEnabled(Z)V

    .line 1698
    const/4 v0, 0x0

    .line 1699
    .local v0, "allowVideoStabilization":Z
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v10, :cond_1

    .line 1700
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->quality:I

    const/16 v11, 0x8

    if-eq v10, v11, :cond_6

    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->quality:I

    const/16 v11, 0x3f0

    if-eq v10, v11, :cond_6

    move v0, v8

    .line 1702
    :goto_1
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1705
    :cond_1
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_DIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1706
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1707
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableDIS(Z)V

    .line 1720
    :cond_2
    :goto_2
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedPhotoSizes()Ljava/util/List;

    move-result-object v8

    invoke-static {v8}, Lcom/android/camera/util/Size;->convert(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1721
    .local v7, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    iget v8, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    iget v9, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewHeight:I

    invoke-static {v7, v8, v9}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v3

    .line 1723
    .local v3, "optimalSize":Lcom/android/camera/util/Size;
    new-instance v4, Lcom/android/camera/util/Size;

    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentPhotoSize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/android/camera/util/Size;-><init>(Lcom/android/ex/camera2/portability/Size;)V

    .line 1724
    .local v4, "original":Lcom/android/camera/util/Size;
    invoke-virtual {v4, v3}, Lcom/android/camera/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 1725
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v3}, Lcom/android/camera/util/Size;->toPortabilitySize()Lcom/android/ex/camera2/portability/Size;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoSize(Lcom/android/ex/camera2/portability/Size;)Z

    .line 1727
    :cond_3
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1730
    iget v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v2

    .line 1732
    .local v2, "jpegQuality":I
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setPhotoJpegCompressionQuality(I)V

    .line 1734
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateParametersTouchAfAec()V

    .line 1736
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v8, :cond_4

    .line 1737
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1740
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1744
    :cond_4
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v9}, Lcom/android/camera/TimelapsedUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    .line 1745
    return-void

    .line 1685
    .end local v0    # "allowVideoStabilization":Z
    .end local v2    # "jpegQuality":I
    .end local v3    # "optimalSize":Lcom/android/camera/util/Size;
    .end local v4    # "original":Lcom/android/camera/util/Size;
    .end local v7    # "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/util/Size;>;"
    :cond_5
    iget-object v10, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v11, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Lcom/android/ex/camera2/portability/CameraSettings;->setPreviewFrameRate(I)V

    goto/16 :goto_0

    .restart local v0    # "allowVideoStabilization":Z
    :cond_6
    move v0, v9

    .line 1700
    goto/16 :goto_1

    .line 1708
    :cond_7
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_EIS_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1709
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1710
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setEnableEIS(Z)V

    goto/16 :goto_2

    .line 1711
    :cond_8
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v9, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_STABILIZATION:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v8, v9}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1712
    sget-object v8, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1713
    iget-object v8, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v8, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setVideoStabilization(Z)V

    goto/16 :goto_2
.end method

.method private static setCaptureRate(Landroid/media/MediaRecorder;D)V
    .locals 1
    .param p0, "recorder"    # Landroid/media/MediaRecorder;
    .param p1, "fps"    # D

    .prologue
    .line 1221
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    .line 1222
    return-void
.end method

.method private setDisplayOrientation()V
    .locals 3

    .prologue
    .line 875
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    .line 876
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 877
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-interface {v1, v2}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v0

    .line 878
    .local v0, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getPreviewOrientation(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDisplayOrientation:I

    .line 880
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 881
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 883
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setDisplayOrientation(I)V

    .line 886
    :cond_1
    return-void
.end method

.method private setRecordLocation()V
    .locals 6

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v1}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v0

    .line 1226
    .local v0, "loc":Landroid/location/Location;
    if-eqz v0, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1228
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    double-to-float v3, v4

    .line 1227
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaRecorder;->setLocation(FF)V

    .line 1230
    :cond_0
    return-void
.end method

.method private showCaptureResult()V
    .locals 3

    .prologue
    .line 1496
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mIsInReviewMode:Z

    .line 1497
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->getVideoThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1498
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1499
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "get null video thumbnail"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1501
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1}, Lcom/android/camera/TimelapsedUI;->showReviewControls()V

    .line 1502
    return-void
.end method

.method private silenceSoundsAndVibrations()V
    .locals 4

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1349
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/TimelapsedModule;->mOriginalRingerMode:I

    .line 1351
    return-void
.end method

.method private startPlayVideoActivity()V
    .locals 5

    .prologue
    .line 680
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 682
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v3}, Lcom/android/camera/TimelapsedModule;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 684
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2, v1}, Lcom/android/camera/CameraActivity;->launchActivityByIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    sget-object v2, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t view video "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoUri:Landroid/net/Uri;

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

    .line 926
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "startPreview"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 929
    .local v2, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPreferenceRead:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v3, :cond_1

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    if-ne v3, v5, :cond_2

    .line 935
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopPreview()V

    .line 938
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->setDisplayOrientation()V

    .line 939
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v4, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    invoke-virtual {v3, v4}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setDisplayOrientation(I)V

    .line 940
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->setCameraParameters()V

    .line 942
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v3, :cond_3

    .line 945
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 946
    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v1

    .line 947
    .local v1, "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v1, v3, :cond_3

    .line 948
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 957
    .end local v1    # "focusMode":Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;
    :cond_3
    invoke-static {}, Lcom/android/camera/util/ApiHelper;->isLOrHigher()Z

    move-result v3

    if-nez v3, :cond_4

    .line 958
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "calling onPreviewReadyToStart to set one shot callback"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 959
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->onPreviewReadyToStart()V

    .line 964
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 965
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lcom/android/camera/TimelapsedModule$7;

    invoke-direct {v5, p0}, Lcom/android/camera/TimelapsedModule$7;-><init>(Lcom/android/camera/TimelapsedModule;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startPreviewWithCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraStartPreviewCallback;)V

    .line 974
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 975
    :catch_0
    move-exception v0

    .line 976
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->closeCamera()V

    .line 977
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "startPreview failed"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 961
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_4
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "on L, no one shot callback necessary"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private startVideoRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1367
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1368
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapsedUI;->cancelAnimations()V

    .line 1369
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/TimelapsedUI;->setSwipingEnabled(Z)V

    .line 1370
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapsedUI;->hidePassiveFocusIndicator()V

    .line 1371
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 1372
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1373
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1375
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    new-instance v1, Lcom/android/camera/TimelapsedModule$8;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapsedModule$8;-><init>(Lcom/android/camera/TimelapsedModule;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1469
    return-void
.end method

.method private stopVideoRecording()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1505
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stopVideoRecording"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1509
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->restoreRingerMode()V

    .line 1511
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v3, v7}, Lcom/android/camera/TimelapsedUI;->setSwipingEnabled(Z)V

    .line 1512
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v3}, Lcom/android/camera/TimelapsedUI;->showPassiveFocusIndicator()V

    .line 1513
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/camera/app/CameraAppUI;->setShouldSuppressCaptureIndicator(Z)V

    .line 1514
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->hideVideoSnapShotButton()V

    .line 1515
    const/4 v1, 0x0

    .line 1516
    .local v1, "fail":Z
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v3, :cond_2

    .line 1517
    const/4 v2, 0x0

    .line 1520
    .local v2, "shouldAddToMediaStoreNow":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1521
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1522
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 1523
    const/4 v2, 0x1

    .line 1524
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1525
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopVideoRecording: current video filename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_0
    iput-boolean v6, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    .line 1534
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecordingTimestamp:J

    .line 1535
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    if-eqz v3, :cond_0

    .line 1536
    iput-boolean v6, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    .line 1537
    invoke-virtual {p0, v6}, Lcom/android/camera/TimelapsedModule;->showVideoSnapshotUI(Z)V

    .line 1539
    :cond_0
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->unlockOrientation()V

    .line 1540
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->applyStateWhenRecordingStateChange()V

    .line 1545
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1548
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopPreview()V

    .line 1549
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->closeCamera()V

    .line 1552
    :cond_1
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v3, v6}, Lcom/android/camera/TimelapsedUI;->showRecordingUI(Z)V

    .line 1555
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v3, v6, v7}, Lcom/android/camera/TimelapsedUI;->setOrientationIndicator(IZ)V

    .line 1556
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v6}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1557
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 1558
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mVideoFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-nez v3, :cond_2

    .line 1559
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->saveVideo()V

    .line 1564
    .end local v2    # "shouldAddToMediaStoreNow":Z
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->releaseMediaRecorder()V

    .line 1566
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1567
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonEnabled(Z)V

    .line 1568
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3, v7}, Lcom/android/camera/app/AppController;->setThumbnailClickable(Z)V

    .line 1570
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/TimelapsedModule;->mShutterIconId:I

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->stopVideoRecordBtn(I)V

    .line 1571
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_4

    .line 1572
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->setFocusParameters()V

    .line 1573
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->lock()V

    .line 1574
    sget-boolean v3, Lcom/android/camera/util/ApiHelper;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v3, :cond_3

    .line 1575
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopPreview()V

    .line 1577
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->startPreview()V

    .line 1581
    :cond_3
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1588
    :cond_4
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3, v8}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1590
    return v1

    .line 1526
    .restart local v2    # "shouldAddToMediaStoreNow":Z
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "stop fail"

    invoke-static {v3, v4, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1528
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 1529
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/camera/TimelapsedModule;->deleteVideoFile(Ljava/lang/String;)V

    .line 1531
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method private storeImage([BLandroid/location/Location;)V
    .locals 22
    .param p1, "data"    # [B
    .param p2, "loc"    # Landroid/location/Location;

    .prologue
    .line 2037
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2038
    .local v8, "dateTaken":J
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v7

    .line 2039
    .local v7, "title":Ljava/lang/String;
    sget-object v5, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2040
    invoke-static/range {p1 .. p1}, Lcom/android/camera/Exif;->getExif([B)Lcom/android/camera/exif/ExifInterface;

    move-result-object v12

    .line 2041
    .local v12, "exif":Lcom/android/camera/exif/ExifInterface;
    invoke-static {v12}, Lcom/android/camera/Exif;->getOrientation(Lcom/android/camera/exif/ExifInterface;)I

    move-result v11

    .line 2042
    .local v11, "orientation":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapsedModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v17

    .line 2043
    .local v17, "heading":I
    const/4 v5, -0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/camera/TimelapsedModule;->mCompassTagEnabled:Z

    if-eqz v5, :cond_0

    .line 2045
    sget v5, Lcom/android/camera/exif/ExifInterface;->TAG_GPS_IMG_DIRECTION_REF:I

    const-string v6, "M"

    invoke-virtual {v12, v5, v6}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v4

    .line 2048
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

    .line 2051
    .local v14, "directionTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {v12, v4}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2052
    invoke-virtual {v12, v14}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2057
    .end local v4    # "directionRefTag":Lcom/android/camera/exif/ExifTag;
    .end local v14    # "directionTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2058
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v10, "pref_camera_video_flashmode_key"

    invoke-virtual {v5, v6, v10}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2059
    .local v15, "flashSetting":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    .line 2065
    .local v16, "gridLinesOn":Ljava/lang/Boolean;
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/TimelapsedModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/CameraServices;->getMediaSaver()Lcom/android/camera/app/MediaSaver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/TimelapsedModule;->mOnPhotoSavedListener:Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;

    move-object/from16 v6, p1

    move-object/from16 v10, p2

    invoke-interface/range {v5 .. v13}, Lcom/android/camera/app/MediaSaver;->addImage([BLjava/lang/String;JLandroid/location/Location;ILcom/android/camera/exif/ExifInterface;Lcom/android/camera/app/MediaSaver$OnMediaSavedListener;)V

    .line 2067
    return-void
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1913
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1945
    :goto_0
    return-void

    .line 1916
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1918
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Start to switch camera."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1919
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mPendingSwitchCameraId:I

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    .line 1920
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mPendingSwitchCameraId:I

    .line 1921
    const-string v1, "PhotoModule"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1924
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_1

    .line 1925
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1927
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1}, Lcom/android/camera/TimelapsedUI;->resetPreviewOverlay()V

    .line 1928
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 1929
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->closeCamera()V

    .line 1930
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/TimelapsedModule;->requestCamera(I)V

    .line 1932
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mMirror:Z

    .line 1933
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_2

    .line 1934
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mMirror:Z

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->setMirror(Z)V

    .line 1938
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mZoomValue:F

    .line 1939
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/TimelapsedUI;->setOrientationIndicator(IZ)V

    .line 1943
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1944
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v1, v2}, Lcom/android/camera/TimelapsedUI;->updateOnScreenIndicators(Lcom/android/ex/camera2/portability/CameraSettings;)V

    goto :goto_0
.end method

.method private takeASnapshot()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 457
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 458
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Cannot take a video snapshot - not supported by hardware"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 463
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->isShutterEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 468
    .local v6, "loc":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-static {v0, v6}, Lcom/android/camera/util/CameraUtil;->setGpsParameters(Lcom/android/ex/camera2/portability/CameraSettings;Landroid/location/Location;)V

    .line 469
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 471
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateJpegRotation()V

    .line 472
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setJpegOrientation(I)V

    .line 474
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Video snapshot start"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;

    iget-wide v8, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecordingTimestamp:J

    invoke-direct {v5, p0, v6, v8, v9}, Lcom/android/camera/TimelapsedModule$JpegPictureCallback;-><init>(Lcom/android/camera/TimelapsedModule;Landroid/location/Location;J)V

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->takePicture(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraShutterCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;Lcom/android/ex/camera2/portability/CameraAgent$CameraPictureCallback;)V

    .line 477
    invoke-virtual {p0, v7}, Lcom/android/camera/TimelapsedModule;->showVideoSnapshotUI(Z)V

    .line 478
    iput-boolean v7, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    goto :goto_0
.end method

.method private updateAutoFocusMoveCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 483
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    if-ne v0, v1, :cond_2

    .line 488
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAutoFocusMoveCallback:Ljava/lang/Object;

    check-cast v0, Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0, v2, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->setAutoFocusMoveCallback(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFMoveCallback;)V

    goto :goto_0
.end method

.method private updateDesiredPreviewSize()V
    .locals 4

    .prologue
    .line 788
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 800
    :goto_0
    return-void

    .line 792
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 793
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    .line 794
    invoke-virtual {v3}, Lcom/android/camera/TimelapsedUI;->getPreviewScreenSize()Landroid/graphics/Point;

    move-result-object v3

    .line 793
    invoke-static {v1, v2, v3}, Lcom/android/camera/TimelapsedModule;->getDesiredPreviewSize(Lcom/android/ex/camera2/portability/CameraCapabilities;Landroid/media/CamcorderProfile;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    .line 795
    .local v0, "desiredPreviewSize":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    .line 796
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewHeight:I

    .line 797
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget v2, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/TimelapsedUI;->setPreviewSize(II)V

    .line 798
    sget-object v1, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated DesiredPreview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapsedModule;->mDesiredPreviewHeight:I

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
    .line 2230
    sget-object v4, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2232
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mJpegRotation:I

    .line 2233
    .local v1, "lJpegRotation":I
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v5, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->HW_ROTATE:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v4, v5}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    .line 2234
    .local v0, "hw_rotate_support":Z
    sget-object v4, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2236
    if-nez v0, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x1

    .line 2237
    .local v2, "needOverrideRotation":Z
    :goto_0
    sget-object v4, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2239
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/camera/product_utils/ProductUtil;->isSupportedLib2DRotate()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2240
    sget v4, Lcom/android/camera/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {v1}, Lcom/android/camera/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/camera/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/android/camera/exif/ExifTag;

    move-result-object v3

    .line 2241
    .local v3, "rotationTag":Lcom/android/camera/exif/ExifTag;
    invoke-virtual {p2, v3}, Lcom/android/camera/exif/ExifInterface;->setTag(Lcom/android/camera/exif/ExifTag;)Lcom/android/camera/exif/ExifTag;

    .line 2244
    .end local v3    # "rotationTag":Lcom/android/camera/exif/ExifTag;
    :cond_0
    return-void

    .line 2236
    .end local v2    # "needOverrideRotation":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateFocusParameters()V
    .locals 4

    .prologue
    .line 1776
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 1777
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedFocusModes()Ljava/util/Set;

    move-result-object v0

    .line 1788
    .local v0, "supportedFocus":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;>;"
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->overrideFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1789
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;->CONTINUOUS_PICTURE:Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1790
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 1791
    invoke-virtual {v3}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->getFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    .line 1790
    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 1792
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusAreaSupported:Z

    if-eqz v1, :cond_0

    .line 1793
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setFocusAreas(Ljava/util/List;)V

    .line 1796
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mMeteringAreaSupported:Z

    if-eqz v1, :cond_1

    .line 1797
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v2}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraSettings;->setMeteringAreas(Ljava/util/List;)V

    .line 1801
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateParametersExposureCompensation()V

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateAutoFocusMoveCallback()V

    .line 1803
    return-void
.end method

.method private updateJpegRotation()V
    .locals 7

    .prologue
    .line 2213
    iget-boolean v4, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v4, :cond_0

    .line 2226
    :goto_0
    return-void

    .line 2218
    :cond_0
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-interface {v4, v5}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 2219
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->getSensorOrientation()I

    move-result v3

    .line 2220
    .local v3, "sensorOrientation":I
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 2221
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2222
    .local v0, "deviceOrientation":I
    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->isFacingFront()Z

    move-result v2

    .line 2224
    .local v2, "isFrontCamera":Z
    invoke-static {v3, v0, v2}, Lcom/android/camera/util/CameraUtil;->getImageRotation(IIZ)I

    move-result v4

    iput v4, p0, Lcom/android/camera/TimelapsedModule;->mJpegRotation:I

    .line 2225
    sget-object v4, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mJpegRotation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/TimelapsedModule;->mJpegRotation:I

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
    .line 1748
    const/4 v0, 0x0

    .line 1749
    .local v0, "exposure_value":I
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->allowTouchExposure()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1750
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v4}, Lcom/android/camera/FocusOverlayManager;->getExposureValue()I

    move-result v3

    .line 1751
    .local v3, "value":I
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxExposureCompensation()I

    move-result v1

    .line 1752
    .local v1, "max":I
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v4}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMinExposureCompensation()I

    move-result v2

    .line 1753
    .local v2, "min":I
    if-lt v3, v2, :cond_1

    if-gt v3, v1, :cond_1

    .line 1754
    move v0, v3

    .line 1759
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "value":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v4, v0}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 1760
    return-void

    .line 1756
    .restart local v1    # "max":I
    .restart local v2    # "min":I
    .restart local v3    # "value":I
    :cond_1
    sget-object v4, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .locals 6

    .prologue
    .line 996
    iget-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v3, :cond_1

    .line 1008
    :cond_0
    :goto_0
    return-void

    .line 997
    :cond_1
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v3, :cond_0

    .line 998
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v3, :cond_0

    .line 999
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    .line 1000
    .local v2, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    if-eqz v2, :cond_0

    .line 1001
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-interface {v3, v4}, Lcom/android/camera/app/CameraProvider;->getCharacteristics(I)Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;

    move-result-object v1

    .line 1002
    .local v1, "info":Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraDeviceInfo$Characteristics;->canDisableShutterSound()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1003
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_shutter_sound_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1005
    .local v0, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v3, v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->enableShutterSound(Z)V

    goto :goto_0
.end method

.method private updateParametersTouchAfAec()V
    .locals 2

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->TOUCH_AF_AEC:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setTouchAfAecEnabled(Z)V

    .line 1769
    :cond_0
    return-void
.end method

.method private updateRecordingTime()V
    .locals 12

    .prologue
    .line 1639
    iget-boolean v9, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-nez v9, :cond_0

    .line 1656
    :goto_0
    return-void

    .line 1642
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1643
    .local v4, "now":J
    iget-wide v10, p0, Lcom/android/camera/TimelapsedModule;->mRecordingStartTime:J

    sub-long v2, v4, v10

    .line 1649
    .local v2, "delta":J
    invoke-direct {p0, v2, v3}, Lcom/android/camera/TimelapsedModule;->getTimeLapseVideoLength(J)J

    move-result-wide v10

    const/4 v9, 0x0

    invoke-static {v10, v11, v9}, Lcom/android/camera/TimelapsedModule;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1650
    .local v8, "text":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iget v10, p0, Lcom/android/camera/TimelapsedModule;->mTimelapsedFps:I

    div-int/2addr v9, v10

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v6, v9

    .line 1652
    .local v6, "targetNextUpdateDelay":J
    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v9, v8}, Lcom/android/camera/TimelapsedUI;->setRecordingTime(Ljava/lang/String;)V

    .line 1654
    rem-long v10, v2, v6

    sub-long v0, v6, v10

    .line 1655
    .local v0, "actualNextUpdateDelay":J
    iget-object v9, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method


# virtual methods
.method public allowTouchExposure()Z
    .locals 1

    .prologue
    .line 2171
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusAreaSupported:Z

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
    .line 2121
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2122
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAutoFocusCallback:Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->autoFocus(Landroid/os/Handler;Lcom/android/ex/camera2/portability/CameraAgent$CameraAFCallback;)V

    .line 2124
    :cond_0
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2129
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 2130
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->setFocusParameters()V

    .line 2132
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 1

    .prologue
    .line 2136
    const/4 v0, 0x0

    return v0
.end method

.method public couldChangeButtonState()Z
    .locals 1

    .prologue
    .line 2204
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

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
    .line 1900
    return-void
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 605
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 607
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 608
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 609
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 610
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraBackFacing()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 611
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->flashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 612
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 613
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 614
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 615
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 616
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 618
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 621
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 623
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 624
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v1}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getSupportedSurroundSound()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 625
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 626
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 628
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-nez v1, :cond_4

    :goto_3
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 630
    return-object v0

    :cond_0
    move v1, v3

    .line 610
    goto :goto_0

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFlashCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    goto :goto_1

    :cond_2
    move v1, v3

    .line 624
    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move v2, v3

    .line 628
    goto :goto_3
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 5

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/hardware/HardwareSpecImpl;

    .line 597
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 598
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    :goto_0
    iput-object v0, p0, Lcom/android/camera/TimelapsedModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 600
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    return-object v0

    .line 598
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 375
    return-object v0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 591
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 5
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 389
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 392
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 393
    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/util/AndroidServices;->provideAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAudioManager:Landroid/media/AudioManager;

    .line 395
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 397
    new-instance v1, Lcom/android/camera/TimelapsedUI;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/camera/TimelapsedUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/TimelapsedController;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    .line 398
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 400
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 402
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v1, "PhotoModule"

    invoke-static {v1}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    .line 409
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/TimelapsedModule;->requestCamera(I)V

    .line 411
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mContentResolver:Landroid/content/ContentResolver;

    .line 413
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.quickCapture"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mQuickCapture:Z

    .line 414
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mLocationManager:Lcom/android/camera/app/LocationManager;

    .line 416
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1, v4, v4}, Lcom/android/camera/TimelapsedUI;->setOrientationIndicator(IZ)V

    .line 417
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->setDisplayOrientation()V

    .line 419
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mPendingSwitchCameraId:I

    .line 421
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 422
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    .line 421
    invoke-static {v1, v2}, Lcom/android/camera/util/CameraUtil;->getCameraShutterIconId(ILandroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mShutterIconId:I

    .line 423
    new-instance v1, Lcom/android/camera/hardware/HeadingSensor;

    invoke-static {}, Lcom/android/camera/util/AndroidServices;->instance()Lcom/android/camera/util/AndroidServices;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/util/AndroidServices;->provideSensorManager()Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/hardware/HeadingSensor;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 424
    return-void
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1061
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v1, :cond_0

    .line 1068
    :goto_0
    return v0

    .line 1064
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_1

    .line 1065
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onStopVideoRecording()V

    goto :goto_0

    .line 1068
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 7
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 635
    if-nez p1, :cond_0

    .line 636
    sget-object v2, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onCameraAvailable returns a null CameraProxy object"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 677
    :goto_0
    return-void

    .line 640
    :cond_0
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 642
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 643
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_video_flashmode_key"

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080300

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    :cond_1
    iput-object p1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .line 647
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getCapabilities()Lcom/android/ex/camera2/portability/CameraCapabilities;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    .line 650
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->getSettings()Lcom/android/ex/camera2/portability/CameraSettings;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    .line 651
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraSettings;->setExposureCompensationIndex(I)V

    .line 652
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->FOCUS_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusAreaSupported:Z

    .line 653
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v3, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->METERING_AREA:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    .line 654
    invoke-virtual {v2, v3}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/TimelapsedModule;->mMeteringAreaSupported:Z

    .line 655
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->readVideoPreferences()V

    .line 656
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateDesiredPreviewSize()V

    .line 657
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->resizeForPreviewAspectRatio()V

    .line 658
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->initializeFocusManager()V

    .line 662
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3}, Lcom/android/camera/FocusOverlayManager;->updateCapabilities(Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 664
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->startPreview()V

    .line 666
    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->addListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 668
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->initializeVideoSnapshot()V

    .line 669
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    iget-object v3, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/TimelapsedUI;->initializeZoom(Lcom/android/ex/camera2/portability/CameraSettings;Lcom/android/ex/camera2/portability/CameraCapabilities;)V

    .line 670
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->initializeControlByIntent()V

    .line 672
    new-instance v2, Lcom/android/camera/hardware/HardwareSpecImpl;

    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->getCameraProvider()Lcom/android/camera/app/CameraProvider;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 673
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraFeatureConfig()Lcom/android/camera/one/config/OneCameraFeatureConfig;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->isCameraFrontFacing()Z

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/hardware/HardwareSpecImpl;-><init>(Lcom/android/camera/app/CameraProvider;Lcom/android/ex/camera2/portability/CameraCapabilities;Lcom/android/camera/one/config/OneCameraFeatureConfig;Z)V

    iput-object v2, p0, Lcom/android/camera/TimelapsedModule;->mHardwareSpec:Lcom/android/camera/hardware/HardwareSpec;

    .line 675
    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 676
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
    .line 1313
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1314
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1316
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->stopVideoRecording()Z

    .line 1317
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->updateStorageSpaceAndHint(Lcom/android/camera/CameraActivity$OnStorageUpdateDoneListener;)V

    .line 1319
    :cond_0
    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mr"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 1324
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1325
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 1326
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onStopVideoRecording()V

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1328
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 1329
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_2

    .line 1330
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onStopVideoRecording()V

    .line 1334
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v1, 0x7f08028e

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1335
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1075
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v1, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return v0

    .line 1078
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v1, :cond_0

    .line 1080
    sparse-switch p1, :sswitch_data_0

    .line 1095
    const/4 v0, 0x0

    goto :goto_0

    .line 1082
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 1083
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1087
    :cond_2
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_3

    .line 1088
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1093
    :cond_3
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1080
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

    .line 1100
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v1, :cond_0

    .line 1109
    :goto_0
    return v0

    .line 1101
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1109
    const/4 v0, 0x0

    goto :goto_0

    .line 1103
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1107
    :sswitch_1
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    goto :goto_0

    .line 1101
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
    .line 1904
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->setDisplayOrientation()V

    .line 1905
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 2116
    return-void
.end method

.method public onMemoryStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 2111
    return-void

    .line 2110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V
    .locals 1
    .param p1, "orientationManager"    # Lcom/android/camera/app/OrientationManager;
    .param p2, "deviceOrientation"    # Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/TimelapsedUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 544
    return-void
.end method

.method public onPhoneStateChange(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 2182
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2189
    return-void
.end method

.method public onPowerStateChange(Z)V
    .locals 1
    .param p1, "isLowPower"    # Z

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_0

    .line 2178
    :goto_0
    return-void

    .line 2177
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/TimelapsedModule;->enableTorchMode(Z)V

    goto :goto_0
.end method

.method public onPreviewInitialDataReceived()V
    .locals 0

    .prologue
    .line 1012
    return-void
.end method

.method public onPreviewUIDestroyed()V
    .locals 0

    .prologue
    .line 2101
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopPreview()V

    .line 2102
    return-void
.end method

.method public onPreviewUIReady()V
    .locals 0

    .prologue
    .line 2096
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->startPreview()V

    .line 2097
    return-void
.end method

.method public onPreviewVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 2010
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    if-eqz v0, :cond_0

    .line 2011
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/camera/TimelapsedModule;->enableTorchMode(Z)V

    .line 2013
    :cond_0
    return-void

    .line 2011
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProtectiveCurtainClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 710
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 276
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 278
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v5}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 279
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 280
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 281
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_2

    :cond_0
    move v2, v4

    .line 282
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 283
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 284
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 285
    iget-object v4, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraActivity;->onModeSelected(I)V

    .line 289
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 281
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onSharedPreferenceChanged()V
    .locals 0

    .prologue
    .line 1910
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 714
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mSwitchingCamera:Z

    if-eqz v1, :cond_0

    .line 748
    :goto_0
    return-void

    .line 728
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    .line 730
    .local v0, "stop":Z
    if-eqz v0, :cond_2

    .line 733
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 734
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onStopVideoRecording()V

    .line 741
    :goto_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 742
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v1, :cond_1

    .line 743
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v2}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFocusMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/camera/FocusOverlayManager;->onShutterUp(Lcom/android/ex/camera2/portability/CameraCapabilities$FocusMode;)V

    .line 746
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 738
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->disableModeOptions()V

    .line 739
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->startVideoRecording()V

    goto :goto_1
.end method

.method public onShutterButtonFocus(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 763
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 0
    .param p1, "swiped"    # I

    .prologue
    .line 753
    return-void
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 758
    return-void
.end method

.method public onSingleTapUp(Landroid/view/View;II)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusAreaSupported:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMeteringAreaSupported:Z

    if-eqz v0, :cond_0

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/camera/FocusOverlayManager;->onSingleTapUp(II)V

    goto :goto_0
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 1

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    .line 266
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mSnapshotInProgress:Z

    if-nez v0, :cond_0

    .line 268
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->takeASnapshot()V

    .line 272
    :cond_0
    return-void
.end method

.method public onZoomChanged(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 916
    :cond_1
    iput p1, p0, Lcom/android/camera/TimelapsedModule;->mZoomValue:F

    .line 917
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mZoomValue:F

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setZoomRatio(F)V

    .line 922
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1850
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    .line 1852
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/OrientationManager;->removeOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 1854
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1858
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1859
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v1}, Lcom/android/camera/FocusOverlayManager;->removeMessages()V

    .line 1861
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_2

    .line 1863
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->onStopVideoRecording()V

    .line 1870
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->closeVideoFileDescriptor()V

    .line 1872
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 1873
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1874
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/TimelapsedModule;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1877
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1879
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    .line 1880
    .local v0, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1882
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1883
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1884
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1885
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mPendingSwitchCameraId:I

    .line 1886
    iput-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mSwitchingCamera:Z

    .line 1887
    iput-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPreferenceRead:Z

    .line 1890
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->unregisterListener()V

    .line 1891
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1893
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1894
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1}, Lcom/android/camera/TimelapsedUI;->onPause()V

    .line 1895
    return-void

    .line 1865
    .end local v0    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->stopPreview()V

    .line 1866
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->closeCamera()V

    .line 1867
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->releaseMediaRecorder()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1808
    iput-boolean v3, p0, Lcom/android/camera/TimelapsedModule;->mPaused:Z

    .line 1809
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->installIntentFilter()V

    .line 1810
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1811
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1812
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/TimelapsedModule;->mZoomValue:F

    .line 1814
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v0

    .line 1815
    .local v0, "orientationManager":Lcom/android/camera/app/OrientationManager;
    invoke-interface {v0, p0}, Lcom/android/camera/app/OrientationManager;->addOnOrientationChangeListener(Lcom/android/camera/app/OrientationManager$OnOrientationChangeListener;)V

    .line 1816
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-interface {v0}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/TimelapsedUI;->onOrientationChanged(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/app/OrientationManager$DeviceOrientation;)V

    .line 1818
    invoke-virtual {p0, v3}, Lcom/android/camera/TimelapsedModule;->showVideoSnapshotUI(Z)V

    .line 1820
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    if-nez v1, :cond_2

    .line 1821
    iget v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraId:I

    invoke-direct {p0, v1}, Lcom/android/camera/TimelapsedModule;->requestCamera(I)V

    .line 1827
    :goto_0
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v1, :cond_0

    .line 1831
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v2, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1834
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    if-eqz v1, :cond_1

    .line 1835
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/TimelapsedModule;->mOnResumeTime:J

    .line 1836
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1843
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v1}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1845
    invoke-virtual {p0}, Lcom/android/camera/TimelapsedModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getMemoryManager()Lcom/android/camera/app/MemoryManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/camera/app/MemoryManager;->addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V

    .line 1846
    return-void

    .line 1824
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0
.end method

.method public setFocusParameters()V
    .locals 2

    .prologue
    .line 2163
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-eqz v0, :cond_0

    .line 2164
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->updateFocusParameters()V

    .line 2165
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 2167
    :cond_0
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/TimelapsedUI;->setOrientation(IZ)V

    .line 2210
    :cond_0
    return-void
.end method

.method showVideoSnapshotUI(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 1954
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    if-nez v1, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1957
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    sget-object v2, Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;->VIDEO_SNAPSHOT:Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;

    invoke-virtual {v1, v2}, Lcom/android/ex/camera2/portability/CameraCapabilities;->supports(Lcom/android/ex/camera2/portability/CameraCapabilities$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1958
    if-eqz p1, :cond_3

    .line 1959
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->startFlashAnimation(Z)V

    .line 1963
    :goto_1
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    goto :goto_0

    .line 1961
    :cond_3
    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mUI:Lcom/android/camera/TimelapsedUI;

    invoke-virtual {v1, p1}, Lcom/android/camera/TimelapsedUI;->showPreviewBorder(Z)V

    goto :goto_1
.end method

.method public startFaceDetection()V
    .locals 1

    .prologue
    .line 2141
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFaceDetectionStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2148
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFaceDetectionStarted:Z

    .line 2146
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->startFaceDetection()V

    goto :goto_0
.end method

.method public stopFaceDetection()V
    .locals 1

    .prologue
    .line 2152
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2155
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraCapabilities:Lcom/android/ex/camera2/portability/CameraCapabilities;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraCapabilities;->getMaxNumOfFacesSupported()I

    move-result v0

    if-lez v0, :cond_0

    .line 2156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mFaceDetectionStarted:Z

    .line 2157
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopFaceDetection()V

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 1016
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    if-nez v0, :cond_0

    .line 1017
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since it\'s not mPreviewing"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1040
    :goto_0
    return-void

    .line 1020
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    if-nez v0, :cond_1

    .line 1021
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "Skip stopPreview since mCameraDevice is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1025
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->cancelAutoFocus()V

    .line 1027
    sget-object v0, Lcom/android/camera/TimelapsedModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->stopPreview()V

    .line 1031
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0}, Lcom/android/ex/camera2/portability/CameraSettings;->getCurrentFlashMode()Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    move-result-object v0

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->TORCH:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    if-ne v0, v1, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    sget-object v1, Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;->OFF:Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraSettings;->setFlashMode(Lcom/android/ex/camera2/portability/CameraCapabilities$FlashMode;)V

    .line 1033
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mCameraDevice:Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/TimelapsedModule;->mCameraSettings:Lcom/android/ex/camera2/portability/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;->applySettings(Lcom/android/ex/camera2/portability/CameraSettings;)Z

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    if-eqz v0, :cond_3

    .line 1037
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mFocusManager:Lcom/android/camera/FocusOverlayManager;

    invoke-virtual {v0}, Lcom/android/camera/FocusOverlayManager;->onPreviewStopped()V

    .line 1039
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mPreviewing:Z

    goto :goto_0
.end method

.method public updateCameraOrientation()V
    .locals 2

    .prologue
    .line 890
    iget-boolean v0, p0, Lcom/android/camera/TimelapsedModule;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 893
    :cond_1
    iget v0, p0, Lcom/android/camera/TimelapsedModule;->mDisplayRotation:I

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 894
    invoke-direct {p0}, Lcom/android/camera/TimelapsedModule;->setDisplayOrientation()V

    goto :goto_0
.end method

.method public updatePreviewAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 900
    iget-object v0, p0, Lcom/android/camera/TimelapsedModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 901
    return-void
.end method
