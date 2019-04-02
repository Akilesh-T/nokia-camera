.class public Lcom/android/camera/SlowMotionHal3Module;
.super Lcom/android/camera/CameraModule;
.source "SlowMotionHal3Module.java"

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
        Lcom/android/camera/SlowMotionHal3Module$ModuleState;
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

.field private mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

.field private final mUIListener:Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;

.field private mVideoController:Lcom/android/camera/video/VideoFacade;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 142
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SMHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 144
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/SlowMotionHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 150
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/SlowMotionHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SlowMotionHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 468
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 472
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 152
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mHandler:Landroid/os/Handler;

    .line 154
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 175
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 179
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mHdrSceneEnabled:Z

    .line 180
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mHdrPlusEnabled:Z

    .line 181
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 187
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 193
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mWatermarkEnabled:Z

    .line 194
    iput-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mShutterSoundEnabled:Z

    .line 196
    iput v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mOrientation:I

    .line 197
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 198
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mFirstPreviewArrived:Z

    .line 200
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mSwitchCamera:Z

    .line 202
    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$1;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mUIListener:Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;

    .line 219
    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$2;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 231
    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$3;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 333
    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$4;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 423
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module$ModuleState;->IDLE:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    .line 425
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mZoomValue:F

    .line 428
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    .line 443
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    .line 462
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 464
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 473
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new SlowMotionHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 474
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mFirstPreviewArrived:Z

    .line 475
    iput-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    .line 476
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 477
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 478
    iput-boolean p2, p0, Lcom/android/camera/SlowMotionHal3Module;->mStickyGcamCamera:Z

    .line 479
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 480
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SlowMotionHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/SlowMotionHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/SlowMotionHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/video/VideoFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Lcom/android/camera/video/VideoFacade;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/SlowMotionHal3Module$ModuleState;)Lcom/android/camera/SlowMotionHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/SlowMotionHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/SlowMotionHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/SlowMotionHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/SlowMotionHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$3302(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/SlowMotionHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/camera/SlowMotionHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/SlowMotionHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/SlowMotionHal3Module;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/camera/SlowMotionHal3Module;->playSound(Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/SlowMotionHal3Module;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Lcom/android/camera/SlowMotionHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/SlowMotionHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/SlowMotionHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/SlowMotionHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/camera/SlowMotionHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$500()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/SlowMotionHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/SlowMotionHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SlowMotionHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/SlowMotionHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->cancelCountDown()V

    .line 893
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 894
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 895
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 897
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2143
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "SlowMotionHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2145
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2149
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2151
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_0

    .line 2152
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 2153
    iput-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    .line 2155
    :cond_0
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2156
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2159
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_2

    .line 2160
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2161
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2162
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2163
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2164
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2165
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2166
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2169
    :cond_2
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2170
    invoke-virtual {p0, v5}, Lcom/android/camera/SlowMotionHal3Module;->onReadyStateChanged(Z)V

    .line 2171
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/SlowMotionHal3Module$18;

    invoke-direct {v3, p0}, Lcom/android/camera/SlowMotionHal3Module$18;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2179
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2180
    return-void

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2169
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2170
    invoke-virtual {p0, v5}, Lcom/android/camera/SlowMotionHal3Module;->onReadyStateChanged(Z)V

    .line 2171
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/SlowMotionHal3Module$18;

    invoke-direct {v4, p0}, Lcom/android/camera/SlowMotionHal3Module$18;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 850
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 851
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 852
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 853
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 854
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 857
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setForceHideThumbnail(Z)V

    .line 859
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 860
    return-object v6
.end method

.method private createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-nez v0, :cond_1

    .line 881
    :cond_0
    :goto_0
    return-object v2

    .line 865
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->getSessionTime()J

    move-result-wide v4

    .line 866
    .local v4, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 867
    .local v3, "profile":Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 872
    .local v6, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 873
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 874
    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v8

    .line 876
    .local v8, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 877
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v9, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v7, v9}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 876
    invoke-interface {v8, v2, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 879
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/UsageStatistics;->setCurrentMode(I)V

    move-object v2, v8

    .line 881
    goto :goto_0
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 699
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 700
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "flashSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 703
    .local v1, "gridLinesOn":Z
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 704
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v2, v3

    .line 718
    .local v2, "timerDuration":F
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1494
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1495
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$14;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 1524
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$15;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1441
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1442
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$12;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 1464
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$13;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 967
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 969
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
    .line 886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1564
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$16;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$16;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    return-object v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 934
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 935
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 936
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 937
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 938
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 936
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 940
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 941
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->reopenCamera()V

    .line 942
    return-void

    .line 940
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

    .line 1705
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1714
    :cond_0
    :goto_0
    return v1

    .line 1710
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1711
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1714
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

    .line 1712
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
    .line 1342
    const/4 v3, 0x0

    .line 1343
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/SlowMotionHal3Module$19;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1368
    :cond_0
    :goto_0
    return-void

    .line 1346
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1347
    iput-wide p2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    .line 1348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1353
    :pswitch_1
    const/4 v3, 0x1

    .line 1356
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1357
    iget-wide v8, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1358
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1359
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1360
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

    .line 1361
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1360
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1362
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1363
    iget-object v7, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/SlowMotionHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1364
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1360
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1343
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
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1608
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    sget-object v3, Lcom/android/camera/SlowMotionHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    if-ne v0, v3, :cond_0

    .line 1609
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mState:Lcom/android/camera/SlowMotionHal3Module$ModuleState;

    .line 1611
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1612
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1613
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1614
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1615
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1616
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_2

    :goto_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/camera/SlowMotionHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1617
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1618
    return-void

    :cond_1
    move v0, v2

    .line 1613
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1616
    goto :goto_1
.end method

.method private openCameraAndStartPreview()V
    .locals 25

    .prologue
    .line 1749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "SlowMotionHal3Module.openCameraAndStartPreview()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v20

    .line 1757
    .local v20, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1759
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to acquire camera-open lock."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :catch_0
    move-exception v17

    .line 1762
    .local v17, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1765
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1769
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Camera already open, not re-opening."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1771
    const-string v2, "Camera is already open"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2140
    :goto_0
    return-void

    .line 1775
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v16

    .line 1776
    .local v16, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1778
    .local v13, "cameraSettingScope":Ljava/lang/String;
    const/16 v19, -0x1

    .line 1779
    .local v19, "extraVideoQuality":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 1780
    .local v21, "intent":Landroid/content/Intent;
    if-eqz v21, :cond_2

    const-string v2, "android.intent.extra.videoQuality"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1781
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 1784
    :cond_2
    new-instance v24, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v24 .. v24}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1790
    .local v24, "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v2}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedFixedHighSpeedVideoList()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/SettingsUtil;->getMinHSRFpsLimit(Landroid/content/Context;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-static {v0, v2, v3}, Lcom/android/camera/util/VideoUtil;->pickOptionalHighSpeedVideoProfile(Lcom/android/camera/device/CameraId;Ljava/util/List;I)Landroid/util/Pair;

    move-result-object v22

    .line 1791
    .local v22, "optionalHighSpeedVideoProfile":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/CamcorderProfile;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const-string v2, "optionalHighSpeedVideoProfile.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1792
    move-object/from16 v0, v22

    iget-object v15, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Landroid/media/CamcorderProfile;

    .line 1793
    .local v15, "camcorderProfile":Landroid/media/CamcorderProfile;
    const-string v2, "mCamcorderProfile.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1794
    new-instance v23, Lcom/android/camera/video/PersistentInputSurface;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V

    .line 1795
    .local v23, "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    const-string v2, "PersistentInputSurface.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1797
    const-string v2, "mPictureSize.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1798
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->SLOW_MOTION:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    const/4 v9, 0x0

    move-object/from16 v0, v22

    iget-object v10, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/SlowMotionHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1807
    .local v6, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v2, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1809
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-eqz v2, :cond_3

    .line 1810
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Abort Camera Opened due to Module Paused"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1812
    const-string v2, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1801
    .end local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v22    # "optionalHighSpeedVideoProfile":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/CamcorderProfile;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .end local v23    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :catch_1
    move-exception v18

    .line 1802
    .local v18, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1803
    invoke-virtual/range {v24 .. v24}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1816
    .end local v18    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .restart local v22    # "optionalHighSpeedVideoProfile":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/CamcorderProfile;Landroid/util/Range<Ljava/lang/Integer;>;>;"
    .restart local v23    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    const/4 v10, 0x0

    new-instance v2, Lcom/android/camera/SlowMotionHal3Module$17;

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v24

    move-object v7, v15

    move-object/from16 v8, v23

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/SlowMotionHal3Module$17;-><init>(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V

    move-object/from16 v0, v16

    invoke-interface {v9, v0, v10, v2}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private playSound(Z)V
    .locals 2
    .param p1, "recordStarted"    # Z

    .prologue
    .line 2245
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mShutterSoundEnabled:Z

    if-nez v0, :cond_1

    .line 2250
    :cond_0
    :goto_0
    return-void

    .line 2247
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 2248
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

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
    .line 945
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 955
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$10;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$10;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1635
    sget-boolean v0, Lcom/android/camera/SlowMotionHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1636
    invoke-direct {p0, v0}, Lcom/android/camera/SlowMotionHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1635
    :goto_0
    return v0

    .line 1636
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2219
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewBufferSize()V

    .line 2220
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

    .line 1236
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1243
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "SlowMotionHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1247
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1248
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1249
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1256
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1257
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1258
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1261
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1262
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1263
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    .line 1265
    :cond_3
    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1266
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1269
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1270
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1273
    :cond_4
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1276
    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1277
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1280
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1281
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1283
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1251
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1252
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2186
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2187
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2199
    :cond_0
    :goto_0
    return-void

    .line 2190
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 2193
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2194
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->cancelCountDown()V

    .line 2195
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->clearFaces()V

    .line 2196
    iput-boolean v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mSwitchCamera:Z

    .line 2197
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->initSurfaceTextureConsumer()V

    .line 2198
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, v3}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1590
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1591
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1595
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1596
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1597
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1598
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1600
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1601
    return-void
.end method

.method private takePictureNow()V
    .locals 18

    .prologue
    .line 721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_0

    .line 722
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Not taking picture since Camera is closed."

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 843
    :goto_0
    return-void

    .line 725
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/camera/SlowMotionHal3Module;->onReadyStateChanged(Z)V

    .line 727
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v3

    const-string v5, "SlowMotionHal3Module.takePicture"

    invoke-virtual {v3, v5}, Lcom/android/camera/stats/profiler/GuardingProfiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v15

    .line 729
    .local v15, "guard":Lcom/android/camera/stats/profiler/Profile;
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v3

    const/16 v5, 0x7d0

    invoke-virtual {v3, v5}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 730
    const-string v3, "CPU Boost"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v4

    .line 733
    .local v4, "orientation":I
    const-string v3, "DeviceOrientation get"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 734
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/camera/SlowMotionHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v17

    .line 735
    .local v17, "session":Lcom/android/camera/session/CaptureSession;
    const-string v3, "CaptureSession init"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 739
    new-instance v2, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 740
    invoke-interface/range {v17 .. v17}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-interface/range {v17 .. v17}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 741
    invoke-interface {v6}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v7}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v10

    :goto_1
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/camera/SlowMotionHal3Module;->mZoomValue:F

    const/4 v12, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V

    .line 742
    .local v2, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    const-string v3, "PhotoCaptureParameters init"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 743
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/SlowMotionHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 747
    .local v8, "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v6}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v6

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 748
    .local v13, "downSample":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downSample : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 750
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/android/camera/app/CameraAppUI;->getPreviewFrame(I)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 751
    .local v16, "previewBitmap":Landroid/graphics/Bitmap;
    if-nez v16, :cond_2

    .line 752
    const-string v3, "previewBitmap is null"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 753
    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 838
    .end local v16    # "previewBitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v14

    .line 839
    .local v14, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takePictureNow fail : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 840
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 841
    const/4 v3, -0x1

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Lcom/android/camera/session/CaptureSession;->finishWithFailure(IZ)V

    goto/16 :goto_0

    .line 741
    .end local v2    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .end local v8    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .end local v13    # "downSample":I
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 756
    .restart local v2    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    .restart local v8    # "cameraFacing":Lcom/android/camera/one/OneCamera$Facing;
    .restart local v13    # "downSample":I
    .restart local v16    # "previewBitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_1
    const-string v3, "previewBitmap get"

    invoke-interface {v15, v3}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 758
    new-instance v5, Lcom/android/camera/SlowMotionHal3Module$8;

    move-object/from16 v6, p0

    move-object v7, v2

    move-object v9, v15

    move-object/from16 v10, v17

    invoke-direct/range {v5 .. v10}, Lcom/android/camera/SlowMotionHal3Module$8;-><init>(Lcom/android/camera/SlowMotionHal3Module;Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/session/CaptureSession;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    .line 837
    invoke-virtual {v5, v3, v6}, Lcom/android/camera/SlowMotionHal3Module$8;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 542
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 543
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 544
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 545
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 551
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 547
    :catch_0
    move-exception v2

    .line 550
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1723
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1727
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1728
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    .line 1729
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    .line 1730
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickVideoPreviewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1734
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1738
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    .line 1739
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    .line 1742
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 973
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 974
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 978
    :cond_0
    monitor-exit v1

    .line 979
    return-void

    .line 978
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
    .line 1625
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewTransform(IIZ)V

    .line 1626
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1645
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1647
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1648
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1650
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1652
    monitor-exit v3

    .line 1694
    :goto_0
    return-void

    .line 1655
    :cond_0
    iput v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mDisplayRotation:I

    .line 1656
    iput p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenWidth:I

    .line 1657
    iput p2, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenHeight:I

    .line 1658
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewBufferDimension()V

    .line 1671
    sget-boolean v2, Lcom/android/camera/SlowMotionHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1673
    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1674
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1677
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1693
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

    .line 1679
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1684
    :cond_3
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1685
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1686
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1688
    :cond_4
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1691
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1053
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1054
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1056
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1057
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1059
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 1060
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1061
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1063
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1064
    iput-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1065
    return-void

    .line 1063
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

    .line 1154
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1155
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v3}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v3}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 1156
    iget-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    if-nez v3, :cond_3

    move v3, v5

    :goto_1
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1157
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1159
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 1160
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1161
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_4

    move v1, v4

    .line 1162
    .local v1, "isLowPower":Z
    :goto_2
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v3, v6, :cond_5

    if-nez v1, :cond_5

    move v3, v5

    :goto_3
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 1163
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1164
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1166
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 1167
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1169
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportedSurroundSound()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-ge v3, v6, :cond_6

    :cond_1
    move v3, v5

    :goto_4
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1170
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 1172
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 1173
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1175
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v5

    :goto_5
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 1176
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1178
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1179
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1181
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 1182
    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v3, :cond_a

    iget-boolean v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mIsSecureCamera:Z

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_a

    :goto_6
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1183
    iget-boolean v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1184
    return-object v0

    .end local v1    # "isLowPower":Z
    .end local v2    # "powerMgr":Lcom/android/camera/PowerStateManager;
    :cond_2
    move v3, v4

    .line 1155
    goto/16 :goto_0

    :cond_3
    move v3, v4

    .line 1156
    goto/16 :goto_1

    .line 1161
    .restart local v2    # "powerMgr":Lcom/android/camera/PowerStateManager;
    :cond_4
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_2

    .restart local v1    # "isLowPower":Z
    :cond_5
    move v3, v4

    .line 1162
    goto/16 :goto_3

    :cond_6
    move v3, v4

    .line 1169
    goto :goto_4

    :cond_7
    move v3, v5

    goto :goto_4

    :cond_8
    move v3, v4

    .line 1175
    goto :goto_5

    :cond_9
    move v3, v5

    goto :goto_5

    :cond_a
    move v5, v4

    .line 1182
    goto :goto_6
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 368
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module$19;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 376
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 370
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 374
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 368
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
    .line 1089
    new-instance v0, Lcom/android/camera/SlowMotionHal3Module$11;

    invoke-direct {v0, p0}, Lcom/android/camera/SlowMotionHal3Module$11;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1388
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080268

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1387
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1079
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1082
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    const-string v0, "PhotoModule"

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "SlowMotionHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 557
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 558
    iput-boolean p2, p0, Lcom/android/camera/SlowMotionHal3Module;->mIsSecureCamera:Z

    .line 560
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/SlowMotionHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 562
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 563
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 562
    invoke-direct {p0, v2}, Lcom/android/camera/SlowMotionHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 564
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    .line 566
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 567
    iget-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_1

    .line 568
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 569
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 592
    :goto_1
    return-void

    .line 565
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 573
    :cond_1
    new-instance v2, Lcom/android/camera/SlowMotionHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mUIListener:Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/SlowMotionHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/SlowMotionHal3ModuleUI$VideoModuleUIListener;)V

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    .line 574
    const-string v2, "SlowMotionHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 576
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 578
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 580
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 583
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 584
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/SlowMotionHal3Module$6;

    invoke-direct {v2, p0}, Lcom/android/camera/SlowMotionHal3Module$6;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 591
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 580
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
    .line 2233
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

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
    .line 1189
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2224
    const/4 v0, 0x1

    return v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    move-result v0

    .line 2241
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
    .line 1075
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 484
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 485
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/SlowMotionHal3Module$5;

    invoke-direct {v1, p0}, Lcom/android/camera/SlowMotionHal3Module$5;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/SlowMotionHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 526
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 528
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 530
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/SlowMotionHal3ModuleUI;->loadModuleLayout()V

    .line 537
    :cond_1
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1306
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1338
    :cond_0
    :goto_0
    return-void

    .line 1307
    :cond_1
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1308
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module$19;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1335
    :goto_1
    sget-boolean v0, Lcom/android/camera/SlowMotionHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1336
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/SlowMotionHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1310
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1311
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1314
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1317
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1321
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1325
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1328
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1308
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

    .line 1194
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1212
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1195
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1212
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1198
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1199
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 1200
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1202
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1203
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1204
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1195
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

    .line 1217
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return v0

    .line 1218
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1228
    const/4 v0, 0x0

    goto :goto_0

    .line 1221
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1222
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1223
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1224
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1218
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
    .line 1069
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1070
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1404
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1399
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1419
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1414
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 901
    iget-boolean v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 924
    :goto_0
    return-void

    .line 902
    :cond_0
    const/4 v1, 0x0

    .line 904
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    :goto_1
    new-instance v2, Lcom/android/camera/SlowMotionHal3Module$9;

    invoke-direct {v2, p0}, Lcom/android/camera/SlowMotionHal3Module$9;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 919
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 920
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 905
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 906
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 907
    const/4 v1, 0x1

    goto :goto_1

    .line 922
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
    .line 1372
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1373
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1383
    :goto_0
    return-void

    .line 1375
    :cond_0
    if-eqz p1, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1380
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    invoke-static {v0}, Lcom/android/camera/util/ProductModelUtil;->isSlowMotionAllow(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1381
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    goto :goto_0

    .line 1380
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 928
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 930
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->takePictureNow()V

    .line 931
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 349
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 352
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 353
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 354
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_2

    :cond_0
    move v2, v4

    .line 355
    .local v2, "isPIPOn":Z
    :goto_0
    iget-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    .line 356
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 358
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/app/CameraAppUI;->freezeScreenUntilPreviewReady(Z)V

    .line 359
    iget-object v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4, v1}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 364
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    return-void

    .line 354
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

    .line 627
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 690
    :goto_0
    return-void

    .line 630
    :cond_0
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 632
    iget-boolean v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 633
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 638
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    :cond_2
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 644
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_3

    .line 645
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 646
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v12, v13}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    goto :goto_0

    .line 650
    :cond_3
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 652
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 654
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v1, :cond_6

    .line 656
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 657
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    goto :goto_0

    .line 658
    :cond_4
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 659
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mVideoController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 661
    :cond_5
    sub-long v8, v12, v6

    .line 662
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 665
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 666
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 668
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/SlowMotionHal3Module$7;

    invoke-direct {v3, p0}, Lcom/android/camera/SlowMotionHal3Module$7;-><init>(Lcom/android/camera/SlowMotionHal3Module;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/SlowMotionHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 678
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 679
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 668
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/video/VideoFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 682
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 688
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "remainingStorageBytes":J
    :cond_6
    sget-object v1, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, mVideoController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 617
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 618
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 596
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 613
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 600
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 601
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 604
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 605
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 606
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 607
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 608
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 611
    iget-object v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 623
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1409
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1393
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1394
    return-void
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 5

    .prologue
    .line 391
    iget-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    if-eqz v2, :cond_0

    .line 413
    :goto_0
    return-void

    .line 392
    :cond_0
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 395
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_1

    .line 396
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mActivity is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 402
    .local v0, "storageSpaceBytes":J
    const-wide/32 v2, 0x2faf080

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 403
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 407
    :cond_2
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 408
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 409
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->takePictureNow()V

    goto :goto_0

    .line 411
    .end local v0    # "storageSpaceBytes":J
    :cond_3
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mVideoController is not started"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1019
    sget-object v0, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    .line 1021
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1023
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1024
    iget-boolean v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_0

    .line 1049
    :goto_0
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 1029
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1030
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 1034
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->cancelCountDown()V

    .line 1036
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1037
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1040
    :cond_2
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1041
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1042
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1043
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1045
    invoke-virtual {p0}, Lcom/android/camera/SlowMotionHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1047
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->closeCamera()V

    .line 1048
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->resetTextureBufferSize()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 983
    sget-object v2, Lcom/android/camera/SlowMotionHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 984
    iget-boolean v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 987
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "SlowMotionHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 989
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/SlowMotionHal3Module;->mPaused:Z

    .line 991
    invoke-virtual {p0, v5}, Lcom/android/camera/SlowMotionHal3Module;->onReadyStateChanged(Z)V

    .line 997
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 999
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1000
    if-eqz v1, :cond_1

    .line 1001
    invoke-direct {p0}, Lcom/android/camera/SlowMotionHal3Module;->initSurfaceTextureConsumer()V

    .line 1002
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1005
    :cond_1
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1006
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1007
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1011
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 1012
    iget-object v2, p0, Lcom/android/camera/SlowMotionHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1014
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
    .line 694
    iput p1, p0, Lcom/android/camera/SlowMotionHal3Module;->mOrientation:I

    .line 695
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mUI:Lcom/android/camera/SlowMotionHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/SlowMotionHal3ModuleUI;->setOrientation(IZ)V

    .line 696
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
    .line 382
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1428
    iget-object v3, p0, Lcom/android/camera/SlowMotionHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1429
    :try_start_0
    iget v1, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenWidth:I

    .line 1430
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/SlowMotionHal3Module;->mScreenHeight:I

    .line 1431
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1432
    invoke-direct {p0, v1, v0}, Lcom/android/camera/SlowMotionHal3Module;->updatePreviewTransform(II)V

    .line 1433
    return-void

    .line 1431
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
