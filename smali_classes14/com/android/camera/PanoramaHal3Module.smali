.class public Lcom/android/camera/PanoramaHal3Module;
.super Lcom/android/camera/CameraModule;
.source "PanoramaHal3Module.java"

# interfaces
.implements Lcom/android/camera/module/ModuleController;
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
        Lcom/android/camera/PanoramaHal3Module$ModuleState;
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

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsSecureCamera:Z

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mOrientation:I

.field private mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

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

.field private mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "PanoHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 118
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/PanoramaHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 124
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/PanoramaHal3Module;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 380
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/PanoramaHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 381
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 385
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 126
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 151
    iput-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mHdrSceneEnabled:Z

    .line 152
    iput-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mHdrPlusEnabled:Z

    .line 153
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 165
    iput-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mWatermarkEnabled:Z

    .line 166
    iput-boolean v5, p0, Lcom/android/camera/PanoramaHal3Module;->mShutterSoundEnabled:Z

    .line 168
    iput v4, p0, Lcom/android/camera/PanoramaHal3Module;->mOrientation:I

    .line 169
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 170
    iput-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mFirstPreviewArrived:Z

    .line 174
    new-instance v1, Lcom/android/camera/PanoramaHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$1;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 186
    new-instance v1, Lcom/android/camera/PanoramaHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$2;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 288
    new-instance v1, Lcom/android/camera/PanoramaHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$3;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 337
    sget-object v1, Lcom/android/camera/PanoramaHal3Module$ModuleState;->IDLE:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    .line 339
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mZoomValue:F

    .line 342
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    .line 356
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    .line 375
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 377
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 386
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new PanoramaHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 387
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mFirstPreviewArrived:Z

    .line 388
    iput-boolean v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    .line 389
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 390
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 391
    iput-boolean p2, p0, Lcom/android/camera/PanoramaHal3Module;->mStickyGcamCamera:Z

    .line 392
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 393
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/PanoramaHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/panorama/PanoramaFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/panorama/PanoramaFacade;)Lcom/android/camera/panorama/PanoramaFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Lcom/android/camera/panorama/PanoramaFacade;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/PanoramaHal3Module$ModuleState;)Lcom/android/camera/PanoramaHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Lcom/android/camera/PanoramaHal3Module$ModuleState;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/PanoramaHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/camera/PanoramaHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/PanoramaHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/android/camera/PanoramaHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/camera/PanoramaHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/camera/PanoramaHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->createAndStartPanoCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/camera/PanoramaHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/camera/PanoramaHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/camera/PanoramaHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/PanoramaHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/PanoramaHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/PanoramaHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/camera/PanoramaHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget v0, p0, Lcom/android/camera/PanoramaHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/PanoramaHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/android/camera/PanoramaHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/camera/PanoramaHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/PanoramaHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/PanoramaHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/camera/PanoramaHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/camera/PanoramaHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/PanoramaHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/PanoramaHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/PanoramaHal3Module;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->reopenCamera()V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->cancelCountDown()V

    .line 676
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 677
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 678
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 680
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1833
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "PanoramaHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 1835
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1841
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v2, :cond_0

    .line 1842
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v2}, Lcom/android/camera/panorama/PanoramaFacade;->release()V

    .line 1843
    iput-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    .line 1847
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1848
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 1849
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 1850
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 1851
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 1852
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 1853
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 1854
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1857
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1858
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaHal3Module;->onReadyStateChanged(Z)V

    .line 1859
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/PanoramaHal3Module$16;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaHal3Module$16;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 1867
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 1868
    return-void

    .line 1836
    :catch_0
    move-exception v0

    .line 1837
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1857
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1858
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaHal3Module;->onReadyStateChanged(Z)V

    .line 1859
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/PanoramaHal3Module$16;

    invoke-direct {v4, p0}, Lcom/android/camera/PanoramaHal3Module$16;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 641
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 642
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 644
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 647
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setForceHideThumbnail(Z)V

    .line 649
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/PanoramaHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 650
    return-object v6
.end method

