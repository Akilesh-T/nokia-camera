.class public Lcom/android/camera/TimelapseHal3Module;
.super Lcom/android/camera/CameraModule;
.source "TimelapseHal3Module.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;
.implements Lcom/android/camera/one/OneCamera$PictureCallback;
.implements Lcom/android/camera/one/OneCamera$ScreenFlashController;
.implements Lcom/android/camera/one/OneCamera$FocusStateListener;
.implements Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;
.implements Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;
.implements Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;
.implements Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;
.implements Lcom/android/camera/remote/RemoteCameraModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/TimelapseHal3Module$ModuleState;
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

.field private final mHandler:Landroid/os/Handler;

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsSecureCamera:Z

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

.field private mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

.field private final mUIListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

.field private mVideoController:Lcom/android/camera/video/VideoFacade;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 135
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "TLHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 137
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/TimelapseHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 143
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/TimelapseHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/TimelapseHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 459
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 463
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 145
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mHandler:Landroid/os/Handler;

    .line 147
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 168
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 172
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mHdrSceneEnabled:Z

    .line 173
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mHdrPlusEnabled:Z

    .line 174
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 186
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mWatermarkEnabled:Z

    .line 187
    iput-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mShutterSoundEnabled:Z

    .line 189
    iput v4, p0, Lcom/android/camera/TimelapseHal3Module;->mOrientation:I

    .line 190
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 191
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mFirstPreviewArrived:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mSwitchCamera:Z

    .line 195
    new-instance v1, Lcom/android/camera/TimelapseHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$1;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mUIListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

    .line 212
    new-instance v1, Lcom/android/camera/TimelapseHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$2;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 224
    new-instance v1, Lcom/android/camera/TimelapseHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$3;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 326
    new-instance v1, Lcom/android/camera/TimelapseHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$4;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 415
    sget-object v1, Lcom/android/camera/TimelapseHal3Module$ModuleState;->IDLE:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    .line 417
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mZoomValue:F

    .line 420
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    .line 434
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    .line 453
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 455
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 464
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new TimelapseHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 465
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mFirstPreviewArrived:Z

    .line 466
    iput-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    .line 467
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 468
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 469
    iput-boolean p2, p0, Lcom/android/camera/TimelapseHal3Module;->mStickyGcamCamera:Z

    .line 470
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 471
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/TimelapseHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget v0, p0, Lcom/android/camera/TimelapseHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/TimelapseHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 124
    iput p1, p0, Lcom/android/camera/TimelapseHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/TimelapseHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/video/VideoFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Lcom/android/camera/video/VideoFacade;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/TimelapseHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/TimelapseHal3Module$ModuleState;)Lcom/android/camera/TimelapseHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Lcom/android/camera/TimelapseHal3Module$ModuleState;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/TimelapseHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/TimelapseHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/TimelapseHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/TimelapseHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/TimelapseHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/camera/TimelapseHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/TimelapseHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/TimelapseHal3Module;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/camera/TimelapseHal3Module;->playSound(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/TimelapseHal3Module;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/camera/TimelapseHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/TimelapseHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/TimelapseHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/TimelapseHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/TimelapseHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/camera/TimelapseHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/TimelapseHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/TimelapseHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/TimelapseHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/camera/TimelapseHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/TimelapseHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/TimelapseHal3Module;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapseHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapseHal3ModuleUI;->cancelCountDown()V

    .line 769
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 770
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 771
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 773
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2012
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "TimelapseHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2014
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2018
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2020
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_0

    .line 2021
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 2022
    iput-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    .line 2024
    :cond_0
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2025
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2028
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_2

    .line 2029
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2030
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2031
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2032
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2033
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2034
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2035
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2038
    :cond_2
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2039
    invoke-virtual {p0, v5}, Lcom/android/camera/TimelapseHal3Module;->onReadyStateChanged(Z)V

    .line 2040
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/TimelapseHal3Module$17;

    invoke-direct {v3, p0}, Lcom/android/camera/TimelapseHal3Module$17;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2048
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2049
    return-void

    .line 2015
    :catch_0
    move-exception v0

    .line 2016
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2038
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2039
    invoke-virtual {p0, v5}, Lcom/android/camera/TimelapseHal3Module;->onReadyStateChanged(Z)V

    .line 2040
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/TimelapseHal3Module$17;

    invoke-direct {v4, p0}, Lcom/android/camera/TimelapseHal3Module$17;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 727
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 728
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 729
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 730
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 733
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setForceHideThumbnail(Z)V

    .line 735
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 736
    return-object v6
.end method

.method private createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 740
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-nez v0, :cond_1

    .line 757
    :cond_0
    :goto_0
    return-object v2

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->getSessionTime()J

    move-result-wide v4

    .line 742
    .local v4, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 743
    .local v3, "profile":Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 748
    .local v6, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 750
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 752
    .local v8, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 753
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v9, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v7, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 752
    invoke-interface {v8, v2, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 755
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/UsageStatistics;->setCurrentMode(I)V

    move-object v2, v8

    .line 757
    goto :goto_0
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 690
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 691
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 693
    .local v0, "flashSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 694
    .local v1, "gridLinesOn":Z
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 695
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v2, v3

    .line 700
    .local v2, "timerDuration":F
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1368
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1369
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$13;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    .line 1398
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$14;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2077
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1315
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1316
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$11;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$11;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    .line 1338
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$12;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 843
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 845
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
    .line 762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1438
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$15;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    return-object v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 813
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 814
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 812
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 816
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 817
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->reopenCamera()V

    .line 818
    return-void

    .line 816
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

    .line 1579
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1588
    :cond_0
    :goto_0
    return v1

    .line 1584
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1585
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1588
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

    .line 1586
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
    .line 1216
    const/4 v3, 0x0

    .line 1217
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/TimelapseHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1242
    :cond_0
    :goto_0
    return-void

    .line 1220
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1221
    iput-wide p2, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1227
    :pswitch_1
    const/4 v3, 0x1

    .line 1230
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1231
    iget-wide v8, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1232
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1233
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1234
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

    .line 1235
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1234
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1236
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1237
    iget-object v7, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/TimelapseHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1238
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1234
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1217
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

    .line 1482
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    sget-object v2, Lcom/android/camera/TimelapseHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1483
    sget-object v1, Lcom/android/camera/TimelapseHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mState:Lcom/android/camera/TimelapseHal3Module$ModuleState;

    .line 1485
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1486
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1487
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1488
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1489
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1490
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/TimelapseHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1491
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/TimelapseHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1492
    return-void

    .line 1490
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 24

    .prologue
    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "TimelapseHal3Module.openCameraAndStartPreview()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v20

    .line 1630
    .local v20, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1632
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to acquire camera-open lock."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    :catch_0
    move-exception v17

    .line 1635
    .local v17, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1638
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1640
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1642
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Camera already open, not re-opening."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1644
    const-string v2, "Camera is already open"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2009
    :goto_0
    return-void

    .line 1648
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v16

    .line 1649
    .local v16, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1651
    .local v13, "cameraSettingScope":Ljava/lang/String;
    const/16 v19, -0x1

    .line 1652
    .local v19, "extraVideoQuality":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 1653
    .local v21, "intent":Landroid/content/Intent;
    if-eqz v21, :cond_2

    const-string v2, "android.intent.extra.videoQuality"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1654
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1657
    :cond_2
    new-instance v23, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v23 .. v23}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1663
    .local v23, "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/android/camera/settings/ResolutionSetting;->getVideoProfile(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Landroid/media/CamcorderProfile;

    move-result-object v15

    .line 1664
    .local v15, "camcorderProfile":Landroid/media/CamcorderProfile;
    const-string v2, "mCamcorderProfile.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1665
    new-instance v22, Lcom/android/camera/video/PersistentInputSurface;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v15}, Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V

    .line 1666
    .local v22, "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    const-string v2, "PersistentInputSurface.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1668
    const-string v2, "mPictureSize.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1669
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->TIME_LAPSE:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    const/4 v9, 0x0

    new-instance v10, Landroid/util/Range;

    iget v11, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/TimelapseHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1678
    .local v6, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v2, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1680
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-eqz v2, :cond_3

    .line 1681
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Abort Camera Opened due to Module Paused"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1683
    const-string v2, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1672
    .end local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v22    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :catch_1
    move-exception v18

    .line 1673
    .local v18, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1674
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1675
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1687
    .end local v18    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .restart local v22    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v2, Lcom/android/camera/TimelapseHal3Module$16;

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v23

    move-object v7, v15

    move-object/from16 v8, v22

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/TimelapseHal3Module$16;-><init>(Lcom/android/camera/TimelapseHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0, v10, v2}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private playSound(Z)V
    .locals 2
    .param p1, "recordStarted"    # Z

    .prologue
    .line 2114
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mShutterSoundEnabled:Z

    if-nez v0, :cond_1

    .line 2119
    :cond_0
    :goto_0
    return-void

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 2117
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 840
    :goto_0
    return-void

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 826
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 827
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 831
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/TimelapseHal3Module$9;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$9;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1509
    sget-boolean v0, Lcom/android/camera/TimelapseHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1510
    invoke-direct {p0, v0}, Lcom/android/camera/TimelapseHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1509
    :goto_0
    return v0

    .line 1510
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2088
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewBufferSize()V

    .line 2089
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

    .line 1110
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1116
    :cond_1
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1117
    sget-object v3, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "TimelapseHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_2
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1122
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1123
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1130
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1131
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1132
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1135
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1136
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1137
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    .line 1139
    :cond_3
    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1140
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1143
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1144
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1147
    :cond_4
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1150
    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1151
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1154
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1155
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1157
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1125
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1126
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1173
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2055
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2056
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2059
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 2062
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2063
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->cancelCountDown()V

    .line 2064
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapseHal3ModuleUI;->clearFaces()V

    .line 2065
    iput-boolean v3, p0, Lcom/android/camera/TimelapseHal3Module;->mSwitchCamera:Z

    .line 2066
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->initSurfaceTextureConsumer()V

    .line 2067
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1464
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1465
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1469
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1470
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1471
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1472
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1474
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1475
    return-void
