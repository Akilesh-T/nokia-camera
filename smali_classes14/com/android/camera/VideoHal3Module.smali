.class public Lcom/android/camera/VideoHal3Module;
.super Lcom/android/camera/CameraModule;
.source "VideoHal3Module.java"

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
        Lcom/android/camera/VideoHal3Module$ModuleState;
    }
.end annotation


# static fields
.field private static final BURST_SESSIONS_DIR:Ljava/lang/String; = "burst_sessions"

.field private static final CAMERA_OPEN_CLOSE_TIMEOUT_MILLIS:I = 0x9c4

.field private static final CAPTURE_DEBUG_UI:Z

.field private static final PERMISSION_GET_ACCOUNT_REQUEST_CODE:I = 0x1002

.field private static final PERMISSION_REQUEST:I = 0x1000

.field private static final PERMISSION_REQUEST_AGAIN:I = 0x1001

.field private static final REQUEST_ACCOUNT_PICKER:I = 0x1003

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final USE_AUTOTRANSFORM_UI_LAYOUT:Z

.field private static final mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;


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

.field private mCameraIdStateChanged:Z

.field private final mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private final mDimensionLock:Ljava/lang/Object;

.field private mDisplayRotation:I

.field private final mDoRecordRunnable:Ljava/lang/Runnable;

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsEffectEnabled:Z

.field private mIsLiveBroadcastEnabled:Z

.field private mIsOpenGLEnabled:Z

.field private mIsSecureCamera:Z

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field private mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMediaRecorderRecording:Z

.field private mOrientation:I

.field private final mOrientationState:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

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

.field private mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mShowErrorAndFinish:Z

.field private mShutterSoundEnabled:Z

.field private mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private mSlavePictureSize:Lcom/android/camera/util/Size;

.field private mState:Lcom/android/camera/VideoHal3Module$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mSwitchCamera:Z

.field private final mTouchChangedState:Lcom/android/camera/async/ConcurrentState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/async/ConcurrentState",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUI:Lcom/android/camera/VideoHal3ModuleUI;

.field private final mUIListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

.field private mVideoController:Lcom/android/camera/video/VideoFacade;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "VideoHal3Module"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 155
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/VideoHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 161
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/VideoHal3Module;->CAPTURE_DEBUG_UI:Z

    .line 229
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCode;

    const/16 v1, 0x1000

    const/16 v2, 0x1001

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;-><init>(III)V

    sput-object v0, Lcom/android/camera/VideoHal3Module;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/VideoHal3Module;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 539
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 543
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 163
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mDimensionLock:Ljava/lang/Object;

    .line 187
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 193
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mHdrSceneEnabled:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mHdrPlusEnabled:Z

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 209
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mWatermarkEnabled:Z

    .line 210
    iput-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mShutterSoundEnabled:Z

    .line 212
    iput v4, p0, Lcom/android/camera/VideoHal3Module;->mOrientation:I

    .line 213
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 214
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    .line 215
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mCameraIdStateChanged:Z

    .line 217
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mSwitchCamera:Z

    .line 218
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsOpenGLEnabled:Z

    .line 219
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    .line 220
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    .line 237
    new-instance v1, Lcom/android/camera/VideoHal3Module$1;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$1;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mDoRecordRunnable:Ljava/lang/Runnable;

    .line 246
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mMediaRecorderRecording:Z

    .line 250
    new-instance v1, Lcom/android/camera/VideoHal3Module$2;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$2;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUIListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

    .line 267
    new-instance v1, Lcom/android/camera/VideoHal3Module$3;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$3;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 279
    new-instance v1, Lcom/android/camera/VideoHal3Module$4;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$4;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 390
    new-instance v1, Lcom/android/camera/VideoHal3Module$5;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$5;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 495
    sget-object v1, Lcom/android/camera/VideoHal3Module$ModuleState;->IDLE:Lcom/android/camera/VideoHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mState:Lcom/android/camera/VideoHal3Module$ModuleState;

    .line 497
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mZoomValue:F

    .line 500
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    .line 514
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    .line 533
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 535
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAllocationLock:Ljava/lang/Object;

    .line 1684
    new-instance v1, Lcom/android/camera/VideoHal3Module$18;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$18;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .line 544
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new VideoHal3Module"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 545
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    .line 546
    iput-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    .line 547
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 548
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 549
    iput-boolean p2, p0, Lcom/android/camera/VideoHal3Module;->mStickyGcamCamera:Z

    .line 550
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    .line 551
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    .line 552
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 553
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/VideoHal3Module;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/VideoHal3Module;->mZoomValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/VideoHal3Module;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # F

    .prologue
    .line 142
    iput p1, p0, Lcom/android/camera/VideoHal3Module;->mZoomValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/VideoHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/camera/VideoHal3Module;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->reopenCamera()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/video/VideoFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/video/VideoFacade;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->closeCamera()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3Module$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mState:Lcom/android/camera/VideoHal3Module$ModuleState;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/VideoHal3Module$ModuleState;)Lcom/android/camera/VideoHal3Module$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/VideoHal3Module$ModuleState;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mState:Lcom/android/camera/VideoHal3Module$ModuleState;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/camera/VideoHal3Module;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/VideoHal3Module;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/camera/VideoHal3Module;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/VideoHal3Module;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/VideoHal3Module;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mCameraIdStateChanged:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mCameraIdStateChanged:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/stats/profiler/Profiler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/camera/VideoHal3Module;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/camera/VideoHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 142
    sget-boolean v0, Lcom/android/camera/VideoHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->switchToRegularCapture()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->switchCamera()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoHal3Module;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object v0