.method private createAndStartPanoCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 654
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-nez v0, :cond_0

    move-object v6, v7

    .line 664
    :goto_0
    return-object v6

    .line 655
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 657
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 658
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 660
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewPanoSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 662
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/util/Size;

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 663
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    float-to-int v5, v5

    iget-object v8, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v5, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 662
    invoke-interface {v6, v7, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    goto :goto_0
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 614
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1265
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1266
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$12;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    .line 1295
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$13;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    goto :goto_0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 1895
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1212
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1213
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$10;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$10;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    .line 1235
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$11;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$11;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    goto :goto_0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 750
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 751
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 752
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
    .line 669
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1326
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$14;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    return-object v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 717
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 720
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 721
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 719
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 723
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->reopenCamera()V

    .line 725
    return-void

    .line 723
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

    .line 1467
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1476
    :cond_0
    :goto_0
    return v1

    .line 1472
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1473
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1476
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

    .line 1474
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
    .line 1114
    const/4 v3, 0x0

    .line 1115
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/PanoramaHal3Module$17;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1118
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1119
    iput-wide p2, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1125
    :pswitch_1
    const/4 v3, 0x1

    .line 1128
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1129
    iget-wide v8, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1130
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1131
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1132
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

    .line 1133
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1132
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1134
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1135
    iget-object v7, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/PanoramaHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1136
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1132
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1115
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
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1370
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    sget-object v3, Lcom/android/camera/PanoramaHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    if-ne v2, v3, :cond_0

    .line 1371
    sget-object v2, Lcom/android/camera/PanoramaHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mState:Lcom/android/camera/PanoramaHal3Module$ModuleState;

    .line 1373
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1374
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1375
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1376
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1377
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1378
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v5, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v4, v5, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/camera/PanoramaHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1379
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1380
    return-void

    :cond_1
    move v0, v1

    .line 1378
    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 22

    .prologue
    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "PanoramaHal3Module.openCameraAndStartPreview()"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v21

    .line 1517
    .local v21, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1519
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :catch_0
    move-exception v19

    .line 1522
    .local v19, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1525
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 1529
    sget-object v4, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Camera already open, not re-opening."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1531
    const-string v4, "Camera is already open"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1830
    :goto_0
    return-void

    .line 1535
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 1536
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1542
    .local v15, "cameraSettingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getPanoramaPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1543
    const-string v4, "mPictureSize.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1544
    sget-object v4, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v6}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->PANORAMA:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    const/4 v11, 0x0

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->PANORAMA_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/PanoramaHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 1552
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1554
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-eqz v4, :cond_2

    .line 1555
    sget-object v4, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1557
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1547
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :catch_1
    move-exception v20

    .line 1548
    .local v20, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1549
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1561
    .end local v20    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/android/camera/PanoramaHal3Module$15;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v6, v0, v1, v2}, Lcom/android/camera/PanoramaHal3Module$15;-><init>(Lcom/android/camera/PanoramaHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v17

    invoke-interface {v4, v0, v5, v6}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v0, :cond_1

    .line 733
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 734
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->stopBurst()Z

    .line 738
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/PanoramaHal3Module$8;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$8;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1397
    sget-boolean v0, Lcom/android/camera/PanoramaHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1398
    invoke-direct {p0, v0}, Lcom/android/camera/PanoramaHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1397
    :goto_0
    return v0

    .line 1398
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 1906
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewBufferSize()V

    .line 1907
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

    .line 1008
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1015
    sget-object v3, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "PanoramaHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1019
    :cond_2
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1020
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1021
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1028
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1029
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1030
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1033
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1034
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1035
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    .line 1037
    :cond_3
    iget v3, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1038
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1041
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1042
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1045
    :cond_4
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1048
    iget v3, p0, Lcom/android/camera/PanoramaHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1049
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1052
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1053
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1055
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1023
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1024
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1070
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 1874
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1875
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1886
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-nez v0, :cond_0

    .line 1881
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1882
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->cancelCountDown()V

    .line 1883
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->clearFaces()V

    .line 1884
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->initSurfaceTextureConsumer()V

    .line 1885
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1352
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1353
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1358
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1359
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1360
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1362
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1363
    return-void
.end method

.method private takePictureNow()V
    .locals 12

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 618
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 633
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 623
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 624
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 628
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 629
    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 630
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/PanoramaHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V

    .line 631
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v11}, Lcom/android/camera/PanoramaHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 632
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v11}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 630
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 449
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 450
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 452
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 458
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 454
    :catch_0
    move-exception v2

    .line 457
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1485
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1503
    :goto_0
    return-void

    .line 1489
    :cond_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1490
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    .line 1491
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    .line 1495
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1499
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    .line 1500
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    .line 1502
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 756
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 761
    :cond_0
    monitor-exit v1

    .line 762
    return-void

    .line 761
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
    .line 1387
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewTransform(IIZ)V

    .line 1388
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1407
    sget-object v2, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1409
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1410
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1412
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1414
    monitor-exit v3

    .line 1456
    :goto_0
    return-void

    .line 1417
    :cond_0
    iput v0, p0, Lcom/android/camera/PanoramaHal3Module;->mDisplayRotation:I

    .line 1418
    iput p1, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenWidth:I

    .line 1419
    iput p2, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenHeight:I

    .line 1420
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewBufferDimension()V

    .line 1433
    sget-boolean v2, Lcom/android/camera/PanoramaHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1435
    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1436
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1439
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1455
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

    .line 1441
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1446
    :cond_3
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1447
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1448
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1450
    :cond_4
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1453
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 833
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 836
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 839
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    iput-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 841
    return-void

    .line 839
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 931
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 932
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 933
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCamera:Z

    .line 934
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 935
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 936
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 937
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 938
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 939
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 940
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 942
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 943
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 944
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 946
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 947
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 949
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 950
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 951
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 953
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideEffect:Z

    .line 955
    iget-boolean v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 956
    return-object v0
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 308
    sget-object v0, Lcom/android/camera/PanoramaHal3Module$17;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 316
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 310
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 312
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 314
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 308
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
    .line 866
    new-instance v0, Lcom/android/camera/PanoramaHal3Module$9;

    invoke-direct {v0, p0}, Lcom/android/camera/PanoramaHal3Module$9;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1159
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080123

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1158
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 855
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 858
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 859
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 860
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 859
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 327
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 6
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 463
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "PanoramaHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 464
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 465
    iput-boolean p2, p0, Lcom/android/camera/PanoramaHal3Module;->mIsSecureCamera:Z

    .line 467
    sget-object v2, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/PanoramaHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 469
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 470
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 469
    invoke-direct {p0, v2}, Lcom/android/camera/PanoramaHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 471
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 472
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    .line 473
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 474
    iget-boolean v2, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_1

    .line 475
    sget-object v2, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 476
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 499
    :goto_1
    return-void

    .line 472
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 480
    :cond_1
    new-instance v2, Lcom/android/camera/PanoramaHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v5}, Lcom/android/camera/one/OneCameraCharacteristics;->getSensorOrientation()I

    move-result v5

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/PanoramaHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    .line 481
    const-string v2, "PanoramaHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 483
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 485
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 486
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 487
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 490
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 491
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/PanoramaHal3Module$5;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaHal3Module$5;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 498
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_1

    .line 487
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
    .line 1920
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

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
    .line 961
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 1911
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 851
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 397
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 398
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/PanoramaHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/PanoramaHal3Module$4;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 431
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/PanoramaHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 434
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 435
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/PanoramaHal3ModuleUI;->loadModuleLayout()V

    .line 444
    :cond_1
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1078
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1080
    sget-object v0, Lcom/android/camera/PanoramaHal3Module$17;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1107
    :goto_1
    sget-boolean v0, Lcom/android/camera/PanoramaHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1108
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/PanoramaHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1082
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1083
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1086
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1089
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1093
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1097
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1100
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1080
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

    .line 966
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 984
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 967
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 984
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 970
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 971
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 972
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 974
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 975
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 967
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

    .line 989
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1000
    const/4 v0, 0x0

    goto :goto_0

    .line 993
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 994
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 995
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 996
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 990
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
    .line 845
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1175
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1170
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/PanoramaHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1190
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1185
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 684
    iget-boolean v3, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 707
    :goto_0
    return-void

    .line 685
    :cond_0
    const/4 v1, 0x0

    .line 687
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    :goto_1
    new-instance v2, Lcom/android/camera/PanoramaHal3Module$7;

    invoke-direct {v2, p0}, Lcom/android/camera/PanoramaHal3Module$7;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    .line 702
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 703
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 688
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x1

    goto :goto_1

    .line 705
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
    .line 1144
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :goto_0
    return-void

    .line 1146
    :cond_0
    if-eqz p1, :cond_1

    .line 1147
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1151
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1152
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 711
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 713
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->takePictureNow()V

    .line 714
    return-void
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 304
    return-void
