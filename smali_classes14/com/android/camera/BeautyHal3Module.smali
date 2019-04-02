.class public Lcom/android/camera/BeautyHal3Module;
.super Lcom/android/camera/CameraModule;
.source "BeautyHal3Module.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;
.implements Lcom/android/camera/one/OneCamera$PictureCallback;
.implements Lcom/android/camera/one/OneCamera$ScreenFlashController;
.implements Lcom/android/camera/one/OneCamera$FocusStateListener;
.implements Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
.implements Lcom/android/camera/remote/RemoteCameraModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/BeautyHal3Module$ModuleState;
    }
.end annotation


# static fields
.field private static final BURST_SESSIONS_DIR:Ljava/lang/String; = "burst_sessions"

.field private static final CAMERA_OPEN_CLOSE_TIMEOUT_MILLIS:I = 0x9c4

.field private static final CAPTURE_DEBUG_UI:Z

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final USE_AUTOTRANSFORM_UI_LAYOUT:Z


# instance fields
.field private mActivity:Lcom/android/camera/CameraActivity;

.field private final mAllocationLock:Ljava/lang/Object;

.field private final mAppController:Lcom/android/camera/app/AppController;

.field private mAutoFocusScanStartFrame:J

.field private mAutoFocusScanStartTime:J

.field private mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

.field private mCamera:Lcom/android/camera/one/OneCamera;

.field private mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private final mDimensionLock:Ljava/lang/Object;

.field private mDisplayRotation:I

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private mFrontCameraMirror:Z

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mOrientation:I

.field private mPaused:Z

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field mPreviewArea:Landroid/graphics/RectF;

.field private final mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

.field private mPreviewBufferHeight:I

.field private mPreviewBufferWidth:I

.field private final mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowErrorAndFinish:Z

.field private mShutterSoundEnabled:Z

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mSoundPlayerLoaded:Z

.field private mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/BeautyHal3ModuleUI;

