.class public Lcom/android/camera/ManualHal3Module;
.super Lcom/android/camera/CameraModule;
.source "ManualHal3Module.java"

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
        Lcom/android/camera/ManualHal3Module$ModuleState;
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

.field private mBrandLogoEnabled:Z

.field private mBurstController:Lcom/android/camera/burst/BurstFacade;

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

.field private mIsManualExposureTimeAuto:Z

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

.field private mState:Lcom/android/camera/ManualHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/ManualAbstractHal3UI;

.field private final mUIListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ManualHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 126
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/ManualHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 132
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/ManualHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 485
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ManualHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 486
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 490
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 134
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 155
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 159
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mHdrSceneEnabled:Z

    .line 160
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mHdrPlusEnabled:Z

    .line 161
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 167
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 173
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mWatermarkEnabled:Z

    .line 174
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mBrandLogoEnabled:Z

    .line 175
    iput-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mShutterSoundEnabled:Z

    .line 176
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mFrontCameraMirror:Z

    .line 177
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mSwitchCamera:Z

    .line 179
    iput v4, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    .line 180
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 181
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    .line 182
    iput-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mIsManualExposureTimeAuto:Z

    .line 185
    new-instance v1, Lcom/android/camera/ManualHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$1;-><init>(Lcom/android/camera/ManualHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUIListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    .line 202
    new-instance v1, Lcom/android/camera/ManualHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$2;-><init>(Lcom/android/camera/ManualHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 214
    new-instance v1, Lcom/android/camera/ManualHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$3;-><init>(Lcom/android/camera/ManualHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 329
    new-instance v1, Lcom/android/camera/ManualHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$4;-><init>(Lcom/android/camera/ManualHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 437
    sget-object v1, Lcom/android/camera/ManualHal3Module$ModuleState;->IDLE:Lcom/android/camera/ManualHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mState:Lcom/android/camera/ManualHal3Module$ModuleState;

    .line 439
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mZoomValue:F

    .line 442
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    .line 452
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    .line 461
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    .line 480
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 482
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 491
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new ManualHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 492
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    .line 493
    iput-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    .line 494
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 495
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 496
    iput-boolean p2, p0, Lcom/android/camera/ManualHal3Module;->mStickyGcamCamera:Z

    .line 497
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 498
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ManualHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/camera/ManualHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/ManualHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 113
    iput p1, p0, Lcom/android/camera/ManualHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ManualHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ManualHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/ManualHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/ManualHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/burst/BurstFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/burst/BurstFacade;)Lcom/android/camera/burst/BurstFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/burst/BurstFacade;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mState:Lcom/android/camera/ManualHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/ManualHal3Module$ModuleState;)Lcom/android/camera/ManualHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/ManualHal3Module$ModuleState;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mState:Lcom/android/camera/ManualHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ManualHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/camera/ManualHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/ManualHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mFrontCameraMirror:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mBrandLogoEnabled:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mIsManualExposureTimeAuto:Z

    return p1
.end method

.method static synthetic access$2902(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/camera/ManualHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ManualHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/ManualHal3Module;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3Module;->cancelCountDown(Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3702(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/camera/ManualHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/camera/ManualHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3902(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 113
    sget-boolean v0, Lcom/android/camera/ManualHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/ManualHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/ManualHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/camera/ManualHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/camera/ManualHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/camera/ManualHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/camera/ManualHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/ManualAbstractHal3UI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ManualHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ManualHal3Module;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method private cancelCountDown(Z)V
    .locals 2
    .param p1, "manualOnly"    # Z

    .prologue
    const/4 v1, 0x1

    .line 996
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->cancelCountDown()V

    .line 999
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1000
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1001
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1002
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ManualAbstractHal3UI;->setEditableMode(ZZ)V

    .line 1004
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2084
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "ManualHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2086
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2090
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2092
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v2, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v2}, Lcom/android/camera/burst/BurstFacade;->release()V

    .line 2094
    iput-object v4, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    .line 2098
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 2099
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2100
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2101
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2102
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2103
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2104
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2105
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2108
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2109
    invoke-virtual {p0, v5}, Lcom/android/camera/ManualHal3Module;->onReadyStateChanged(Z)V

    .line 2110
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/ManualHal3Module$17;

    invoke-direct {v3, p0}, Lcom/android/camera/ManualHal3Module$17;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2118
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2119
    return-void

    .line 2087
    :catch_0
    move-exception v0

    .line 2088
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2108
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2109
    invoke-virtual {p0, v5}, Lcom/android/camera/ManualHal3Module;->onReadyStateChanged(Z)V

    .line 2110
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/ManualHal3Module$17;

    invoke-direct {v4, p0}, Lcom/android/camera/ManualHal3Module$17;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 10
    .param p1, "orientation"    # I

    .prologue
    .line 860
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 861
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 862
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 864
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 879
    .local v8, "session":Lcom/android/camera/session/CaptureSession;
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mBrandLogoEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "WatermarkManager.getData"

    invoke-interface {v0, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v7

    .line 881
    .local v7, "guard":Lcom/android/camera/stats/profiler/Profile;
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "create watermarkViewData with Picture Size = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v9, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v9}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ManualHal3Module;->getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;

    move-result-object v6

    .line 883
    .local v6, "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    const-string v0, "BrandLogoViewData get"

    invoke-interface {v7, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 884
    if-eqz v6, :cond_2

    .line 885
    iput p1, v6, Lcom/android/camera/brandlogo/BrandLogoViewData;->mOrientation:I

    .line 886
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BrandLogoViewData = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/camera/brandlogo/BrandLogoViewData;->dump()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 887
    invoke-static {v6}, Lcom/google/common/base/Optional;->fromNullable(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-interface {v8, v0}, Lcom/android/camera/session/CaptureSession;->setBrandLogoViewData(Lcom/google/common/base/Optional;)V

    .line 892
    .end local v6    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v7    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mFrontCameraMirror:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v5, :cond_1

    .line 893
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mFrontCameraMirror:Z

    invoke-interface {v8, v0}, Lcom/android/camera/session/CaptureSession;->setMirror(Z)V

    .line 895
    :cond_1
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v8, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 896
    return-object v8

    .line 889
    .restart local v6    # "brandLogoViewData":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .restart local v7    # "guard":Lcom/android/camera/stats/profiler/Profile;
    :cond_2
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "can\'t get BrandLogoViewData."

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 945
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 946
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 947
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 948
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 949
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 950
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v0}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportHWRotate()Z

    move-result v0

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setImageHWRotate(Z)V

    .line 951
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 952
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 951
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 953
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 826
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v2

    .line 828
    .local v2, "pictureResolutionData":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    const/16 v1, 0x9

    iget-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mWatermarkEnabled:Z

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 834
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1592
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1593
    new-instance v0, Lcom/android/camera/ManualHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualHal3Module$14;-><init>(Lcom/android/camera/ManualHal3Module;)V

    .line 1622
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/ManualHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualHal3Module$15;-><init>(Lcom/android/camera/ManualHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 1096
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1097
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 1098
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
    .line 958
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 1063
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1064
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1066
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1067
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 1065
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1069
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->reopenCamera()V

    .line 1071
    return-void

    .line 1069
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

    .line 1774
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1783
    :cond_0
    :goto_0
    return v1

    .line 1779
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1780
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1783
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

    .line 1781
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
    .line 1495
    const/4 v3, 0x0

    .line 1496
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/ManualHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1520
    :cond_0
    :goto_0
    return-void

    .line 1499
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1500
    iput-wide p2, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    .line 1501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1506
    :pswitch_1
    const/4 v3, 0x1

    .line 1509
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1510
    iget-wide v8, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1511
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1512
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1513
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

    .line 1514
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1513
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1515
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1516
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1513
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1496
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

    .line 1677
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mState:Lcom/android/camera/ManualHal3Module$ModuleState;

    sget-object v2, Lcom/android/camera/ManualHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/ManualHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1678
    sget-object v1, Lcom/android/camera/ManualHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/ManualHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/ManualHal3Module;->mState:Lcom/android/camera/ManualHal3Module$ModuleState;

    .line 1680
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1681
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1682
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1683
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1684
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1685
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/ManualAbstractHal3UI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1686
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualAbstractHal3UI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1687
    return-void

    .line 1685
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 22

    .prologue
    .line 1816
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "ManualHal3Module.openCameraAndStartPreview()"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v21

    .line 1824
    .local v21, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

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

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 1836
    sget-object v4, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Camera already open, not re-opening."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1838
    const-string v4, "Camera is already open"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2081
    :goto_0
    return-void

    .line 1842
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1843
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1848
    .local v15, "settingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1850
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->MANUAL:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ManualHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 1856
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1858
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1859
    sget-object v4, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1860
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1861
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1851
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :catch_1
    move-exception v20

    .line 1852
    .local v20, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1865
    .end local v20    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/camera/ManualHal3Module$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lcom/android/camera/ManualHal3Module$16;-><init>(Lcom/android/camera/ManualHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1093
    :goto_0
    return-void

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_1

    .line 1079
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1080
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    .line 1084
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/ManualHal3Module$11;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$11;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1704
    sget-boolean v0, Lcom/android/camera/ManualHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1705
    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1704
    :goto_0
    return v0

    .line 1705
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2159
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updatePreviewBufferSize()V

    .line 2160
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

    .line 1389
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1396
    sget-object v3, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "ManualHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1401
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1402
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1409
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1410
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1411
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1414
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1415
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1416
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    .line 1418
    :cond_3
    iget v3, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1419
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1422
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1423
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1426
    :cond_4
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1429
    iget v3, p0, Lcom/android/camera/ManualHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1430
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1433
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1434
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1436
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1404
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1405
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1452
    :goto_0
    return-void

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2125
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2126
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2139
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 2132
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2133
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->foldAllOptions()V

    .line 2134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3Module;->cancelCountDown(Z)V

    .line 2135
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->clearFaces()V

    .line 2136
    iput-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mSwitchCamera:Z

    .line 2137
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->initSurfaceTextureConsumer()V

    .line 2138
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1659
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1660
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1664
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1665
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1666
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1667
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1669
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1670
    return-void
.end method

.method private takePictureNow()V
    .locals 13

    .prologue
    .line 837
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 838
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 853
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 843
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 844
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/ManualHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v12

    .line 848
    .local v12, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 849
    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 850
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/ManualHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v11}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFFZ)V

    .line 851
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v12}, Lcom/android/camera/ManualHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 852
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v12}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 850
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 586
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 587
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 588
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 594
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 590
    :catch_0
    move-exception v2

    .line 593
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1792
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1810
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1797
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    .line 1798
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    .line 1802
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1806
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    .line 1807
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    .line 1809
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1107
    :cond_0
    monitor-exit v1

    .line 1108
    return-void

    .line 1107
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
    .line 1694
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ManualHal3Module;->updatePreviewTransform(IIZ)V

    .line 1695
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1714
    sget-object v2, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1716
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1717
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1719
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1721
    monitor-exit v3

    .line 1763
    :goto_0
    return-void

    .line 1724
    :cond_0
    iput v0, p0, Lcom/android/camera/ManualHal3Module;->mDisplayRotation:I

    .line 1725
    iput p1, p0, Lcom/android/camera/ManualHal3Module;->mScreenWidth:I

    .line 1726
    iput p2, p0, Lcom/android/camera/ManualHal3Module;->mScreenHeight:I

    .line 1727
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updatePreviewBufferDimension()V

    .line 1740
    sget-boolean v2, Lcom/android/camera/ManualHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1742
    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1743
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1746
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1762
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

    .line 1748
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1753
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1754
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1755
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1757
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/ManualHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/ManualHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/ManualHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1760
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1185
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1186
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1188
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 1192
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1195
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 1196
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1199
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1200
    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1201
    return-void

    .line 1199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 1291
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1292
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1293
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v5

    iput-object v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1295
    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v3

    .line 1296
    .local v3, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v3, :cond_1

    move v1, v4

    .line 1297
    .local v1, "isLowPower":Z
    :goto_0
    sget-object v5, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v5}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v8}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v8

    const-string v9, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v7, v8, v9}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1298
    .local v2, "isManualExposureTimeAuto":Z
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    move v5, v6

    :goto_1
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1299
    sget-object v5, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isLowPower = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1300
    sget-object v5, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isManualExposureTimeAuto = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1301
    sget-object v5, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1303
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1304
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1305
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1306
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1307
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1308
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1310
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1311
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1312
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1314
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1315
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1317
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1318
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v5

    sget-object v7, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v5, v7, :cond_0

    move v4, v6

    :cond_0
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1319
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1321
    iput-boolean v6, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 1323
    iget-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1324
    return-object v0

    .line 1296
    .end local v1    # "isLowPower":Z
    .end local v2    # "isManualExposureTimeAuto":Z
    :cond_1
    invoke-virtual {v3}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    .restart local v2    # "isManualExposureTimeAuto":Z
    :cond_2
    move v5, v4

    .line 1298
    goto :goto_1
.end method

.method public getBrandLogoViewData(Z)Lcom/android/camera/brandlogo/BrandLogoViewData;
    .locals 13
    .param p1, "previewOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 899
    const/high16 v12, 0x3f800000    # 1.0f

    .line 900
    .local v12, "scale":F
    if-eqz p1, :cond_3

    .line 901
    const/high16 v12, 0x3f800000    # 1.0f

    .line 905
    :goto_0
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/android/camera/util/ProductModelUtil;->getBrandLogo(Z)I

    move-result v2

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 906
    .local v0, "oribitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 907
    .local v11, "left":I
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    .line 910
    .local v7, "bottom":I
    iget v2, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    rem-int/lit16 v2, v2, 0xb4

    if-nez v2, :cond_5

    .line 911
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 912
    .local v8, "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v9, v2, v3

    .line 919
    .local v9, "childCenterY":F
    :goto_2
    new-instance v10, Lcom/android/camera/brandlogo/BrandLogoViewData;

    invoke-direct {v10}, Lcom/android/camera/brandlogo/BrandLogoViewData;-><init>()V

    .line 920
    .local v10, "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    mul-float v2, v8, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterX:F

    .line 921
    mul-float v2, v9, v12

    iput v2, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mCenterY:F

    .line 923
    if-eqz v0, :cond_0

    .line 924
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 925
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v12, v12}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 926
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    .line 928
    .end local v5    # "matrix":Landroid/graphics/Matrix;
    :cond_0
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v1, v0, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 929
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 930
    const/4 v0, 0x0

    .line 933
    :cond_1
    int-to-float v1, v11

    mul-float/2addr v1, v12

    float-to-int v1, v1

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->offset:I

    .line 934
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 935
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/camera/util/FileUtil;->bitmapToNV21A(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mNV21A:[B

    .line 936
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoWidth:I

    .line 937
    iget-object v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v10, Lcom/android/camera/brandlogo/BrandLogoViewData;->logoHeight:I

    .line 940
    :cond_2
    return-object v10

    .line 903
    .end local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .end local v7    # "bottom":I
    .end local v8    # "childCenterX":F
    .end local v9    # "childCenterY":F
    .end local v10    # "data":Lcom/android/camera/brandlogo/BrandLogoViewData;
    .end local v11    # "left":I
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v12, v2, v3

    goto/16 :goto_0

    :cond_4
    move v2, v1

    .line 905
    goto/16 :goto_1

    .line 914
    .restart local v0    # "oribitmap":Landroid/graphics/Bitmap;
    .restart local v7    # "bottom":I
    .restart local v11    # "left":I
    :cond_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v11

    int-to-float v8, v2

    .line 915
    .restart local v8    # "childCenterX":F
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v9, v2, v3

    .restart local v9    # "childCenterY":F
    goto/16 :goto_2
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 389
    sget-object v0, Lcom/android/camera/ManualHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 397
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 391
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 393
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 395
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 389
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
    .line 1226
    new-instance v0, Lcom/android/camera/ManualHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/ManualHal3Module$12;-><init>(Lcom/android/camera/ManualHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1540
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1539
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1215
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1218
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1219
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1220
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1219
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1222
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v1, Lcom/android/camera/ManualHal3Module$6;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$6;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 427
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    const/4 v4, 0x0

    .line 599
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "ManualHal3Module.init"

    invoke-interface {v3, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    .line 600
    .local v2, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 602
    sget-object v3, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init UseAutotransformUiLayout = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/camera/ManualHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 604
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 605
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_id_key"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 604
    invoke-direct {p0, v3}, Lcom/android/camera/ManualHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 606
    const-string v3, "get Camera Facing"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 607
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->updateCameraCharacteristics()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    .line 608
    const-string v3, "update Camera Characteristics"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 609
    iget-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    if-eqz v3, :cond_1

    .line 610
    sget-object v3, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 611
    const-string v3, "Error"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 646
    :goto_1
    return-void

    :cond_0
    move v3, v4

    .line 607
    goto :goto_0

    .line 615
    :cond_1
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqProModeUI()Z

    move-result v3

    if-nez v3, :cond_2

    .line 616
    new-instance v3, Lcom/android/camera/ManualHal3ModuleUI;

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUIListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    invoke-direct {v3, p1, v5, v6}, Lcom/android/camera/ManualHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;)V

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    .line 617
    const-string v3, "ManualHal3ModuleUI.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 625
    :goto_2
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    .line 626
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    iget v5, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    invoke-virtual {v3, v5, v4}, Lcom/android/camera/ManualAbstractHal3UI;->setOrientation(IZ)V

    .line 627
    const-string v3, "mUI.setOrientation done"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 629
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 630
    const-string v3, "PreviewStatusListener.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 632
    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v4

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 634
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    const-string v3, "PreviewSurfaceTexture.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 637
    const v3, 0x7f0f00ba

    invoke-virtual {p1, v3}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 638
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v3, Lcom/android/camera/ManualHal3Module$8;

    invoke-direct {v3, p0}, Lcom/android/camera/ManualHal3Module$8;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 645
    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 619
    .end local v0    # "cancelButton":Landroid/view/View;
    :cond_2
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 620
    .local v1, "enabled":Z
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    invoke-virtual {v3, v5, v6}, Lcom/android/camera/settings/SettingsManager;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v3, Lcom/android/camera/ManualHal3ProModuleUI;

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUIListener:Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;

    invoke-direct {v3, p1, v5, v6, v1}, Lcom/android/camera/ManualHal3ProModuleUI;-><init>(Lcom/android/camera/CameraActivity;Landroid/view/View;Lcom/android/camera/ManualAbstractHal3UI$ManualHal3ModuleUIListener;Z)V

    iput-object v3, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    .line 622
    const-string v3, "ManualHal3ProModuleUI.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    goto :goto_2

    .line 634
    .end local v1    # "enabled":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 1329
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2164
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1211
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 964
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 965
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 966
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 969
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->takePictureNow()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 502
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 503
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/ManualHal3Module$7;

    invoke-direct {v1, p0}, Lcom/android/camera/ManualHal3Module$7;-><init>(Lcom/android/camera/ManualHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 567
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractHal3UI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v2}, Lcom/android/camera/ManualAbstractHal3UI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 570
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 571
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 572
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualAbstractHal3UI;->loadModuleLayout(Lcom/android/camera/one/OneCameraCharacteristics;)V

    .line 580
    :cond_1
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1459
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1491
    :cond_0
    :goto_0
    return-void

    .line 1460
    :cond_1
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AF status is state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1461
    sget-object v0, Lcom/android/camera/ManualHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1488
    :goto_1
    sget-boolean v0, Lcom/android/camera/ManualHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1489
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/ManualHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1463
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1464
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1467
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1470
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1474
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1478
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1481
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1461
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

    .line 1345
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1362
    :cond_0
    :goto_0
    return v0

    .line 1346
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1362
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1349
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v1}, Lcom/android/camera/ManualAbstractHal3UI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1350
    invoke-direct {p0, v0}, Lcom/android/camera/ManualHal3Module;->cancelCountDown(Z)V

    goto :goto_0

    .line 1351
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1353
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1354
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1360
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/camera/ManualHal3Module;->handleKeyDownEventForVolumeKey(Landroid/view/KeyEvent;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;)Z

    move-result v0

    goto :goto_0

    .line 1346
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1334
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->isCountingDown()Z

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v4, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    iget-object v5, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    new-instance v7, Lcom/android/camera/ManualHal3Module$13;

    invoke-direct {v7, p0}, Lcom/android/camera/ManualHal3Module$13;-><init>(Lcom/android/camera/ManualHal3Module;)V

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/camera/ManualHal3Module;->handleKeyLongPressForBurstShot(IZLcom/android/camera/one/OneCamera;Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Lcom/android/camera/burst/BurstFacade;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1367
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1381
    :cond_0
    :goto_0
    return v0

    .line 1368
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1381
    const/4 v0, 0x0

    goto :goto_0

    .line 1371
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1372
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1373
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1374
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->onShutterButtonClick()V

    .line 1377
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    goto :goto_0

    .line 1368
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
    .line 1205
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1206
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1556
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1551
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1570
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1565
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 1008
    iget-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1009
    :cond_0
    const/4 v1, 0x0

    .line 1011
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_1
    new-instance v2, Lcom/android/camera/ManualHal3Module$10;

    invoke-direct {v2, p0}, Lcom/android/camera/ManualHal3Module$10;-><init>(Lcom/android/camera/ManualHal3Module;)V

    .line 1048
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 1049
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1012
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1014
    const/4 v1, 0x1

    goto :goto_1

    .line 1051
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
    const/4 v1, 0x1

    .line 1524
    if-eqz p1, :cond_0

    .line 1525
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1526
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0, v1, v1}, Lcom/android/camera/ManualAbstractHal3UI;->setEditableMode(ZZ)V

    .line 1528
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    :goto_0
    return-void

    .line 1531
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1532
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1533
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

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

    .line 974
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 975
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 976
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 979
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 980
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 981
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 982
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 983
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    .line 986
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 987
    if-ne p1, v3, :cond_5

    .line 988
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 989
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 990
    :cond_6
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1057
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1059
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->takePictureNow()V

    .line 1060
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 10
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 345
    const-string v7, "pref_camera_screen_key"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 346
    const-string v7, "default_scope"

    invoke-virtual {p1, v7, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 347
    .local v0, "currentValue":I
    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 348
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x7f0803c4

    .line 349
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_0

    const v7, 0x7f0803c6

    .line 350
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v0, v7, :cond_2

    :cond_0
    const/4 v3, 0x1

    .line 351
    .local v3, "isPIPOn":Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-nez v7, :cond_3

    if-eqz v3, :cond_3

    .line 352
    const v6, 0x7f0b0011

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 353
    .local v1, "index":I
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    sget-object v7, Lcom/android/camera/ui/PreviewTransitionView$TransitionType;->STATIC_BLUR:Lcom/android/camera/ui/PreviewTransitionView$TransitionType;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/app/CameraAppUI;->showPreviewTransition(Lcom/android/camera/ui/PreviewTransitionView$TransitionType;Lcom/android/camera/app/CameraAppUI$AnimationFinishedListener;)V

    .line 354
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6, v1}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 385
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v3    # "isPIPOn":Z
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "currentValue":I
    .restart local v4    # "res":Landroid/content/res/Resources;
    :cond_2
    move v3, v6

    .line 350
    goto :goto_0

    .line 363
    .end local v0    # "currentValue":I
    .end local v4    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v7, "pref_brand_logo_show_key"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 364
    const-string v7, "default_scope"

    invoke-virtual {p1, v7, p2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/ManualHal3Module;->mBrandLogoEnabled:Z

    .line 365
    sget-object v7, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "brand logo state is changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/camera/ManualHal3Module;->mBrandLogoEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 367
    :cond_4
    const-string v7, "pref_camera_manual_focus_mode"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_camera_whitebalance_mode_key"

    .line 368
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_camera_manual_exposure_key"

    .line 369
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_camera_manual_exposure_time_key"

    .line 370
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "pref_camera_manual_exposure_iso"

    .line 371
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    :cond_5
    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v7, :cond_1

    .line 373
    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v7}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v8}, Lcom/android/camera/CameraActivity;->getCameraScope()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, p2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v7, p2, v5}, Lcom/android/camera/ManualAbstractHal3UI;->updateManualContentUI(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v7, "pref_camera_manual_exposure_time_key"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 377
    sget-object v7, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->AUTO:Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;

    invoke-virtual {v7}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters$ManualExpTime;->encodeSettingsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 378
    .local v2, "isManualExposureTimeAuto":Z
    iget-boolean v7, p0, Lcom/android/camera/ManualHal3Module;->mIsManualExposureTimeAuto:Z

    if-eq v7, v2, :cond_1

    .line 379
    iput-boolean v2, p0, Lcom/android/camera/ManualHal3Module;->mIsManualExposureTimeAuto:Z

    .line 380
    iget-object v7, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/android/camera/app/CameraAppUI;->applyModuleSpecs(Lcom/android/camera/hardware/HardwareSpec;Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;Z)V

    goto/16 :goto_1
.end method

.method public onShutterButtonClick()V
    .locals 6

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 811
    :goto_0
    return-void

    .line 768
    :cond_0
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 770
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v1, :cond_2

    .line 771
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v1}, Lcom/android/camera/burst/BurstFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    :cond_1
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mBurstController busy"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 777
    :cond_2
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_3

    .line 778
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 782
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_4

    .line 783
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 787
    :cond_4
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    .line 789
    .local v2, "storageSpaceBytes":J
    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_5

    .line 790
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 794
    :cond_5
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 796
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 798
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 799
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 800
    .local v0, "countDownDuration":I
    if-lez v0, :cond_6

    .line 802
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 803
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 804
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 805
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v1, p0}, Lcom/android/camera/ManualAbstractHal3UI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 806
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v1, v0}, Lcom/android/camera/ManualAbstractHal3UI;->startCountdown(I)V

    goto/16 :goto_0

    .line 809
    :cond_6
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 751
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 752
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    .line 756
    :cond_0
    return-void