.end method

.method public onShutterButtonClick()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 537
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 599
    :goto_0
    return-void

    .line 540
    :cond_0
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 542
    iget-boolean v1, p0, Lcom/android/camera/PanoramaHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 543
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 548
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_2
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 554
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_3

    .line 555
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    goto :goto_0

    .line 559
    :cond_3
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 561
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 563
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v1, :cond_6

    .line 565
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v1}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 566
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v1}, Lcom/android/camera/panorama/PanoramaFacade;->stopBurst()Z

    goto :goto_0

    .line 567
    :cond_4
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v1}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 568
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mPanoramaController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 570
    :cond_5
    sub-long v8, v12, v6

    .line 571
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 575
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 577
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/PanoramaHal3Module$6;

    invoke-direct {v3, p0}, Lcom/android/camera/PanoramaHal3Module$6;-><init>(Lcom/android/camera/PanoramaHal3Module;)V

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->PANORAMA:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    iget-object v6, p0, Lcom/android/camera/PanoramaHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 587
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 588
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 577
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/panorama/PanoramaFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 591
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 597
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "remainingStorageBytes":J
    :cond_6
    sget-object v1, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, mPanoramaController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 527
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 528
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 503
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v5}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v5}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstStopping()Z

    move-result v5

    if-nez v5, :cond_0

    .line 509
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 510
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 511
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 514
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 515
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 516
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 517
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 518
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 521
    iget-object v5, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/camera/PanoramaHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 533
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/PanoramaHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1180
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1164
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1165
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 801
    sget-object v0, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 802
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    .line 803
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 805
    iget-boolean v0, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_0

    .line 829
    :goto_0
    return-void

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    if-eqz v0, :cond_1

    .line 810
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 811
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mPanoramaController:Lcom/android/camera/panorama/PanoramaFacade;

    invoke-interface {v0}, Lcom/android/camera/panorama/PanoramaFacade;->stopBurst()Z

    .line 815
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->cancelCountDown()V

    .line 817
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 822
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 823
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 825
    invoke-virtual {p0}, Lcom/android/camera/PanoramaHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 827
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->closeCamera()V

    .line 828
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->resetTextureBufferSize()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 766
    sget-object v2, Lcom/android/camera/PanoramaHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resume : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 767
    iget-boolean v2, p0, Lcom/android/camera/PanoramaHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 797
    :goto_0
    return-void

    .line 770
    :cond_0
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "PanoramaHal3Module.resume"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 772
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v5, p0, Lcom/android/camera/PanoramaHal3Module;->mPaused:Z

    .line 774
    invoke-virtual {p0, v5}, Lcom/android/camera/PanoramaHal3Module;->onReadyStateChanged(Z)V

    .line 780
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 782
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 783
    if-eqz v1, :cond_1

    .line 784
    invoke-direct {p0}, Lcom/android/camera/PanoramaHal3Module;->initSurfaceTextureConsumer()V

    .line 785
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 788
    :cond_1
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 789
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 793
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p0, Lcom/android/camera/PanoramaHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 796
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
    .line 603
    iput p1, p0, Lcom/android/camera/PanoramaHal3Module;->mOrientation:I

    .line 604
    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/PanoramaHal3Module;->mUI:Lcom/android/camera/PanoramaHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/PanoramaHal3ModuleUI;->setOrientation(IZ)V

    .line 605
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
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1199
    iget-object v3, p0, Lcom/android/camera/PanoramaHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1200
    :try_start_0
    iget v1, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenWidth:I

    .line 1201
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/PanoramaHal3Module;->mScreenHeight:I

    .line 1202
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-direct {p0, v1, v0}, Lcom/android/camera/PanoramaHal3Module;->updatePreviewTransform(II)V

    .line 1204
    return-void

    .line 1202
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