.field private final mUIListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BeautyHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 119
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/BeautyHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 125
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/BeautyHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 438
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BeautyHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 439
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 127
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 152
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mHdrSceneEnabled:Z

    .line 153
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mHdrPlusEnabled:Z

    .line 154
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 166
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mWatermarkEnabled:Z

    .line 167
    iput-boolean v5, p0, Lcom/android/camera/BeautyHal3Module;->mShutterSoundEnabled:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mFrontCameraMirror:Z

    .line 169
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mSwitchCamera:Z

    .line 170
    iput v4, p0, Lcom/android/camera/BeautyHal3Module;->mOrientation:I

    .line 171
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 172
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mFirstPreviewArrived:Z

    .line 175
    new-instance v1, Lcom/android/camera/BeautyHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$1;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUIListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    .line 216
    new-instance v1, Lcom/android/camera/BeautyHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$2;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 228
    new-instance v1, Lcom/android/camera/BeautyHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$3;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 320
    new-instance v1, Lcom/android/camera/BeautyHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$4;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 392
    sget-object v1, Lcom/android/camera/BeautyHal3Module$ModuleState;->IDLE:Lcom/android/camera/BeautyHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

    .line 394
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mZoomValue:F

    .line 397
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    .line 407
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    .line 416
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    .line 433
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 435
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 444
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new BeautyHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 445
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mFirstPreviewArrived:Z

    .line 446
    iput-boolean v5, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    .line 447
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 448
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 449
    iput-boolean p2, p0, Lcom/android/camera/BeautyHal3Module;->mStickyGcamCamera:Z

    .line 450
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 451
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BeautyHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/BeautyHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/BeautyHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/android/camera/BeautyHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/BeautyHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/BeautyHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/BeautyHal3Module$ModuleState;)Lcom/android/camera/BeautyHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Lcom/android/camera/BeautyHal3Module$ModuleState;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/BeautyHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/BeautyHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/BeautyHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mFrontCameraMirror:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$3402(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/BeautyHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/camera/BeautyHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/BeautyHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/BeautyHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/BeautyHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/BeautyHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/BeautyHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/BeautyHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/BeautyHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/BeautyHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/BeautyHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/BeautyHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/camera/BeautyHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/BeautyHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/BeautyHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BeautyHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BeautyHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->cancelCountDown()V

    .line 792
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 793
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 794
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 798
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1873
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BeautyHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 1875
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1880
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1881
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 1884
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1885
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 1886
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 1887
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 1888
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 1889
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1890
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 1891
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1894
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1895
    invoke-virtual {p0, v5}, Lcom/android/camera/BeautyHal3Module;->onReadyStateChanged(Z)V

    .line 1896
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/BeautyHal3Module$17;

    invoke-direct {v3, p0}, Lcom/android/camera/BeautyHal3Module$17;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1904
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1905
    return-void

    .line 1876
    :catch_0
    move-exception v0

    .line 1877
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1894
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1895
    invoke-virtual {p0, v5}, Lcom/android/camera/BeautyHal3Module;->onReadyStateChanged(Z)V

    .line 1896
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/BeautyHal3Module$17;

    invoke-direct {v4, p0}, Lcom/android/camera/BeautyHal3Module$17;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 711
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 712
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 713
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 715
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 730
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mFrontCameraMirror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v5, :cond_0

    .line 731
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mFrontCameraMirror:Z

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setMirror(Z)V

    .line 733
    :cond_0
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/BeautyHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 734
    return-object v6
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 739
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 740
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 742
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 744
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 745
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 744
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 746
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 663
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 664
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, "flashSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 667
    .local v1, "gridLinesOn":Z
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 668
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v2, v3

    .line 683
    .local v2, "timerDuration":F
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1410
    new-instance v0, Lcom/android/camera/BeautyHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$14;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    .line 1439
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/BeautyHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$15;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v0

    invoke-static {p1}, Lcom/android/camera/device/CameraId;->fromLegacyId(I)Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/camera/app/OneCameraProvider;->isFrontFacingCamera(Lcom/android/camera/device/CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0
.end method

.method private getHdrButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1356
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1357
    new-instance v0, Lcom/android/camera/BeautyHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$12;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    .line 1379
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/BeautyHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$13;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 885
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 886
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSessionTime()J
    .locals 2

    .prologue
    .line 751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 857
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 860
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 861
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 859
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 863
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 864
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->reopenCamera()V

    .line 865
    return-void

    .line 863
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private is16by9AspectRatio(Lcom/android/camera/util/Size;)Z
    .locals 4
    .param p1, "size"    # Lcom/android/camera/util/Size;

    .prologue
    const/4 v1, 0x0

    .line 1591
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return v1

    .line 1596
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1597
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1600
    .local v0, "aspectRatio":F
    :goto_1
    const v2, 0x3fe38e39

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 1598
    .end local v0    # "aspectRatio":F
    :cond_2
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    goto :goto_1
.end method

.method private measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V
    .locals 12
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "frameNumber"    # J

    .prologue
    .line 1262
    const/4 v3, 0x0

    .line 1263
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/BeautyHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1266
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1267
    iput-wide p2, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    .line 1268
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1273
    :pswitch_1
    const/4 v3, 0x1

    .line 1276
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1277
    iget-wide v8, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1278
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1279
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1280
    .local v2, "fps":I
    const-string v8, "%s scan: fps=%d frames=%d"

    const/4 v7, 0x3

    new-array v9, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v3, :cond_1

    const-string v7, "CAF"

    :goto_1
    aput-object v7, v9, v10

    const/4 v7, 0x1

    .line 1281
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1280
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1282
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1283
    iget-object v7, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    const-string v8, "%d / %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/camera/BeautyHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1284
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1280
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1263
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1494
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

    sget-object v2, Lcom/android/camera/BeautyHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/BeautyHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1495
    sget-object v1, Lcom/android/camera/BeautyHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/BeautyHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mState:Lcom/android/camera/BeautyHal3Module$ModuleState;

    .line 1497
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1498
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1499
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1500
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1501
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1502
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/BeautyHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1503
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1504
    return-void

    .line 1502
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 22

    .prologue
    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "BeautyHal3Module.openCameraAndStartPreview()"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v21

    .line 1641
    .local v21, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1643
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1645
    :catch_0
    move-exception v19

    .line 1646
    .local v19, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1649
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1651
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 1653
    sget-object v4, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Camera already open, not re-opening."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1655
    const-string v4, "Camera is already open"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1870
    :goto_0
    return-void

    .line 1659
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1660
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1665
    .local v15, "cameraSettingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1667
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BEAUTY:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/BeautyHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 1673
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1676
    sget-object v4, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1677
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1678
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 1668
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :catch_1
    move-exception v20

    .line 1669
    .local v20, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1670
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1682
    .end local v20    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/camera/BeautyHal3Module$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lcom/android/camera/BeautyHal3Module$16;-><init>(Lcom/android/camera/BeautyHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 868
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 872
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/BeautyHal3Module$10;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$10;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1521
    sget-boolean v0, Lcom/android/camera/BeautyHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1522
    invoke-direct {p0, v0}, Lcom/android/camera/BeautyHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1521
    :goto_0
    return v0

    .line 1522
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 1944
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewBufferSize()V

    .line 1945
    return-void
.end method

.method private startActiveFocusAt(II)V
    .locals 9
    .param p1, "viewX"    # I
    .param p2, "viewY"    # I

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    .line 1156
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1205
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1163
    sget-object v3, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "BeautyHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :cond_2
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1168
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1169
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1176
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1177
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1178
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1181
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1182
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1183
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    .line 1185
    :cond_3
    iget v3, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1186
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1189
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1190
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1193
    :cond_4
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1196
    iget v3, p0, Lcom/android/camera/BeautyHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1197
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1200
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1201
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1203
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1171
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1172
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1219
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1911
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1912
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1924
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 1918
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1919
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->cancelCountDown()V

    .line 1920
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->clearFaces()V

    .line 1921
    iput-boolean v3, p0, Lcom/android/camera/BeautyHal3Module;->mSwitchCamera:Z

    .line 1922
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->initSurfaceTextureConsumer()V

    .line 1923
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1476
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1477
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1481
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1482
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1483
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1484
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1486
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1487
    return-void
.end method

.method private takePictureNow()V
    .locals 13

    .prologue
    .line 686
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 687
    sget-object v1, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 704
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 692
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 693
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/BeautyHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v12

    .line 695
    .local v12, "session":Lcom/android/camera/session/CaptureSession;
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setSessionTitle(Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setCameraId(Ljava/lang/String;)V

    .line 699
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 700
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 701
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/BeautyHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 702
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v12}, Lcom/android/camera/BeautyHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 703
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v12}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 701
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 525
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 526
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 527
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 528
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 534
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v2

    .line 533
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1609
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1627
    :goto_0
    return-void

    .line 1613
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1614
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    .line 1615
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    .line 1619
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1623
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    .line 1624
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    .line 1626
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 890
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 895
    :cond_0
    monitor-exit v1

    .line 896
    return-void

    .line 895
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updatePreviewTransform(II)V
    .locals 1
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I

    .prologue
    .line 1511
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewTransform(IIZ)V

    .line 1512
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1531
    sget-object v2, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePreviewTransform: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1533
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1534
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1536
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1538
    monitor-exit v3

    .line 1580
    :goto_0
    return-void

    .line 1541
    :cond_0
    iput v0, p0, Lcom/android/camera/BeautyHal3Module;->mDisplayRotation:I

    .line 1542
    iput p1, p0, Lcom/android/camera/BeautyHal3Module;->mScreenWidth:I

    .line 1543
    iput p2, p0, Lcom/android/camera/BeautyHal3Module;->mScreenHeight:I

    .line 1544
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewBufferDimension()V

    .line 1557
    sget-boolean v2, Lcom/android/camera/BeautyHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1559
    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1560
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1563
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1579
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "incomingRotation":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1565
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1570
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1571
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1572
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1574
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/BeautyHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/BeautyHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1577
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, v1}, Lcom/android/camera/app/AppController;->updatePreviewTransform(Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 967
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 970
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 974
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 975
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 978
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 979
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 981
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    iput-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 983
    return-void

    .line 981
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1073
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1074
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1075
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1077
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1078
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_1

    move v1, v5

    .line 1079
    .local v1, "isLowPower":Z
    :goto_0
    if-nez v1, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1080
    sget-object v3, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLowPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1081
    sget-object v3, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableFlash = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1083
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1084
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1085
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1086
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1087
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1088
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1090
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1091
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1092
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1094
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1095
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1097
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1098
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v3, v6, :cond_0

    move v5, v4

    :cond_0
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1099
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1101
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 1103
    iget-boolean v3, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1104
    return-object v0

    .line 1078
    .end local v1    # "isLowPower":Z
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_2
    move v3, v5

    .line 1079
    goto :goto_1
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 344
    sget-object v0, Lcom/android/camera/BeautyHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 352
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 346
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 348
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 350
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;
    .locals 1

    .prologue
    .line 1008
    new-instance v0, Lcom/android/camera/BeautyHal3Module$11;

    invoke-direct {v0, p0}, Lcom/android/camera/BeautyHal3Module$11;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1302
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v0}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hardResetSettings(Lcom/android/camera/settings/SettingsManager;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 997
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1000
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1001
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1002
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1001
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/BeautyHal3Module$6;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$6;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BeautyHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 540
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 542
    sget-object v2, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/BeautyHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 544
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 545
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 544
    invoke-direct {p0, v2}, Lcom/android/camera/BeautyHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 546
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    .line 548
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 549
    iget-boolean v2, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_1

    .line 550
    sget-object v2, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 551
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 574
    :goto_1
    return-void

    .line 547
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 555
    :cond_1
    new-instance v2, Lcom/android/camera/BeautyHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mUIListener:Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/BeautyHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/BeautyHal3ModuleUI$CaptureModuleUIListener;)V

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    .line 556
    const-string v2, "BeautyHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 558
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 560
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 561
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 562
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 565
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 566
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/BeautyHal3Module$8;

    invoke-direct {v2, p0}, Lcom/android/camera/BeautyHal3Module$8;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 562
    .end local v0    # "cancelButton":Landroid/view/View;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 1109
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 1949
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 993
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 757
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 758
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 759
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->takePictureNow()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 455
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 456
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/BeautyHal3Module$7;

    invoke-direct {v1, p0}, Lcom/android/camera/BeautyHal3Module$7;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 506
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 508
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/BeautyHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 509
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 510
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 511
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 513
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BeautyHal3ModuleUI;->loadModuleLayout()V

    .line 520
    :cond_1
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 521
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1258
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF status is state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focusPotint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/PointF;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1228
    sget-object v0, Lcom/android/camera/BeautyHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1255
    :goto_1
    sget-boolean v0, Lcom/android/camera/BeautyHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1256
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/BeautyHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1230
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1231
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1234
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1237
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1241
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1245
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1248
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1228
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1114
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1132
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1115
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1132
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1118
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/BeautyHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1119
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 1120
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1122
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1123
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1115
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1137
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1148
    :cond_0
    :goto_0
    return v0

    .line 1138
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1148
    const/4 v0, 0x0

    goto :goto_0

    .line 1141
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1142
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1143
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1138
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onLayoutOrientationChanged(Z)V
    .locals 2
    .param p1, "isLandscape"    # Z

    .prologue
    .line 987
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 988
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1319
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1314
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BeautyHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1334
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1329
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 802
    iget-boolean v3, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 847
    :goto_0
    return-void

    .line 803
    :cond_0
    const/4 v1, 0x0

    .line 805
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :goto_1
    new-instance v2, Lcom/android/camera/BeautyHal3Module$9;

    invoke-direct {v2, p0}, Lcom/android/camera/BeautyHal3Module$9;-><init>(Lcom/android/camera/BeautyHal3Module;)V

    .line 842
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 843
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 806
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 807
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 808
    const/4 v1, 0x1

    goto :goto_1

    .line 845
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onReadyStateChanged(Z)V
    .locals 1
    .param p1, "readyForCapture"    # Z

    .prologue
    .line 1292
    if-eqz p1, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1295
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1296
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1297
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1298
    return-void
.end method

.method public onRemainingSecondsChanged(I)V
    .locals 6
    .param p1, "remainingSeconds"    # I

    .prologue
    const v5, 0x7f07001c

    const v4, 0x7f07001b

    const/4 v3, 0x1

    const v2, 0x3f19999a    # 0.6f

    .line 767
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 769
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 772
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 774
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 775
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 776
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    .line 779
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 780
    if-ne p1, v3, :cond_5

    .line 781
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 782
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 783
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 851
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 853
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->takePictureNow()V

    .line 854
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 340
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 618
    :cond_0
    sget-object v1, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 620
    iget-boolean v1, p0, Lcom/android/camera/BeautyHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 621
    sget-object v1, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 626
    sget-object v1, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    .line 632
    .local v2, "storageSpaceBytes":J
    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_3

    .line 633
    sget-object v1, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShutterButtonClick ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_3
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 639
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 641
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 642
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 643
    .local v0, "countDownDuration":I
    if-lez v0, :cond_4

    .line 645
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 646
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 647
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 648
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/BeautyHal3ModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 649
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/BeautyHal3ModuleUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 652
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 605
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 606
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 4

    .prologue
    .line 578
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08010a

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 579
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 580
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 584
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 588
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 589
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 592
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 593
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 594
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 595
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 596
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 599
    iget-object v5, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/camera/BeautyHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 611
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/BeautyHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1324
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1308
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1309
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 935
    sget-object v0, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    .line 937
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 939
    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 943
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->cancelCountDown()V

    .line 945
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 949
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 950
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 951
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/camera/BeautyHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 955
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->closeCamera()V

    .line 956
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->resetTextureBufferSize()V

    .line 957
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 959
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 960
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 961
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/BeautyHal3Module;->mSoundPlayerLoaded:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 900
    sget-object v2, Lcom/android/camera/BeautyHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 901
    iget-boolean v2, p0, Lcom/android/camera/BeautyHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 931
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BeautyHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 906
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/BeautyHal3Module;->mPaused:Z

    .line 908
    invoke-virtual {p0, v5}, Lcom/android/camera/BeautyHal3Module;->onReadyStateChanged(Z)V

    .line 914
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 916
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 917
    if-eqz v1, :cond_1

    .line 918
    invoke-direct {p0}, Lcom/android/camera/BeautyHal3Module;->initSurfaceTextureConsumer()V

    .line 919
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 922
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 923
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 927
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 928
    iget-object v2, p0, Lcom/android/camera/BeautyHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 930
    :cond_2
    const-string v2, "resume end"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 658
    iput p1, p0, Lcom/android/camera/BeautyHal3Module;->mOrientation:I

    .line 659
    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BeautyHal3Module;->mUI:Lcom/android/camera/BeautyHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/BeautyHal3ModuleUI;->setOrientation(IZ)V

    .line 660
    :cond_0
    return-void
.end method

.method public showScreenFlash(Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    new-instance v2, Lcom/android/camera/BeautyHal3Module$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/BeautyHal3Module$5;-><init>(Lcom/android/camera/BeautyHal3Module;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 366
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 368
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 369
    iget-object v1, p0, Lcom/android/camera/BeautyHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 371
    :cond_0
    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1343
    iget-object v3, p0, Lcom/android/camera/BeautyHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1344
    :try_start_0
    iget v1, p0, Lcom/android/camera/BeautyHal3Module;->mScreenWidth:I

    .line 1345
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/BeautyHal3Module;->mScreenHeight:I

    .line 1346
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1347
    invoke-direct {p0, v1, v0}, Lcom/android/camera/BeautyHal3Module;->updatePreviewTransform(II)V

    .line 1348
    return-void

    .line 1346
    .end local v0    # "height":I
    .end local v1    # "width":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