.end method

.method public onShutterButtonLongPressed()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 650
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-nez v1, :cond_0

    .line 702
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/ManualHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 653
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v2, "default_scope"

    const-string v3, "pref_shutter_control_boolean_key"

    .line 660
    invoke-virtual {v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 661
    .local v10, "enableShutterControl":Z
    if-nez v10, :cond_2

    .line 662
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "SettingsManager not enable ShutterControl"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 666
    :cond_2
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_3

    .line 667
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonLongPressed ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 671
    :cond_3
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 673
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_4

    .line 674
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonLongPressed ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 678
    :cond_4
    sub-long v8, v12, v6

    .line 679
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonLongPressed - remainingStorageBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 682
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 683
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v11

    .line 685
    .local v11, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/ManualHal3Module$9;

    invoke-direct {v3, p0}, Lcom/android/camera/ManualHal3Module$9;-><init>(Lcom/android/camera/ManualHal3Module;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->BURST:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 695
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 696
    invoke-interface {v11}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 685
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/burst/BurstFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 698
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v11    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 699
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start burst"

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonSwiped(I)V
    .locals 9
    .param p1, "swiped"    # I

    .prologue
    .line 706
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqProModeUI()Z

    move-result v6

    if-nez v6, :cond_1

    .line 747
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v3

    .line 708
    .local v3, "orientation":I
    invoke-static {p1, v3}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v2

    .line 709
    .local v2, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v2, :cond_0

    .line 712
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v6}, Lcom/android/camera/ManualAbstractHal3UI;->getEditableMode()Z

    move-result v1

    .line 713
    .local v1, "isEditableMode":Z
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v1, :cond_2

    .line 714
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v5

    .line 715
    .local v5, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_manual_exposure_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_manual_exposure_time_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_manual_exposure_iso"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_manual_focus_mode"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_whitebalance_mode_key"

    invoke-virtual {v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->setToDefault(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v5    # "settingsManager":Lcom/android/camera/settings/SettingsManager;
    :cond_2
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/android/camera/ManualAbstractHal3UI;->setEditableMode(ZZ)V

    .line 732
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_0

    if-nez v1, :cond_0

    .line 734
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v6}, Lcom/android/camera/ManualAbstractHal3UI;->getEditSingleRing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 735
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v6}, Lcom/android/camera/ManualAbstractHal3UI;->foldAllOptions()V

    goto :goto_0

    .line 739
    :cond_3
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 740
    .local v0, "index":I
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToLastModuleId(I)I

    move-result v4

    .line 741
    .local v4, "quickSwitchTo":I
    if-eq v0, v4, :cond_0

    iget-boolean v6, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    if-nez v6, :cond_0

    .line 744
    iget-object v6, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto/16 :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/camera/ManualHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 761
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 1560
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1545
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1546
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1146
    sget-object v0, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1147
    iput-boolean v3, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    .line 1148
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1150
    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1156
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mBurstController:Lcom/android/camera/burst/BurstFacade;

    invoke-interface {v0}, Lcom/android/camera/burst/BurstFacade;->stopBurst()Z

    .line 1160
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/camera/ManualHal3Module;->cancelCountDown(Z)V

    .line 1162
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_3

    .line 1163
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1166
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0}, Lcom/android/camera/ManualAbstractHal3UI;->onPause()V

    .line 1167
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1168
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1169
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1171
    invoke-virtual {p0}, Lcom/android/camera/ManualHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1173
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->closeCamera()V

    .line 1174
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->resetTextureBufferSize()V

    .line 1175
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1177
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1178
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1179
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ManualHal3Module;->mSoundPlayerLoaded:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1112
    sget-object v2, Lcom/android/camera/ManualHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1113
    iget-boolean v2, p0, Lcom/android/camera/ManualHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1142
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "ManualHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1118
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/ManualHal3Module;->mPaused:Z

    .line 1120
    invoke-virtual {p0, v5}, Lcom/android/camera/ManualHal3Module;->onReadyStateChanged(Z)V

    .line 1126
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1128
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1129
    if-eqz v1, :cond_1

    .line 1130
    invoke-direct {p0}, Lcom/android/camera/ManualHal3Module;->initSurfaceTextureConsumer()V

    .line 1131
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1134
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1135
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1138
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 1139
    iget-object v2, p0, Lcom/android/camera/ManualHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1141
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
    .line 815
    iput p1, p0, Lcom/android/camera/ManualHal3Module;->mOrientation:I

    .line 816
    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ManualHal3Module;->mUI:Lcom/android/camera/ManualAbstractHal3UI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ManualAbstractHal3UI;->setOrientation(IZ)V

    .line 817
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

    .line 403
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    new-instance v2, Lcom/android/camera/ManualHal3Module$5;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ManualHal3Module$5;-><init>(Lcom/android/camera/ManualHal3Module;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lcom/android/camera/app/AppController;->startFlashAnimationBeforeTakePicture(Ljava/lang/Runnable;)Z

    move-result v0

    .line 411
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 413
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v3}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 414
    iget-object v1, p0, Lcom/android/camera/ManualHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 416
    :cond_0
    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1579
    iget-object v3, p0, Lcom/android/camera/ManualHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1580
    :try_start_0
    iget v1, p0, Lcom/android/camera/ManualHal3Module;->mScreenWidth:I

    .line 1581
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/ManualHal3Module;->mScreenHeight:I

    .line 1582
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    invoke-direct {p0, v1, v0}, Lcom/android/camera/ManualHal3Module;->updatePreviewTransform(II)V

    .line 1584
    return-void

    .line 1582
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