.end method

.method static synthetic access$4802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object p1
.end method

.method static synthetic access$4902(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->resetTouchChangedState()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/camera/VideoHal3Module;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/camera/VideoHal3Module;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/camera/VideoHal3Module;->playSound(Z)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/camera/VideoHal3Module;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/VideoHal3ModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mIsOpenGLEnabled:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/camera/VideoHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$6100(Lcom/android/camera/VideoHal3Module;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$6200(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/camera/VideoHal3Module;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/camera/VideoHal3Module;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mSwitchCamera:Z

    return v0
.end method

.method static synthetic access$6502(Lcom/android/camera/VideoHal3Module;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/camera/VideoHal3Module;->mSwitchCamera:Z

    return p1
.end method

.method static synthetic access$6600(Lcom/android/camera/VideoHal3Module;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/camera/VideoHal3Module;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mDoRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 142
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/VideoHal3Module;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # Lcom/android/camera/one/OneCameraCharacteristics;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/camera/VideoHal3Module;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/VideoHal3Module;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 142
    invoke-direct {p0, p1, p2}, Lcom/android/camera/VideoHal3Module;->startActiveFocusAt(II)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3ModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 887
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3ModuleUI;->cancelCountDown()V

    .line 888
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 892
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 893
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 895
    :cond_1
    return-void
.end method

.method private chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 6
    .param p1, "accountType"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "callback"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2614
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 2616
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-nez v0, :cond_0

    .line 2617
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "chooseAccount fail : mLiveBroadcastManager is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2618
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 2630
    :goto_0
    return-void

    .line 2622
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2623
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "chooseAccount success : The current account already login successfully"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2624
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    goto :goto_0

    .line 2628
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v2, Lcom/android/camera/VideoHal3Module;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v4, 0x1003

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2504
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "VideoHal3Module.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2506
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2510
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2512
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_0

    .line 2513
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 2514
    iput-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    .line 2516
    :cond_0
    sget-object v2, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 2517
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v2, v4}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 2520
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_2

    .line 2521
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2522
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2523
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2524
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2525
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2526
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2527
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2530
    :cond_2
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2531
    invoke-virtual {p0, v5}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 2532
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/VideoHal3Module$22;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoHal3Module$22;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2540
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2541
    return-void

    .line 2507
    :catch_0
    move-exception v0

    .line 2508
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2530
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2531
    invoke-virtual {p0, v5}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 2532
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/VideoHal3Module$22;

    invoke-direct {v4, p0}, Lcom/android/camera/VideoHal3Module$22;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 841
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getSessionTime()J

    move-result-wide v2

    .line 842
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 843
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 844
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 845
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 848
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Lcom/android/camera/session/CaptureSession;->setForceHideThumbnail(Z)V

    .line 850
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 851
    return-object v6
.end method

.method private createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 855
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-nez v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-object v2

    .line 856
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getSessionTime()J

    move-result-wide v4

    .line 857
    .local v4, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 858
    .local v3, "profile":Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_0

    .line 862
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 863
    .local v6, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 864
    .local v1, "title":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewStreamingSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v9

    .line 865
    .local v9, "session":Lcom/android/camera/session/CaptureSession;
    :goto_1
    new-instance v0, Lcom/android/camera/util/Size;

    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v10, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v7, v10}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v9, v2, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 869
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/UsageStatistics;->setCurrentMode(I)V

    .line 871
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v0, v2, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v8

    .line 872
    .local v8, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v0, :cond_2

    .line 873
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v7, 0x5

    invoke-virtual {v0, v2, v7, v8}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    :cond_2
    move-object v2, v9

    .line 876
    goto :goto_0

    .line 864
    .end local v8    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v9    # "session":Lcom/android/camera/session/CaptureSession;
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v9

    goto :goto_1
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 10
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 800
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 801
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 803
    .local v6, "flashSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v7

    .line 804
    .local v7, "gridLinesOn":Z
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_countdown_duration_key"

    .line 805
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-float v9, v0

    .line 807
    .local v9, "timerDuration":F
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v0, v1}, Lcom/android/camera/stats/UsageStatistics;->getCurrentResolution(Lcom/android/camera/util/Size;)Ljava/lang/String;

    move-result-object v8

    .line 809
    .local v8, "pictureResolutionData":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "0"

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 815
    return-void
.end method

.method private getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1542
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1543
    new-instance v0, Lcom/android/camera/VideoHal3Module$14;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$14;-><init>(Lcom/android/camera/VideoHal3Module;)V

    .line 1572
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/VideoHal3Module$15;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$15;-><init>(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method

.method private getEffectChooseCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1708
    new-instance v0, Lcom/android/camera/VideoHal3Module$19;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$19;-><init>(Lcom/android/camera/VideoHal3Module;)V

    return-object v0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2579
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1489
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1490
    new-instance v0, Lcom/android/camera/VideoHal3Module$12;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$12;-><init>(Lcom/android/camera/VideoHal3Module;)V

    .line 1512
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/camera/VideoHal3Module$13;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$13;-><init>(Lcom/android/camera/VideoHal3Module;)V

    goto :goto_0
.end method

.method private getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1656
    new-instance v0, Lcom/android/camera/VideoHal3Module$17;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$17;-><init>(Lcom/android/camera/VideoHal3Module;)V

    return-object v0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 985
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
    .line 881
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1634
    new-instance v0, Lcom/android/camera/VideoHal3Module$16;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$16;-><init>(Lcom/android/camera/VideoHal3Module;)V

    return-object v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 932
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 935
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 936
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 934
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 938
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 939
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->reopenCamera()V

    .line 940
    return-void

    .line 938
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

    .line 1838
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1847
    :cond_0
    :goto_0
    return v1

    .line 1843
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1844
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1847
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

    .line 1845
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
    .line 1389
    const/4 v3, 0x0

    .line 1390
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/VideoHal3Module$23;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1415
    :cond_0
    :goto_0
    return-void

    .line 1393
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1394
    iput-wide p2, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    .line 1395
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1400
    :pswitch_1
    const/4 v3, 0x1

    .line 1403
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1404
    iget-wide v8, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1405
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1406
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1407
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

    .line 1408
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1407
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1409
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1410
    iget-object v7, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/VideoHal3ModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1411
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1407
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1390
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

    .line 1741
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mState:Lcom/android/camera/VideoHal3Module$ModuleState;

    sget-object v2, Lcom/android/camera/VideoHal3Module$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/VideoHal3Module$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1742
    sget-object v1, Lcom/android/camera/VideoHal3Module$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/VideoHal3Module$ModuleState;

    iput-object v1, p0, Lcom/android/camera/VideoHal3Module;->mState:Lcom/android/camera/VideoHal3Module$ModuleState;

    .line 1744
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1745
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1746
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1747
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1748
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1749
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/VideoHal3ModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1750
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1751
    return-void

    .line 1749
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 25

    .prologue
    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "VideoHal3Module.openCameraAndStartPreview()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v20

    .line 1889
    .local v20, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1891
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to acquire camera-open lock."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1893
    :catch_0
    move-exception v17

    .line 1894
    .local v17, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1897
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1901
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Camera already open, not re-opening."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1903
    const-string v2, "Camera is already open"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 1904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/VideoHal3Module$20;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/camera/VideoHal3Module$20;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2501
    :goto_0
    return-void

    .line 1913
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    .line 1914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_effect_mode_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v2

    sget-object v3, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v2, v3, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    .line 1916
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v2, :cond_7

    :cond_2
    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsOpenGLEnabled:Z

    .line 1918
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_8

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_4
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1920
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v16

    .line 1921
    .local v16, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v24

    .line 1922
    .local v24, "slaveCameraId":Lcom/android/camera/device/CameraId;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1923
    .local v13, "cameraSettingScope":Ljava/lang/String;
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLiveBroadcastEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsEffectEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1925
    const-string v2, "CameraId prepare done"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1927
    const/16 v19, -0x1

    .line 1928
    .local v19, "extraVideoQuality":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_b

    .line 1929
    const/16 v19, 0x5

    .line 1939
    :cond_3
    :goto_6
    new-instance v23, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v23 .. v23}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1945
    .local v23, "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_d

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_7
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/android/camera/settings/ResolutionSetting;->getVideoProfile(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;ILcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)Landroid/media/CamcorderProfile;

    move-result-object v15

    .line 1946
    .local v15, "camcorderProfile":Landroid/media/CamcorderProfile;
    const-string v2, "mCamcorderProfile.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1948
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_f

    const/16 v22, 0x0

    .line 1949
    .local v22, "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :goto_8
    const-string v2, "PersistentInputSurface.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1951
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsOpenGLEnabled:Z

    if-eqz v2, :cond_15

    .line 1952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1953
    sget-object v3, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1954
    const-string v2, "mPictureSize.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1956
    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    :goto_a
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1957
    const-string v2, "mSlaveCameraCharacteristics.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1959
    if-eqz v24, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    :goto_b
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    .line 1960
    sget-object v3, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlavePictureSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_c
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1961
    const-string v2, "mSlavePictureSize.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    new-instance v10, Landroid/util/Range;

    iget v11, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1979
    .local v6, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :goto_e
    const-string v2, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1981
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-eqz v2, :cond_16

    .line 1982
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Abort Camera Opened due to Module Paused"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1983
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1984
    const-string v2, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1913
    .end local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v13    # "cameraSettingScope":Ljava/lang/String;
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v16    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v19    # "extraVideoQuality":I
    .end local v22    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    .end local v23    # "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    .end local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080309

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_live_broadcast_choose_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1914
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1916
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1918
    :cond_8
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_4

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1921
    .restart local v16    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_a
    const/16 v24, 0x0

    goto/16 :goto_5

    .line 1930
    .restart local v13    # "cameraSettingScope":Ljava/lang/String;
    .restart local v19    # "extraVideoQuality":I
    .restart local v24    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v2, :cond_c

    .line 1931
    const/16 v19, 0x6

    goto/16 :goto_6

    .line 1933
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    .line 1934
    .local v21, "intent":Landroid/content/Intent;
    if-eqz v21, :cond_3

    const-string v2, "android.intent.extra.videoQuality"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1935
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    goto/16 :goto_6

    .line 1945
    .end local v21    # "intent":Landroid/content/Intent;
    .restart local v23    # "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_7

    :cond_e
    sget-object v2, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_7

    .line 1948
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    :cond_f
    new-instance v22, Lcom/android/camera/video/PersistentInputSurface;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v15}, Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V
    :try_end_2
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 1973
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    :catch_1
    move-exception v18

    .line 1974
    .local v18, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1975
    invoke-virtual/range {v23 .. v23}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1976
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1953
    .end local v18    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .restart local v22    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1956
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 1959
    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1960
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_c

    .line 1963
    :cond_14
    :try_start_3
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->EFFECT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    goto/16 :goto_d

    .line 1965
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1966
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1967
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/VideoHal3Module;->mSlavePictureSize:Lcom/android/camera/util/Size;

    .line 1968
    const-string v2, "mPictureSize.get"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1969
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

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

    iget-object v11, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/VideoHal3Module;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_3
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .restart local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    goto/16 :goto_e

    .line 1988
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    new-instance v2, Lcom/android/camera/VideoHal3Module$21;

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    move-object/from16 v5, v23

    move-object v7, v15

    move-object/from16 v8, v22

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/VideoHal3Module$21;-><init>(Lcom/android/camera/VideoHal3Module;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-interface {v9, v0, v1, v2}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private playSound(Z)V
    .locals 2
    .param p1, "recordStarted"    # Z

    .prologue
    .line 2653
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mShutterSoundEnabled:Z

    if-nez v0, :cond_1

    .line 2658
    :cond_0
    :goto_0
    return-void

    .line 2655
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

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
    .line 943
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-eqz v0, :cond_0

    .line 980
    :goto_0
    return-void

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 953
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/VideoHal3Module$10;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$10;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1768
    sget-boolean v0, Lcom/android/camera/VideoHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1769
    invoke-direct {p0, v0}, Lcom/android/camera/VideoHal3Module;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1768
    :goto_0
    return v0

    .line 1769
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2590
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updatePreviewBufferSize()V

    .line 2591
    return-void
.end method

.method private resetTouchChangedState()V
    .locals 3

    .prologue
    .line 2604
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    monitor-enter v1

    .line 2605
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    invoke-virtual {v0}, Lcom/android/camera/async/ConcurrentState;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 2606
    monitor-exit v1

    .line 2607
    return-void

    .line 2605
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2606
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    .line 1283
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v3, :cond_1

    .line 1332
    :cond_0
    :goto_0
    return-void

    .line 1289
    :cond_1
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v3, :cond_2

    .line 1290
    sget-object v3, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "VideoHal3Module mFocusController is null!"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 1294
    :cond_2
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isAutoFocusSupported()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1295
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1296
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showActiveFocusAt(II)V

    .line 1303
    :goto_1
    const/4 v3, 0x2

    new-array v0, v3, [F

    .line 1304
    .local v0, "points":[F
    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v5

    .line 1305
    int-to-float v3, p2

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    aput v3, v0, v8

    .line 1308
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 1309
    .local v1, "rotationMatrix":Landroid/graphics/Matrix;
    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 1310
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    iput v3, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    .line 1312
    :cond_3
    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    int-to-float v3, v3

    invoke-virtual {v1, v3, v6, v6}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1313
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1316
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getCameraDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v3

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_4

    .line 1317
    aget v3, v0, v5

    sub-float v3, v7, v3

    aput v3, v0, v5

    .line 1320
    :cond_4
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    aget v4, v0, v5

    aget v5, v0, v8

    invoke-interface {v3, v4, v5}, Lcom/android/camera/one/OneCamera;->triggerFocusAndMeterAtPoint(FF)V

    .line 1323
    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mZoomValue:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_0

    .line 1324
    new-instance v2, Lcom/android/camera/ui/TouchCoordinate;

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    int-to-float v4, p2

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1327
    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    iget-object v6, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    .line 1328
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/camera/ui/TouchCoordinate;-><init>(FFFF)V

    .line 1330
    .local v2, "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/camera/stats/UsageStatistics;->tapToFocus(Lcom/android/camera/ui/TouchCoordinate;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 1298
    .end local v0    # "points":[F
    .end local v1    # "rotationMatrix":Landroid/graphics/Matrix;
    .end local v2    # "touchCoordinate":Lcom/android/camera/ui/TouchCoordinate;
    :cond_5
    sget-object v3, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1299
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v3, p1, p2}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAt(II)V

    goto/16 :goto_1
.end method

.method private startPassiveFocus()V
    .locals 1

    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 1346
    :goto_0
    return-void

    .line 1345
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->showPassiveFocusAtCenter()V

    goto :goto_0
.end method

.method private switchCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2547
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2548
    iget-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    if-eqz v1, :cond_1

    .line 2570
    :cond_0
    :goto_0
    return-void

    .line 2551
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-nez v1, :cond_0

    .line 2554
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "switchCamera"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2556
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->needEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Z

    move-result v0

    .line 2557
    .local v0, "needEffectAfterSwitch":Z
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needEffectAfterSwitch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2558
    iget-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 2559
    :goto_1
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 2560
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->presetEffectForCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)V

    .line 2561
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "preset effect setting done"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2564
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->cancelCountDown()V

    .line 2565
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoHal3ModuleUI;->clearFaces()V

    .line 2566
    iput-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mSwitchCamera:Z

    .line 2567
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->initSurfaceTextureConsumer()V

    .line 2568
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v4}, Lcom/android/camera/app/AppController;->switchCamera(Z)V

    .line 2569
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->onCameraFacingChange(Lcom/android/camera/one/OneCamera$Facing;)V

    goto :goto_0

    .line 2558
    :cond_3
    if-eqz v0, :cond_2

    goto :goto_1
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1723
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1724
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1728
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1729
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1730
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1731
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1733
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1734
    return-void
.end method

.method private takePictureNow()V
    .locals 12

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 819
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 834
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 824
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 825
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/VideoHal3Module;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 829
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 830
    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 831
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    iget-object v7, p0, Lcom/android/camera/VideoHal3Module;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v5}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/VideoHal3Module;->mZoomValue:F

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V

    .line 832
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v11}, Lcom/android/camera/VideoHal3Module;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 833
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v11}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 831
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateCameraCharacteristics()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 624
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 626
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 632
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    :cond_0
    :goto_0
    return v1

    .line 628
    :catch_0
    move-exception v2

    .line 631
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1856
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1875
    :goto_0
    return-void

    .line 1860
    :cond_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mPictureSize:Lcom/android/camera/util/Size;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/camera/one/OneCamera;->pickVideoPreviewSize(Lcom/android/camera/util/Size;Landroid/content/Context;)Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1861
    .local v0, "previewBufferSize":Lcom/android/camera/util/Size;
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    .line 1862
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    .line 1863
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pickVideoPreviewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1867
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1871
    const/16 v1, 0x500

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    .line 1872
    const/16 v1, 0x3c0

    iput v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    .line 1874
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 989
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 990
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 994
    :cond_0
    monitor-exit v1

    .line 995
    return-void

    .line 994
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
    .line 1758
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/VideoHal3Module;->updatePreviewTransform(IIZ)V

    .line 1759
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1778
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1780
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1781
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1783
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1785
    monitor-exit v3

    .line 1827
    :goto_0
    return-void

    .line 1788
    :cond_0
    iput v0, p0, Lcom/android/camera/VideoHal3Module;->mDisplayRotation:I

    .line 1789
    iput p1, p0, Lcom/android/camera/VideoHal3Module;->mScreenWidth:I

    .line 1790
    iput p2, p0, Lcom/android/camera/VideoHal3Module;->mScreenHeight:I

    .line 1791
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updatePreviewBufferDimension()V

    .line 1804
    sget-boolean v2, Lcom/android/camera/VideoHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1806
    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1807
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1810
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1826
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

    .line 1812
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1817
    :cond_3
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1818
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1819
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1821
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/VideoHal3Module;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/VideoHal3Module;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/VideoHal3Module;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1824
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1092
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1094
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 1095
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1096
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1102
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1104
    iput-object v3, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 1105
    iput-object v3, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1106
    return-void

    .line 1102
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
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1198
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1199
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1200
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getCameraCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1202
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideFlash:Z

    .line 1203
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1204
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_2

    move v1, v3

    .line 1205
    .local v1, "isLowPower":Z
    :goto_0
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v6, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v4, v6, :cond_3

    if-nez v1, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 1206
    sget-object v4, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1207
    sget-object v4, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1209
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 1210
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1212
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportedSurroundSound()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v4}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x3

    if-ge v4, v6, :cond_4

    :cond_0
    move v4, v5

    :goto_2
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1213
    iget-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-nez v4, :cond_6

    move v4, v5

    :goto_3
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 1214
    iget-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    if-eqz v4, :cond_7

    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v4

    :goto_4
    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1216
    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsSecureCamera:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_8

    move v4, v5

    :goto_5
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 1217
    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsSecureCamera:Z

    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1218
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1220
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_6
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 1221
    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_b

    move v4, v5

    :goto_7
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1222
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isReqPIP()Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v5

    :goto_8
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideCameraScreen:Z

    .line 1224
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1225
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1226
    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsOpenGLEnabled:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_1
    move v4, v5

    :goto_9
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    .line 1228
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getEffectChooseCallback()Landroid/view/View$OnClickListener;

    move-result-object v4

    iput-object v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    .line 1229
    sget-boolean v4, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsSecureCamera:Z

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v4}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v4

    if-nez v4, :cond_f

    :goto_a
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1230
    iget-boolean v3, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1231
    return-object v0

    .line 1204
    .end local v1    # "isLowPower":Z
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_3
    move v4, v3

    .line 1205
    goto/16 :goto_1

    :cond_4
    move v4, v3

    .line 1212
    goto/16 :goto_2

    :cond_5
    move v4, v5

    goto/16 :goto_2

    :cond_6
    move v4, v3

    .line 1213
    goto/16 :goto_3

    .line 1214
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_8
    move v4, v3

    .line 1216
    goto/16 :goto_5

    :cond_9
    move v4, v3

    .line 1220
    goto :goto_6

    :cond_a
    move v4, v5

    goto :goto_6

    :cond_b
    move v4, v3

    .line 1221
    goto :goto_7

    :cond_c
    move v4, v5

    goto :goto_7

    :cond_d
    move v4, v3

    .line 1222
    goto :goto_8

    :cond_e
    move v4, v3

    .line 1226
    goto :goto_9

    :cond_f
    move v5, v3

    .line 1229
    goto :goto_a
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 440
    sget-object v0, Lcom/android/camera/VideoHal3Module$23;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 448
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 442
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 444
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 446
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 440
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
    .line 1130
    new-instance v0, Lcom/android/camera/VideoHal3Module$11;

    invoke-direct {v0, p0}, Lcom/android/camera/VideoHal3Module$11;-><init>(Lcom/android/camera/VideoHal3Module;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1436
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080289

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1435
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1120
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1123
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1124
    const-string v0, "PhotoModule"

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 7
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 637
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "VideoHal3Module.init"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 638
    .local v1, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    .line 639
    iput-boolean p2, p0, Lcom/android/camera/VideoHal3Module;->mIsSecureCamera:Z

    .line 641
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init UseAutotransformUiLayout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/camera/VideoHal3Module;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 643
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 644
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "PhotoModule"

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 643
    invoke-direct {p0, v2}, Lcom/android/camera/VideoHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 646
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/GoogleAssistantManager;->useFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 649
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_id_key"

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f080303

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 654
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 655
    const-string v2, "get Camera Facing"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 656
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    .line 657
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 658
    const-string v2, "update Camera Characteristics"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 659
    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_3

    .line 660
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 661
    const-string v2, "Error"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 687
    :goto_2
    return-void

    .line 653
    :cond_1
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 656
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 665
    :cond_3
    new-instance v2, Lcom/android/camera/VideoHal3ModuleUI;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mUIListener:Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;

    invoke-direct {v2, p1, v3, v4, v5}, Lcom/android/camera/VideoHal3ModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;Lcom/android/camera/VideoHal3ModuleUI$VideoModuleUIListener;)V

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    .line 666
    const-string v2, "VideoHal3ModuleUI.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 667
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 668
    const-string v2, "PreviewStatusListener.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 670
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v3

    .line 671
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 672
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    const-string v2, "PreviewSurfaceTexture.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 675
    const v2, 0x7f0f00ba

    invoke-virtual {p1, v2}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 676
    .local v0, "cancelButton":Landroid/view/View;
    new-instance v2, Lcom/android/camera/VideoHal3Module$7;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoHal3Module$7;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 683
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 684
    const-string v2, "mLiveBroadcastManager.init"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 686
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto :goto_2

    .line 672
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
    .line 2610
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

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
    .line 1236
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2595
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2634
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2635
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onActivityResult(IILandroid/content/Intent;)Z

    .line 2642
    :cond_0
    :goto_0
    return-void

    .line 2638
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2662
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2663
    iput-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mMediaRecorderRecording:Z

    .line 2664
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    move-result v0

    .line 2666
    :cond_0
    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1116
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 557
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 558
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/VideoHal3Module$6;

    invoke-direct {v1, p0}, Lcom/android/camera/VideoHal3Module$6;-><init>(Lcom/android/camera/VideoHal3Module;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 602
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 604
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoHal3ModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/VideoHal3ModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 605
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/focus/FocusController;->setFocusStateProvider(Lcom/android/camera/ui/focus/FocusRing$FocusStateProvider;)V

    .line 606
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 607
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1}, Lcom/android/camera/one/OneCamera;->getTouchExposureListener()Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->setTouchExposureListener(Lcom/android/camera/ui/focus/FocusRing$TouchExposureListener;)V

    .line 609
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/VideoHal3ModuleUI;->loadModuleLayout()V

    .line 617
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 618
    :cond_2
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1353
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1355
    sget-object v0, Lcom/android/camera/VideoHal3Module$23;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1382
    :goto_1
    sget-boolean v0, Lcom/android/camera/VideoHal3Module;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1383
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/VideoHal3Module;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1357
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1358
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->startPassiveFocus()V

    goto :goto_1

    .line 1361
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1364
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1368
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1372
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1375
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1355
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

    .line 1241
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1259
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1242
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1259
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1245
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/VideoHal3ModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1246
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->cancelCountDown()V

    goto :goto_0

    .line 1247
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1249
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1250
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1242
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

    .line 1264
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1275
    :cond_0
    :goto_0
    return v0

    .line 1265
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1275
    const/4 v0, 0x0

    goto :goto_0

    .line 1268
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1269
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1270
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->onShutterButtonClick()V

    goto :goto_0

    .line 1265
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
    .line 1110
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1111
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1451
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1452
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1447
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1466
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/VideoHal3Module;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1467
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1462
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 899
    iget-boolean v3, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-eqz v3, :cond_0

    .line 922
    :goto_0
    return-void

    .line 900
    :cond_0
    const/4 v1, 0x0

    .line 902
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_1
    new-instance v2, Lcom/android/camera/VideoHal3Module$9;

    invoke-direct {v2, p0}, Lcom/android/camera/VideoHal3Module$9;-><init>(Lcom/android/camera/VideoHal3Module;)V

    .line 917
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 918
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 903
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 905
    const/4 v1, 0x1

    goto :goto_1

    .line 920
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
    .line 1419
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setVideoShutterEnabled(Z)V

    .line 1431
    :goto_0
    return-void

    .line 1422
    :cond_0
    if-eqz p1, :cond_1

    .line 1423
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1426
    :cond_1
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->onReadyStateChanged(Z)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1428
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1429
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 926
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 928
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->takePictureNow()V

    .line 929
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 2646
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult - requestCode : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", permissions : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    array-length v0, p2

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", grantResults : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p3, :cond_0

    array-length v1, p3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2647
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 2648
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 2650
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2646
    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 406
    const-string v5, "pref_camera_screen_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 407
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 408
    .local v0, "currentValue":I
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 409
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f0803c4

    .line 410
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v0, v5, :cond_0

    const v5, 0x7f0803c6

    .line 411
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ne v0, v5, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 412
    .local v2, "isPIPOn":Z
    :cond_1
    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 413
    const v5, 0x7f0b0012

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 415
    .local v1, "index":I
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/camera/app/CameraAppUI;->showModeBlurCover(I)V

    .line 416
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/camera/app/CameraAppUI;->onCameraModeSelected(I)V

    .line 436
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "isPIPOn":Z
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_0
    return-void

    .line 419
    :cond_3
    const-string v5, "pref_camera_effect_mode_key"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-nez v5, :cond_2

    .line 420
    const-string v5, "default_scope"

    invoke-virtual {p1, v5, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v4

    .line 421
    .local v4, "state":Lcom/android/camera/effect/EffectChooseState;
    sget-object v5, Lcom/android/camera/VideoHal3Module$23;->$SwitchMap$com$android$camera$effect$EffectChooseState:[I

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 429
    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-nez v5, :cond_2

    .line 430
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 431
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->reopenCamera()V

    goto :goto_0

    .line 423
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mIsEffectEnabled:Z

    if-eqz v5, :cond_2

    .line 424
    invoke-virtual {p0, v2}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 425
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->reopenCamera()V

    goto :goto_0

    .line 421
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onShutterButtonClick()V
    .locals 14

    .prologue
    const-wide/32 v6, 0x2faf080

    .line 722
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 790
    :goto_0
    return-void

    .line 725
    :cond_0
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 727
    iget-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    if-nez v1, :cond_1

    .line 728
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 732
    :cond_1
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_2

    .line 733
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 737
    :cond_2
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 739
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v6

    if-gtz v1, :cond_3

    .line 740
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 741
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v12, v13}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    goto :goto_0

    .line 745
    :cond_3
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 747
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 749
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v1, :cond_7

    .line 751
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 753
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mMediaRecorderRecording:Z

    .line 755
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    goto :goto_0

    .line 756
    :cond_4
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 757
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "onShutterButtonClick ignore - mVideoController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 759
    :cond_5
    sub-long v8, v12, v6

    .line 760
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 764
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 766
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/VideoHal3Module;->mMediaRecorderRecording:Z

    .line 768
    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/VideoHal3Module$8;

    invoke-direct {v3, p0}, Lcom/android/camera/VideoHal3Module$8;-><init>(Lcom/android/camera/VideoHal3Module;)V

    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mIsLiveBroadcastEnabled:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->STREAMING:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    :goto_1
    iget-object v6, p0, Lcom/android/camera/VideoHal3Module;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 778
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 779
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 768
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/video/VideoFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 782
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 783
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 768
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .restart local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :cond_6
    :try_start_1
    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 788
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v8    # "remainingStorageBytes":J
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :cond_7
    sget-object v1, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, mVideoController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 712
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 713
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 691
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 695
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 696
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 699
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 700
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 701
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-nez v5, :cond_0

    .line 702
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 703
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 706
    iget-object v5, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 717
    iput-object p1, p0, Lcom/android/camera/VideoHal3Module;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 718
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1456
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/VideoHal3ModuleUI;->setPictureTakingProgress(I)V

    .line 1457
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1442
    return-void
.end method

.method public onVideoSnapShotButtonClick()V
    .locals 5

    .prologue
    .line 463
    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    if-eqz v2, :cond_0

    .line 485
    :goto_0
    return-void

    .line 464
    :cond_0
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 467
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v2, :cond_1

    .line 468
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mActivity is null"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v0

    .line 474
    .local v0, "storageSpaceBytes":J
    const-wide/32 v2, 0x2faf080

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    .line 475
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 479
    :cond_2
    const/4 v2, 0x6

    invoke-static {v2}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 480
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 481
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->takePictureNow()V

    goto :goto_0

    .line 483
    .end local v0    # "storageSpaceBytes":J
    :cond_3
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "onVideoSnapShotButtonClick ignore - mVideoController is not started"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1057
    sget-object v0, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1058
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    .line 1059
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1061
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1062
    iget-boolean v0, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_0

    .line 1088
    :goto_0
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 1067
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1068
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 1072
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->cancelCountDown()V

    .line 1074
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1079
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/VideoHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1080
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/app/CameraAppUI;->removeVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1081
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1083
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 1084
    invoke-virtual {p0}, Lcom/android/camera/VideoHal3Module;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1086
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->closeCamera()V

    .line 1087
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->resetTextureBufferSize()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 999
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1000
    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1053
    :goto_0
    return-void

    .line 1003
    :cond_0
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "VideoHal3Module.resume"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1005
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraIdStateChanged:Z

    if-eqz v2, :cond_2

    .line 1006
    iput-boolean v3, p0, Lcom/android/camera/VideoHal3Module;->mCameraIdStateChanged:Z

    .line 1007
    const-string v2, "reset camera id due to camera state changed."

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1008
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    .line 1009
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v4, "PhotoModule"

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1008
    invoke-direct {p0, v2}, Lcom/android/camera/VideoHal3Module;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1010
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1011
    const-string v2, "get Camera Facing"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1012
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    .line 1013
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iput-object v2, p0, Lcom/android/camera/VideoHal3Module;->mCurrentCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 1014
    const-string v2, "update Camera Characteristics"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1015
    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_2

    .line 1016
    sget-object v2, Lcom/android/camera/VideoHal3Module;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset camera id : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/VideoHal3Module;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1017
    const-string v2, "Error when reset camera id"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1012
    goto :goto_1

    .line 1022
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/VideoHal3Module;->mPaused:Z

    .line 1024
    invoke-virtual {p0, v3}, Lcom/android/camera/VideoHal3Module;->onReadyStateChanged(Z)V

    .line 1026
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/camera/VideoHal3Module;->mFirstPreviewArrived:Z

    if-nez v2, :cond_3

    .line 1027
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->updateAccount()Z

    .line 1028
    const-string v2, "LiveBroadcastManager updateAccount done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1035
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1037
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1038
    if-eqz v1, :cond_4

    .line 1039
    invoke-direct {p0}, Lcom/android/camera/VideoHal3Module;->initSurfaceTextureConsumer()V

    .line 1040
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1043
    :cond_4
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1044
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1045
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/camera/app/CameraAppUI;->addVideoSnapShotButtonListener(Lcom/android/camera/VideoSnapShotButton$OnVideoSnapShotButtonListener;)V

    .line 1049
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_5

    .line 1050
    iget-object v2, p0, Lcom/android/camera/VideoHal3Module;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1052
    :cond_5
    const-string v2, "resume end"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 794
    iput p1, p0, Lcom/android/camera/VideoHal3Module;->mOrientation:I

    .line 795
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 796
    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoHal3Module;->mUI:Lcom/android/camera/VideoHal3ModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/VideoHal3ModuleUI;->setOrientation(IZ)V

    .line 797
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
    .line 454
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1476
    iget-object v3, p0, Lcom/android/camera/VideoHal3Module;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1477
    :try_start_0
    iget v1, p0, Lcom/android/camera/VideoHal3Module;->mScreenWidth:I

    .line 1478
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/VideoHal3Module;->mScreenHeight:I

    .line 1479
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1480
    invoke-direct {p0, v1, v0}, Lcom/android/camera/VideoHal3Module;->updatePreviewTransform(II)V

    .line 1481
    return-void

    .line 1479
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
