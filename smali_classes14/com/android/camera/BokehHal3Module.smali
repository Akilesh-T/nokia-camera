.class public Lcom/android/camera/BokehHal3Module;
.super Lcom/android/camera/CameraModule;
.source "BokehHal3Module.java"

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
        Lcom/android/camera/BokehHal3Module$ModuleState;
    }
.end annotation


# static fields
.field private static final BURST_SESSIONS_DIR:Ljava/lang/String; = "burst_sessions"

.field private static final CAMERA_OPEN_CLOSE_TIMEOUT_MILLIS:I = 0x9c4

.field private static final CAPTURE_DEBUG_UI:Z

.field private static final MAX_QUEUE_SIZE:I = 0x2

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

.field private mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

.field private final mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

.field private mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

.field private final mProfiler:Lcom/android/camera/stats/profiler/Profiler;

.field private mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowErrorAndFinish:Z

.field private mShutterSoundEnabled:Z

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mSoundPlayerLoaded:Z

.field private mState:Lcom/android/camera/BokehHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/BokehHal3ModuleUI;

.field private final mUIListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "BokehHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 133
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/BokehHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 139
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/BokehHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/BokehHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 456
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 460
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 141
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 162
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 166
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mHdrSceneEnabled:Z

    .line 167
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mHdrPlusEnabled:Z

    .line 168
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 180
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mWatermarkEnabled:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/camera/BokehHal3Module;->mShutterSoundEnabled:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mFrontCameraMirror:Z

    .line 183
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mSwitchCamera:Z

    .line 184
    iput v4, p0, Lcom/android/camera/BokehHal3Module;->mOrientation:I

    .line 185
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 186
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mFirstPreviewArrived:Z

    .line 187
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 193
    new-instance v1, Lcom/android/camera/BokehHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$1;-><init>(Lcom/android/camera/BokehHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUIListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    .line 234
    new-instance v1, Lcom/android/camera/BokehHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$2;-><init>(Lcom/android/camera/BokehHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 246
    new-instance v1, Lcom/android/camera/BokehHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$3;-><init>(Lcom/android/camera/BokehHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 341
    new-instance v1, Lcom/android/camera/BokehHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$4;-><init>(Lcom/android/camera/BokehHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 409
    sget-object v1, Lcom/android/camera/BokehHal3Module$ModuleState;->IDLE:Lcom/android/camera/BokehHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mState:Lcom/android/camera/BokehHal3Module$ModuleState;

    .line 411
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mZoomValue:F

    .line 414
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    .line 424
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    .line 433
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    .line 450
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 452
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 461
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new BokehHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 462
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mFirstPreviewArrived:Z

    .line 463
    iput-boolean v5, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    .line 464
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 465
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 466
    iput-boolean p2, p0, Lcom/android/camera/BokehHal3Module;->mStickyGcamCamera:Z

    .line 467
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 468
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/BokehHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/BokehHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/BokehHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 120
    iput p1, p0, Lcom/android/camera/BokehHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/BokehHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/android/camera/BokehHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/BokehHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/BokehHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mState:Lcom/android/camera/BokehHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/BokehHal3Module$ModuleState;)Lcom/android/camera/BokehHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/BokehHal3Module$ModuleState;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mState:Lcom/android/camera/BokehHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/BokehHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/BokehHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/BokehHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mFrontCameraMirror:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera$AutoFocusState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/BokehHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/camera/BokehHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/BokehHal3Module;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/camera/BokehHal3Module;->onBeautyStateChanged(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/BokehHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/BokehHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$4500(Lcom/android/camera/BokehHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$4602(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/one/OneCamera$FocusStateListener;)Lcom/android/camera/one/OneCamera$FocusStateListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$FocusStateListener;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/camera/BokehHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/BokehHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget v0, p0, Lcom/android/camera/BokehHal3Module;->mOrientation:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/BokehHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/android/camera/BokehHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/android/camera/BokehHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/BokehHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/BokehHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/BokehHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/camera/BokehHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/BokehHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/BokehHal3Module;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->cancelCountDown()V

    .line 945
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 946
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 947
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 949
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2161
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BokehHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2163
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2167
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2168
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2169
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2172
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 2173
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2174
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2175
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2176
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setBokehResultListener(Lcom/android/camera/one/v2/photo/BokehResultListener;)V

    .line 2177
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2178
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2179
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2180
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2183
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2184
    invoke-virtual {p0, v5}, Lcom/android/camera/BokehHal3Module;->onReadyStateChanged(Z)V

    .line 2185
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/BokehHal3Module$20;

    invoke-direct {v3, p0}, Lcom/android/camera/BokehHal3Module$20;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2193
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2194
    return-void

    .line 2164
    :catch_0
    move-exception v0

    .line 2165
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2183
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2184
    invoke-virtual {p0, v5}, Lcom/android/camera/BokehHal3Module;->onReadyStateChanged(Z)V

    .line 2185
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/BokehHal3Module$20;

    invoke-direct {v4, p0}, Lcom/android/camera/BokehHal3Module$20;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 864
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 865
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 866
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 867
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v7

    .line 869
    .local v7, "session":Lcom/android/camera/session/CaptureSession;
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mWatermarkEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "WatermarkManager.getData"

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v6

    .line 871
    .local v6, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create watermarkViewData with Picture Size = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getWatermarkManager()Lcom/android/camera/WatermarkManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v5}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v5

    iget-object v9, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v0, v5, v9}, Lcom/android/camera/WatermarkManager;->getData(II)Lcom/android/camera/watermark/WatermarkViewData;

    move-result-object v8

    .line 873
    .local v8, "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    const-string v0, "WatermarkViewData get"

    invoke-interface {v6, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 874
    if-eqz v8, :cond_2

    .line 875
    iput p1, v8, Lcom/android/camera/watermark/WatermarkViewData;->mOrientation:I

    .line 876
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "watermarkViewData = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/android/camera/watermark/WatermarkViewData;->dump()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 877
    invoke-static {v8}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/android/camera/session/CaptureSession;->setWatermarkViewData(Lcom/google/common/base/Optional;)V

    .line 882
    .end local v6    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .end local v8    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mFrontCameraMirror:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v5, :cond_1

    .line 883
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mFrontCameraMirror:Z

    invoke-interface {v7, v0}, Lcom/android/camera/session/CaptureSession;->setMirror(Z)V

    .line 885
    :cond_1
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v7, v0}, Lcom/android/camera/session/CaptureSession;->setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 886
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/BokehHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v7, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 887
    return-object v7

    .line 879
    .restart local v6    # "guard":Lcom/android/camera/stats/profiler/Profile;
    .restart local v8    # "watermarkViewData":Lcom/android/camera/watermark/WatermarkViewData;
    :cond_2
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "can\'t get WatermarkViewData."

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 892
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 893
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 894
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 895
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 897
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 898
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 897
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 899
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 7
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 704
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 705
    .local v2, "pictureResolutionData":Ljava/lang/String;
    const/4 v6, 0x0

    .line 706
    .local v6, "mode":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    .line 707
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 712
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    .line 713
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-boolean v3, p0, Lcom/android/camera/BokehHal3Module;->mWatermarkEnabled:Z

    const-wide/16 v4, 0x1

    .line 712
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 719
    return-void

    .line 709
    :cond_0
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0
.end method

.method private getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1636
    new-instance v0, Lcom/android/camera/BokehHal3Module$17;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$17;-><init>(Lcom/android/camera/BokehHal3Module;)V

    return-object v0
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1576
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1577
    new-instance v0, Lcom/android/camera/BokehHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$15;-><init>(Lcom/android/camera/BokehHal3Module;)V

    .line 1606
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/BokehHal3Module$16;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$16;-><init>(Lcom/android/camera/BokehHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2223
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1523
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1524
    new-instance v0, Lcom/android/camera/BokehHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$13;-><init>(Lcom/android/camera/BokehHal3Module;)V

    .line 1546
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/BokehHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$14;-><init>(Lcom/android/camera/BokehHal3Module;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1036
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 1037
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
    .line 904
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 1008
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1009
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1011
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1012
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 1010
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1014
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1015
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->reopenCamera()V

    .line 1016
    return-void

    .line 1014
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

    .line 1773
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1782
    :cond_0
    :goto_0
    return v1

    .line 1778
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1779
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1782
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

    .line 1780
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
    .line 1425
    const/4 v3, 0x0

    .line 1426
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/BokehHal3Module$21;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1451
    :cond_0
    :goto_0
    return-void

    .line 1429
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1430
    iput-wide p2, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    .line 1431
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1436
    :pswitch_1
    const/4 v3, 0x1

    .line 1439
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1440
    iget-wide v8, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1441
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1442
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1443
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

    .line 1444
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1443
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1445
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1446
    iget-object v7, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/BokehHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1447
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1443
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1426
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

.method private onBeautyStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->setControlBarVisibility()V

    .line 1650
    return-void
.end method

.method private onPreviewStarted()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1676
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mState:Lcom/android/camera/BokehHal3Module$ModuleState;

    sget-object v3, Lcom/android/camera/BokehHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/BokehHal3Module$ModuleState;

    if-ne v0, v3, :cond_0

    .line 1677
    sget-object v0, Lcom/android/camera/BokehHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/BokehHal3Module$ModuleState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mState:Lcom/android/camera/BokehHal3Module$ModuleState;

    .line 1679
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1680
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1681
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1682
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1683
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1684
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/camera/BokehHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1685
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1686
    return-void

    :cond_1
    move v0, v2

    .line 1681
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1684
    goto :goto_1
.end method

.method private openCameraAndStartPreview()V
    .locals 23

    .prologue
    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "BokehHal3Module.openCameraAndStartPreview()"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v21

    .line 1824
    .local v21, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1826
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1828
    :catch_0
    move-exception v19

    .line 1829
    .local v19, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1832
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1834
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 1836
    sget-object v4, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Camera already open, not re-opening."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1838
    const-string v4, "Camera is already open"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2158
    :goto_0
    return-void

    .line 1844
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_6

    .line 1845
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v4, v5, :cond_2

    .line 1846
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1847
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OneCameraProvider;->getMonoCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v22

    .line 1880
    .local v22, "slaveCameraId":Lcom/android/camera/device/CameraId;
    :goto_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1885
    .local v15, "cameraSettingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getBokehPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1887
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/BokehHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 1893
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1895
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v4, :cond_7

    .line 1896
    sget-object v4, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1898
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1848
    .end local v15    # "cameraSettingScope":Ljava/lang/String;
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v4

    sget-object v5, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v4, v5, :cond_5

    .line 1849
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1851
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    if-nez v17, :cond_4

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_3

    .line 1853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1855
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 1856
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1857
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v5, Lcom/android/camera/BokehHal3Module$18;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/camera/BokehHal3Module$18;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-virtual {v4, v5}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1865
    sget-object v4, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Can\'t get logic camera for BOKEH"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1866
    const-string v4, "Can\'t get logic camera for BOKEH"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1870
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 1872
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1873
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    const/16 v22, 0x0

    .restart local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 1876
    .end local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1877
    .restart local v17    # "cameraId":Lcom/android/camera/device/CameraId;
    const/16 v22, 0x0

    .restart local v22    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    goto/16 :goto_1

    .line 1888
    .restart local v15    # "cameraSettingScope":Ljava/lang/String;
    :catch_1
    move-exception v20

    .line 1889
    .local v20, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1902
    .end local v20    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    new-instance v5, Lcom/android/camera/BokehHal3Module$19;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Lcom/android/camera/BokehHal3Module$19;-><init>(Lcom/android/camera/BokehHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1, v5}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 1019
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1032
    :goto_0
    return-void

    .line 1023
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/BokehHal3Module$11;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$11;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1703
    sget-boolean v0, Lcom/android/camera/BokehHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1704
    invoke-direct {p0, v0}, Lcom/android/camera/BokehHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1703
    :goto_0
    return v0

    .line 1704
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2234
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updatePreviewBufferSize()V

    .line 2235
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

    .line 1316
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1365
    :cond_0
    :goto_0
    return-void

    .line 1322
    :cond_1
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1323
    sget-object v3, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "BokehHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1327
    :cond_2
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1328
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1329
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1336
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1337
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1338
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1341
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1342
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1343
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    .line 1345
    :cond_3
    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1346
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1349
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1350
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1353
    :cond_4
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1356
    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1357
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1360
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1361
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1363
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1331
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1332
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1372
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1379
    :goto_0
    return-void

    .line 1378
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2200
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2201
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2214
    :cond_0
    :goto_0
    return-void

    .line 2204
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 2207
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2208
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->cancelCountDown()V

    .line 2209
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->clearFaces()V

    .line 2210
    iput-boolean v3, p0, Lcom/android/camera/BokehHal3Module;->mSwitchCamera:Z

    .line 2211
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->initSurfaceTextureConsumer()V

    .line 2212
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 2213
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->switchCamera(Lcom/android/camera/one/OneCamera$Facing;)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1658
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1659
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1663
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1664
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1665
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1666
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1668
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1669
    return-void
.end method

.method private takePictureNow()V
    .locals 13

    .prologue
    .line 722
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 723
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 856
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 728
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 729
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/BokehHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v12

    .line 732
    .local v12, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v3, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v1}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportHWRotate()Z

    move-result v1

    invoke-interface {v12, v1}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 736
    :cond_1
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setSessionTitle(Ljava/lang/String;)V

    .line 737
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/util/DebugYuvDumpUtil;->setCameraId(Ljava/lang/String;)V

    .line 740
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 741
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 742
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v5, v6, :cond_2

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v5

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v5, v6, :cond_2

    new-instance v5, Lcom/android/camera/BokehHal3Module$9;

    invoke-direct {v5, p0, v2, v12}, Lcom/android/camera/BokehHal3Module$9;-><init>(Lcom/android/camera/BokehHal3Module;ILcom/android/camera/session/CaptureSession;)V

    :goto_1
    iget-object v7, p0, Lcom/android/camera/BokehHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v6, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 853
    invoke-virtual {v6}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_2
    iget v9, p0, Lcom/android/camera/BokehHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 854
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v12}, Lcom/android/camera/BokehHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 855
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v12}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_2
    move-object v5, p0

    .line 742
    goto :goto_1

    .line 853
    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 544
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_3

    .line 545
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v2, v3, :cond_1

    .line 546
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 556
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 557
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 558
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 564
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_1
    return v1

    .line 547
    :cond_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v2

    sget-object v3, Lcom/android/camera/util/ProductModelUtil$DualCamType;->QC_LOGIC_CAM:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-ne v2, v3, :cond_2

    .line 548
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->BOKEH:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->getLogicCameraId(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 550
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 553
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    goto :goto_0

    .line 560
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :catch_0
    move-exception v2

    .line 563
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_1
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1791
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1795
    :cond_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1796
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    .line 1797
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    .line 1801
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1805
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    .line 1806
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    .line 1808
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updatePreviewBufferSize()V

    .line 1809
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPreviewBufferWidth,mPreviewBufferHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1042
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1046
    :cond_0
    monitor-exit v1

    .line 1047
    return-void

    .line 1046
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
    .line 1693
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/BokehHal3Module;->updatePreviewTransform(IIZ)V

    .line 1694
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1713
    sget-object v2, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1715
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1716
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1718
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1720
    monitor-exit v3

    .line 1762
    :goto_0
    return-void

    .line 1723
    :cond_0
    iput v0, p0, Lcom/android/camera/BokehHal3Module;->mDisplayRotation:I

    .line 1724
    iput p1, p0, Lcom/android/camera/BokehHal3Module;->mScreenWidth:I

    .line 1725
    iput p2, p0, Lcom/android/camera/BokehHal3Module;->mScreenHeight:I

    .line 1726
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updatePreviewBufferDimension()V

    .line 1739
    sget-boolean v2, Lcom/android/camera/BokehHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1741
    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1742
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1745
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1761
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

    .line 1747
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1752
    :cond_3
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1753
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1754
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1756
    :cond_4
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/BokehHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/BokehHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/BokehHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1759
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1120
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1121
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1122
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1123
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 1131
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1134
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1135
    iput-object v3, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1137
    return-void

    .line 1134
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
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1227
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1228
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v3}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v3}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 1229
    iget-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    if-nez v3, :cond_2

    move v3, v5

    :goto_1
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1230
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1232
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1233
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_3

    move v1, v4

    .line 1234
    .local v1, "isLowPower":Z
    :goto_2
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v6, :cond_5

    if-nez v1, :cond_4

    move v3, v5

    :goto_3
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1235
    sget-object v3, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1236
    sget-object v3, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1238
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1239
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1240
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1241
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1242
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1243
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1245
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1246
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1247
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1249
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1250
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1252
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1253
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v6, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v3, v6, :cond_6

    move v3, v5

    :goto_4
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1254
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1256
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 1258
    iget-boolean v3, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1260
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showBeauty:Z

    .line 1261
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v6, :cond_7

    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqBokehBeauty()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_5
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableBeauty:Z

    .line 1262
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1264
    return-object v0

    .end local v1    # "isLowPower":Z
    .end local v2    # "powerMgr":Lcom/android/camera/PowerStateManager;
    :cond_1
    move v3, v4

    .line 1228
    goto/16 :goto_0

    :cond_2
    move v3, v4

    .line 1229
    goto/16 :goto_1

    .line 1233
    .restart local v2    # "powerMgr":Lcom/android/camera/PowerStateManager;
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_2

    .restart local v1    # "isLowPower":Z
    :cond_4
    move v3, v4

    .line 1234
    goto/16 :goto_3

    :cond_5
    move v3, v4

    goto/16 :goto_3

    :cond_6
    move v3, v4

    .line 1253
    goto :goto_4

    :cond_7
    move v4, v5

    .line 1261
    goto :goto_5
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 361
    sget-object v0, Lcom/android/camera/BokehHal3Module$21;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 363
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 365
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 367
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 361
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
    .line 1162
    new-instance v0, Lcom/android/camera/BokehHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/BokehHal3Module$12;-><init>(Lcom/android/camera/BokehHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1469
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1151
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1154
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1155
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1156
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1155
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/BokehHal3Module$6;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$6;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 399
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 569
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BokehHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 570
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 572
    sget-object v2, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/BokehHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 575
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 574
    invoke-direct {p0, v2}, Lcom/android/camera/BokehHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 576
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    .line 578
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 579
    iget-boolean v2, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_1

    .line 580
    sget-object v2, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 603
    :goto_1
    return-void

    .line 577
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 585
    :cond_1
    new-instance v2, Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mUIListener:Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/BokehHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/BokehHal3ModuleUI$CaptureModuleUIListener;)V

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    .line 586
    const-string v2, "BokehHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 587
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 588
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 590
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 591
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/BokehHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 592
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 595
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 596
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/BokehHal3Module$8;

    invoke-direct {v2, p0}, Lcom/android/camera/BokehHal3Module$8;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 602
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 592
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
    .line 1269
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2239
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1147
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 910
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 911
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 912
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 916
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->takePictureNow()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 472
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/BokehHal3Module$7;

    invoke-direct {v1, p0}, Lcom/android/camera/BokehHal3Module$7;-><init>(Lcom/android/camera/BokehHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/BokehHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 526
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->loadModuleLayout(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 537
    :cond_1
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1386
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1421
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1388
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mPreviewRenderFocusStateListener:Lcom/android/camera/one/OneCamera$FocusStateListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/camera/one/OneCamera$FocusStateListener;->onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V

    .line 1391
    :cond_2
    sget-object v0, Lcom/android/camera/BokehHal3Module$21;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1418
    :goto_1
    sget-boolean v0, Lcom/android/camera/BokehHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1419
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/BokehHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1393
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1394
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1397
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1400
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1404
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1408
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1411
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1391
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

    .line 1274
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1292
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1275
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1292
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1278
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/BokehHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1279
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 1280
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1282
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1283
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1284
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1275
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

    .line 1297
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1308
    :cond_0
    :goto_0
    return v0

    .line 1298
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1308
    const/4 v0, 0x0

    goto :goto_0

    .line 1301
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1302
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1303
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1298
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
    .line 1141
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1142
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1486
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1481
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/BokehHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1501
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1496
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 953
    iget-boolean v3, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 998
    :goto_0
    return-void

    .line 954
    :cond_0
    const/4 v1, 0x0

    .line 956
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_1
    new-instance v2, Lcom/android/camera/BokehHal3Module$10;

    invoke-direct {v2, p0}, Lcom/android/camera/BokehHal3Module$10;-><init>(Lcom/android/camera/BokehHal3Module;)V

    .line 993
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 994
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 957
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 959
    const/4 v1, 0x1

    goto :goto_1

    .line 996
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "runnable":Ljava/lang/Runnable;
    :cond_1
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public onReadyStateChanged(Z)V
    .locals 2
    .param p1, "readyForCapture"    # Z

    .prologue
    .line 1455
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v1

    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mReadyState:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1457
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1458
    if-eqz p1, :cond_0

    .line 1459
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->removeHintToastIfConfigured()V

    .line 1460
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1462
    :cond_0
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1463
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isBokehAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1464
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1465
    return-void

    .line 1457
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1463
    :cond_1
    const/4 v0, 0x0

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

    .line 920
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 922
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 925
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 926
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 927
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 928
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 929
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    .line 932
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 933
    if-ne p1, v3, :cond_5

    .line 934
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 935
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 936
    :cond_6
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1002
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->takePictureNow()V

    .line 1005
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 357
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 644
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 647
    :cond_0
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 649
    iget-boolean v1, p0, Lcom/android/camera/BokehHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 650
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    :cond_1
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 655
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v1, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSessionManager;->getSessionsSize()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_3

    .line 660
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "with Beauty  SessionsSize > MAX_QUEUE_SIZE return"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 664
    :cond_3
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    .line 666
    .local v2, "storageSpaceBytes":J
    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_4

    .line 667
    sget-object v1, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 671
    :cond_4
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 673
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 675
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 676
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 677
    .local v0, "countDownDuration":I
    if-lez v0, :cond_5

    .line 679
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 680
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 681
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 682
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/BokehHal3ModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 683
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/BokehHal3ModuleUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 686
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 628
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 629
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 4

    .prologue
    .line 633
    new-instance v0, Lcom/android/camera/ui/RotateTextToast;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080109

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 634
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateTextToast;->showInTime(I)V

    .line 635
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 607
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 610
    :cond_1
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 611
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 612
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 616
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 617
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 619
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 622
    iget-object v5, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/android/camera/BokehHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 640
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1490
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/BokehHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1491
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1475
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1476
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1086
    sget-object v0, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    .line 1088
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1090
    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1094
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->cancelCountDown()V

    .line 1096
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1097
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/BokehHal3ModuleUI;->removeHintToastIfConfigured()V

    .line 1102
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1103
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1104
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1106
    invoke-virtual {p0}, Lcom/android/camera/BokehHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1108
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->closeCamera()V

    .line 1109
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->resetTextureBufferSize()V

    .line 1110
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1112
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1113
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1114
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/BokehHal3Module;->mSoundPlayerLoaded:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1051
    sget-object v2, Lcom/android/camera/BokehHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1052
    iget-boolean v2, p0, Lcom/android/camera/BokehHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "BokehHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1057
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/BokehHal3Module;->mPaused:Z

    .line 1059
    invoke-virtual {p0, v5}, Lcom/android/camera/BokehHal3Module;->onReadyStateChanged(Z)V

    .line 1065
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1067
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1068
    if-eqz v1, :cond_1

    .line 1069
    invoke-direct {p0}, Lcom/android/camera/BokehHal3Module;->initSurfaceTextureConsumer()V

    .line 1070
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1073
    :cond_1
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1074
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1078
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 1079
    iget-object v2, p0, Lcom/android/camera/BokehHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1081
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
    .line 692
    iput p1, p0, Lcom/android/camera/BokehHal3Module;->mOrientation:I

    .line 693
    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/BokehHal3Module;->mUI:Lcom/android/camera/BokehHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/BokehHal3ModuleUI;->setOrientation(IZ)V

    .line 694
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

    .line 375
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    new-instance v2, Lcom/android/camera/BokehHal3Module$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/BokehHal3Module$5;-><init>(Lcom/android/camera/BokehHal3Module;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 383
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 385
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 386
    iget-object v1, p0, Lcom/android/camera/BokehHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 388
    :cond_0
    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1510
    iget-object v3, p0, Lcom/android/camera/BokehHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1511
    :try_start_0
    iget v1, p0, Lcom/android/camera/BokehHal3Module;->mScreenWidth:I

    .line 1512
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/BokehHal3Module;->mScreenHeight:I

    .line 1513
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1514
    invoke-direct {p0, v1, v0}, Lcom/android/camera/BokehHal3Module;->updatePreviewTransform(II)V

    .line 1515
    return-void

    .line 1513
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