.end method

.method private takePictureNow()V
    .locals 12

    .prologue
    .line 703
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 704
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 719
    :goto_0
    return-void

    .line 708
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 710
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/TimelapseHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 714
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 715
    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 716
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/TimelapseHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V

    .line 717
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v11}, Lcom/android/camera/TimelapseHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 718
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v11}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 716
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 533
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 534
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 536
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 542
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 538
    :catch_0
    move-exception v2

    .line 541
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1597
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1601
    :cond_0
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1602
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    .line 1603
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    .line 1604
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickVideoPreviewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1608
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1612
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    .line 1613
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    .line 1615
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 849
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 854
    :cond_0
    monitor-exit v1

    .line 855
    return-void

    .line 854
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
    .line 1499
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewTransform(IIZ)V

    .line 1500
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1519
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1521
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1522
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1524
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1526
    monitor-exit v3

    .line 1568
    :goto_0
    return-void

    .line 1529
    :cond_0
    iput v0, p0, Lcom/android/camera/TimelapseHal3Module;->mDisplayRotation:I

    .line 1530
    iput p1, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenWidth:I

    .line 1531
    iput p2, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenHeight:I

    .line 1532
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewBufferDimension()V

    .line 1545
    sget-boolean v2, Lcom/android/camera/TimelapseHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1547
    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1548
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1551
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1567
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

    .line 1553
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1558
    :cond_3
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1559
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1560
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1562
    :cond_4
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1565
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 929
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 932
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 935
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 936
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 937
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 939
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    iput-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 941
    return-void

    .line 939
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

    const/4 v3, 0x0

    .line 1030
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1031
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1032
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1034
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 1035
    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1036
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_1

    move v1, v3

    .line 1037
    .local v1, "isLowPower":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v4, v6, :cond_2

    if-nez v1, :cond_2

    move v4, v5

    :goto_1
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 1038
    sget-object v4, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isLowPower = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1039
    sget-object v4, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    invoke-static {v4, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1041
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 1042
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1044
    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportedSurroundSound()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_3

    :cond_0
    move v4, v5

    :goto_2
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1045
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 1047
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 1048
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1050
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1051
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1053
    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v5

    :goto_3
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 1054
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1055
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 1056
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mIsSecureCamera:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_4
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1057
    iget-boolean v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1058
    return-object v0

    .line 1036
    .end local v1    # "isLowPower":Z
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_2
    move v4, v3

    .line 1037
    goto/16 :goto_1

    :cond_3
    move v4, v3

    .line 1044
    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    move v4, v3

    .line 1053
    goto :goto_3

    :cond_6
    move v4, v5

    goto :goto_3

    :cond_7
    move v5, v3

    .line 1056
    goto :goto_4
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 360
    sget-object v0, Lcom/android/camera/TimelapseHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 368
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 366
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 360
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
    .line 965
    new-instance v0, Lcom/android/camera/TimelapseHal3Module$10;

    invoke-direct {v0, p0}, Lcom/android/camera/TimelapseHal3Module$10;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1262
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08027b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1261
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 955
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 958
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 959
    const-string v0, "PhotoModule"

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 547
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "TimelapseHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 548
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 549
    iput-boolean p2, p0, Lcom/android/camera/TimelapseHal3Module;->mIsSecureCamera:Z

    .line 551
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/TimelapseHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 553
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 554
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 553
    invoke-direct {p0, v2}, Lcom/android/camera/TimelapseHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 555
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 556
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    .line 557
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 558
    iget-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_1

    .line 559
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 560
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 583
    :goto_1
    return-void

    .line 556
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 564
    :cond_1
    new-instance v2, Lcom/android/camera/TimelapseHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mUIListener:Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/TimelapseHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/TimelapseHal3ModuleUI$VideoModuleUIListener;)V

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    .line 565
    const-string v2, "TimelapseHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 566
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 567
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 570
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 571
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 574
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 575
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/TimelapseHal3Module$6;

    invoke-direct {v2, p0}, Lcom/android/camera/TimelapseHal3Module$6;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 582
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 571
    .end local v0    # "cancelButton":Landroid/view/View;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 1063
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2093
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2107
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2108
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    move-result v0

    .line 2110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 951
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 475
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 476
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/TimelapseHal3Module$5;

    invoke-direct {v1, p0}, Lcom/android/camera/TimelapseHal3Module$5;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 514
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/TimelapseHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/TimelapseHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 517
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 518
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 519
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 521
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/TimelapseHal3ModuleUI;->loadModuleLayout()V

    .line 528
    :cond_1
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1182
    sget-object v0, Lcom/android/camera/TimelapseHal3Module$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1209
    :goto_1
    sget-boolean v0, Lcom/android/camera/TimelapseHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1210
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/TimelapseHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1184
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1185
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1188
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1191
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1195
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1199
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1202
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1182
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

    .line 1068
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1086
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1069
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1086
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1072
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/TimelapseHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1073
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 1074
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1076
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1077
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1069
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

    .line 1091
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return v0

    .line 1092
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1102
    const/4 v0, 0x0

    goto :goto_0

    .line 1095
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1096
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1097
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1092
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
    .line 945
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1278
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1273
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/TimelapseHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1293
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1288
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 777
    iget-boolean v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 800
    :goto_0
    return-void

    .line 778
    :cond_0
    const/4 v1, 0x0

    .line 780
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    :goto_1
    new-instance v2, Lcom/android/camera/TimelapseHal3Module$8;

    invoke-direct {v2, p0}, Lcom/android/camera/TimelapseHal3Module$8;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    .line 795
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 796
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 781
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 783
    const/4 v1, 0x1

    goto :goto_1

    .line 798
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
    .line 1246
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1257
    :goto_0
    return-void

    .line 1249
    :cond_0
    if-eqz p1, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1253
    :cond_1
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1254
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1255
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 804
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 806
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->takePictureNow()V

    .line 807
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 342
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 343
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 345
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 346
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 347
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_2

    :cond_0
    move v2, v4

    .line 348
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 349
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 351
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 352
    iget-object v4, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4, v1}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 356
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 347
    .restart local v0    # "currentValue":I
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 618
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 681
    :goto_0
    return-void

    .line 621
    :cond_0
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 623
    iget-boolean v1, p0, Lcom/android/camera/TimelapseHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 624
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 628
    :cond_1
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 629
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_2
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 635
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_3

    .line 636
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v12, v13}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    goto :goto_0

    .line 641
    :cond_3
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 643
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 645
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v1, :cond_6

    .line 647
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 648
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    goto :goto_0

    .line 649
    :cond_4
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 650
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mVideoController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 652
    :cond_5
    sub-long v8, v12, v6

    .line 653
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShutterButtonClick - remainingStorageBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 657
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 659
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/TimelapseHal3Module$7;

    invoke-direct {v3, p0}, Lcom/android/camera/TimelapseHal3Module$7;-><init>(Lcom/android/camera/TimelapseHal3Module;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/TimelapseHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 669
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 670
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 659
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/video/VideoFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 673
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 679
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "remainingStorageBytes":J
    :cond_6
    sget-object v1, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, mVideoController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 608
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 609
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 587
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 591
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 592
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 595
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 596
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 597
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 598
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 599
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 602
    iget-object v5, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 613
    iput-object p1, p0, Lcom/android/camera/TimelapseHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 614
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/TimelapseHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1283
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1267
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1268
    return-void
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 5

    .prologue
    .line 383
    iget-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    if-eqz v2, :cond_0

    .line 405
    :goto_0
    return-void

    .line 384
    :cond_0
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 385
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_1

    .line 388
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mActivity is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 394
    .local v0, "storageSpaceBytes":J
    const-wide/32 v2, 0x2faf080

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 395
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVideoSnapShotButtonClick ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 399
    :cond_2
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 400
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 401
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->takePictureNow()V

    goto :goto_0

    .line 403
    .end local v0    # "storageSpaceBytes":J
    :cond_3
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mVideoController is not started"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 895
    sget-object v0, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    .line 897
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 899
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 900
    iget-boolean v0, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_0

    .line 925
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 905
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 906
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 910
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->cancelCountDown()V

    .line 912
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 913
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 916
    :cond_2
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 917
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 918
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 919
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 921
    invoke-virtual {p0}, Lcom/android/camera/TimelapseHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 923
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->closeCamera()V

    .line 924
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->resetTextureBufferSize()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 859
    sget-object v2, Lcom/android/camera/TimelapseHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 860
    iget-boolean v2, p0, Lcom/android/camera/TimelapseHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 891
    :goto_0
    return-void

    .line 863
    :cond_0
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "TimelapseHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 865
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/TimelapseHal3Module;->mPaused:Z

    .line 867
    invoke-virtual {p0, v5}, Lcom/android/camera/TimelapseHal3Module;->onReadyStateChanged(Z)V

    .line 873
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 875
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 876
    if-eqz v1, :cond_1

    .line 877
    invoke-direct {p0}, Lcom/android/camera/TimelapseHal3Module;->initSurfaceTextureConsumer()V

    .line 878
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 881
    :cond_1
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 882
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 883
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 887
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 888
    iget-object v2, p0, Lcom/android/camera/TimelapseHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 890
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
    .line 685
    iput p1, p0, Lcom/android/camera/TimelapseHal3Module;->mOrientation:I

    .line 686
    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/TimelapseHal3Module;->mUI:Lcom/android/camera/TimelapseHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/TimelapseHal3ModuleUI;->setOrientation(IZ)V

    .line 687
    :cond_0
    return-void
.end method

.method public showScreenFlash(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 374
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1302
    iget-object v3, p0, Lcom/android/camera/TimelapseHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1303
    :try_start_0
    iget v1, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenWidth:I

    .line 1304
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/TimelapseHal3Module;->mScreenHeight:I

    .line 1305
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    invoke-direct {p0, v1, v0}, Lcom/android/camera/TimelapseHal3Module;->updatePreviewTransform(II)V

    .line 1307
    return-void

    .line 1305
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
