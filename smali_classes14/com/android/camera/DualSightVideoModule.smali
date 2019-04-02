.class public Lcom/android/camera/DualSightVideoModule;
.super Lcom/android/camera/CameraModule;
.source "DualSightVideoModule.java"

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
        Lcom/android/camera/DualSightVideoModule$ModuleState;
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

.field private final mDimensionLock:Ljava/lang/Object;

.field private mDisplayRotation:I

.field private final mDoRecordRunnable:Ljava/lang/Runnable;

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsLiveBroadcastEnabled:Z

.field private mIsSecureCamera:Z

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

.field private mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

.field private mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMoveStarted:Z

.field private mNeedDoRecordRunnable:Z

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

.field private mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

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

.field private mUI:Lcom/android/camera/DualSightVideoModuleUI;

.field private mVideoController:Lcom/android/camera/video/VideoFacade;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 151
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DSVideoModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 153
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/DualSightVideoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 159
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/DualSightVideoModule;->CAPTURE_DEBUG_UI:Z

    .line 223
    new-instance v0, Lcom/android/camera/util/PermissionUtil$PermissionCode;

    const/16 v1, 0x1000

    const/16 v2, 0x1001

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/util/PermissionUtil$PermissionCode;-><init>(III)V

    sput-object v0, Lcom/android/camera/DualSightVideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 451
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/DualSightVideoModule;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 452
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 6
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 456
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 161
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mHandler:Landroid/os/Handler;

    .line 163
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mDimensionLock:Ljava/lang/Object;

    .line 185
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 190
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mHdrSceneEnabled:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mHdrPlusEnabled:Z

    .line 192
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 205
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mWatermarkEnabled:Z

    .line 206
    iput-boolean v5, p0, Lcom/android/camera/DualSightVideoModule;->mShutterSoundEnabled:Z

    .line 207
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mMoveStarted:Z

    .line 208
    iput v4, p0, Lcom/android/camera/DualSightVideoModule;->mOrientation:I

    .line 209
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 210
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    .line 211
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mNeedDoRecordRunnable:Z

    .line 212
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mCameraIdStateChanged:Z

    .line 214
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    .line 231
    new-instance v1, Lcom/android/camera/DualSightVideoModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$1;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mDoRecordRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v1, Lcom/android/camera/DualSightVideoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$2;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 252
    new-instance v1, Lcom/android/camera/DualSightVideoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$3;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 339
    new-instance v1, Lcom/android/camera/DualSightVideoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$4;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 406
    sget-object v1, Lcom/android/camera/DualSightVideoModule$ModuleState;->IDLE:Lcom/android/camera/DualSightVideoModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

    .line 408
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/DualSightVideoModule;->mZoomValue:F

    .line 411
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    .line 427
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/DualSightVideoModule;->mDisplayRotation:I

    .line 446
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 448
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAllocationLock:Ljava/lang/Object;

    .line 1442
    new-instance v1, Lcom/android/camera/DualSightVideoModule$14;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$14;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .line 457
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new DualSightVideoModule"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 458
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    .line 459
    iput-boolean v5, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    .line 460
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 461
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 462
    iput-boolean p2, p0, Lcom/android/camera/DualSightVideoModule;->mStickyGcamCamera:Z

    .line 463
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mOrientation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    .line 464
    new-instance v1, Lcom/android/camera/async/ConcurrentState;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/async/ConcurrentState;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    .line 465
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 466
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/DualSightVideoModule;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/DualSightVideoModule;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModule$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/DualSightVideoModule$ModuleState;)Lcom/android/camera/DualSightVideoModule$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/DualSightVideoModule$ModuleState;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/DualSightVideoModule;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/camera/DualSightVideoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/camera/DualSightVideoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mNeedDoRecordRunnable:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mNeedDoRecordRunnable:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mDoRecordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mCameraIdStateChanged:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mCameraIdStateChanged:Z

    return p1
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/stats/profiler/Profiler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/camera/DualSightVideoModule;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # I

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightVideoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/one/OneCamera$Facing;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera$Facing;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updateCameraCharacteristics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->resetTouchChangedState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/DualSightVideoModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLoginCallback:Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .param p2, "x2"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/camera/DualSightVideoModule;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/DualSightVideoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    return-object p1
.end method

.method static synthetic access$4402(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/DualSightVideoModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/camera/DualSightVideoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightVideoModule;->playSound(Z)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/camera/DualSightVideoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/DualSightVideoModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/DualSightVideoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/ConcurrentState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/DualSightVideoModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/camera/DualSightVideoModule;->mZoomValue:F

    return v0
.end method

.method static synthetic access$5202(Lcom/android/camera/DualSightVideoModule;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # F

    .prologue
    .line 141
    iput p1, p0, Lcom/android/camera/DualSightVideoModule;->mZoomValue:F

    return p1
.end method

.method static synthetic access$5300(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/DualSightVideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$5500(Lcom/android/camera/DualSightVideoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/camera/DualSightVideoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/android/camera/DualSightVideoModule;->mMoveStarted:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ui/PreviewStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->reopenCamera()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$6100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/video/VideoFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/video/VideoFacade;)Lcom/android/camera/video/VideoFacade;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;
    .param p1, "x1"    # Lcom/android/camera/video/VideoFacade;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewBufferSize()V

    return-void
.end method

.method private cancelCountDown()V
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->cancelCountDown()V

    .line 862
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 866
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 867
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 869
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
    .line 2423
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    .line 2425
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-nez v0, :cond_0

    .line 2426
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "chooseAccount fail : mLiveBroadcastManager is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2427
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    .line 2439
    :goto_0
    return-void

    .line 2431
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v0, p1}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isValidAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2432
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "chooseAccount success : The current account already login successfully"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2433
    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;->onLoginResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Z)V

    goto :goto_0

    .line 2437
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    sget-object v2, Lcom/android/camera/DualSightVideoModule;->mPermissionCode:Lcom/android/camera/util/PermissionUtil$PermissionCode;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/16 v4, 0x1003

    move-object v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->chooseAccount(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;Lcom/android/camera/util/PermissionUtil$PermissionCode;Landroid/app/Activity;ILcom/android/camera/livebroadcast/LiveBroadcastManager$LoginCallback;)Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2325
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "DualSightVideoModule.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2327
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2333
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_0

    .line 2334
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->release()V

    .line 2335
    iput-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    .line 2339
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 2340
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2341
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2342
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2343
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2344
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2345
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2346
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2349
    :cond_1
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2350
    invoke-virtual {p0, v5}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 2351
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/DualSightVideoModule$17;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightVideoModule$17;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2359
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2360
    return-void

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2349
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2350
    invoke-virtual {p0, v5}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 2351
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/DualSightVideoModule$17;

    invoke-direct {v4, p0}, Lcom/android/camera/DualSightVideoModule$17;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 7
    .param p1, "orientation"    # I

    .prologue
    .line 817
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getSessionTime()J

    move-result-wide v2

    .line 818
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 819
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 821
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 837
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/DualSightVideoModule;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 838
    return-object v6
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 842
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getSessionTime()J

    move-result-wide v2

    .line 843
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 844
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 846
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 848
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 849
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 848
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 850
    return-object v6
.end method

.method private createAndStartVideoCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 775
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-nez v0, :cond_1

    .line 809
    :cond_0
    :goto_0
    return-object v2

    .line 776
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getSessionTime()J

    move-result-wide v4

    .line 777
    .local v4, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 778
    .local v3, "profile":Landroid/media/CamcorderProfile;
    if-eqz v3, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 783
    .local v6, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, v5}, Lcom/android/camera/util/VideoUtil;->createName(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "title":Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewStreamingSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 786
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    :goto_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-nez v0, :cond_2

    .line 787
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v11, v0}, Lcom/android/camera/session/CaptureSession;->setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 789
    :cond_2
    new-instance v0, Lcom/android/camera/util/Size;

    iget v7, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v12, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v7, v12}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-interface {v11, v2, v0}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 793
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v7, "pref_camera_effect_mode_key"

    invoke-virtual {v0, v2, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v9

    .line 794
    .local v9, "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v2, "default_scope"

    const-string v7, "pref_camera_screen_key"

    invoke-virtual {v0, v2, v7}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 795
    .local v8, "currentValue":I
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 796
    .local v10, "res":Landroid/content/res/Resources;
    const v0, 0x7f0803c4

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_5

    .line 797
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/UsageStatistics;->setCurrentMode(I)V

    .line 798
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v9, v0, :cond_3

    .line 799
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v7, 0x6

    invoke-virtual {v0, v2, v7, v9}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    :cond_3
    :goto_2
    move-object v2, v11

    .line 809
    goto/16 :goto_0

    .line 784
    .end local v8    # "currentValue":I
    .end local v9    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .end local v10    # "res":Landroid/content/res/Resources;
    .end local v11    # "session":Lcom/android/camera/session/CaptureSession;
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v7, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v7}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v7

    invoke-interface/range {v0 .. v7}, Lcom/android/camera/session/CaptureSessionManager;->createNewVideoSession(Ljava/lang/String;Landroid/net/Uri;Landroid/media/CamcorderProfile;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    goto :goto_1

    .line 801
    .restart local v8    # "currentValue":I
    .restart local v9    # "effectChooseState":Lcom/android/camera/effect/EffectChooseState;
    .restart local v10    # "res":Landroid/content/res/Resources;
    .restart local v11    # "session":Lcom/android/camera/session/CaptureSession;
    :cond_5
    const v0, 0x7f0803c6

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    .line 802
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/stats/UsageStatistics;->setCurrentMode(I)V

    .line 803
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v9, v0, :cond_3

    .line 804
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const/4 v7, 0x7

    invoke-virtual {v0, v2, v7, v9}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    goto :goto_2
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 6
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 697
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 698
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_flashmode_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 700
    .local v0, "flashSetting":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 701
    .local v1, "gridLinesOn":Z
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 702
    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    int-to-float v2, v3

    .line 717
    .local v2, "timerDuration":F
    return-void
.end method

.method private getEffectChooseCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1470
    new-instance v0, Lcom/android/camera/DualSightVideoModule$15;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightVideoModule$15;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    return-object v0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

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

.method private getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1414
    new-instance v0, Lcom/android/camera/DualSightVideoModule$13;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightVideoModule$13;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    return-object v0
.end method

.method private getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 2

    .prologue
    .line 965
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 966
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 967
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
    .line 855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1398
    new-instance v0, Lcom/android/camera/DualSightVideoModule$12;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightVideoModule$12;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    return-object v0
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 917
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 918
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 916
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 920
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 921
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->reopenCamera()V

    .line 922
    return-void

    .line 920
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

    .line 1601
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1610
    :cond_0
    :goto_0
    return v1

    .line 1606
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1607
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1610
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

    .line 1608
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
    .line 1308
    const/4 v3, 0x0

    .line 1309
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/DualSightVideoModule$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1334
    :cond_0
    :goto_0
    return-void

    .line 1312
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1313
    iput-wide p2, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    .line 1314
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1319
    :pswitch_1
    const/4 v3, 0x1

    .line 1322
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1323
    iget-wide v8, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1324
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1325
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1326
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

    .line 1327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1326
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1328
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1329
    iget-object v7, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/DualSightVideoModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1330
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1326
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1309
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

    .line 1503
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

    sget-object v2, Lcom/android/camera/DualSightVideoModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/DualSightVideoModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1504
    sget-object v1, Lcom/android/camera/DualSightVideoModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/DualSightVideoModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mState:Lcom/android/camera/DualSightVideoModule$ModuleState;

    .line 1506
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1507
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1508
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1509
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1510
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1511
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/DualSightVideoModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1512
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightVideoModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1513
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 1514
    return-void

    .line 1511
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 23

    .prologue
    .line 1642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "DualSightVideoModule.openCameraAndStartPreview()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v19

    .line 1650
    .local v19, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v4, 0x9c4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1652
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Time out waiting to acquire camera-open lock."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    :catch_0
    move-exception v17

    .line 1655
    .local v17, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1658
    .end local v17    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_1

    .line 1662
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Camera already open, not re-opening."

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1664
    const-string v2, "Camera is already open"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2322
    :goto_0
    return-void

    .line 1668
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v16

    .line 1669
    .local v16, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v22

    .line 1670
    .local v22, "slaveCameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v16 .. v16}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1672
    .local v13, "cameraSettingScope":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    .line 1673
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLiveBroadcastEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsLiveBroadcastEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1676
    new-instance v21, Lcom/android/camera/async/Lifetime;

    invoke-direct/range {v21 .. v21}, Lcom/android/camera/async/Lifetime;-><init>()V

    .line 1682
    .local v21, "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    :goto_2
    invoke-virtual {v3, v2}, Lcom/android/camera/settings/ResolutionSetting;->getVideoProfile(I)Landroid/media/CamcorderProfile;

    move-result-object v15

    .line 1683
    .local v15, "camcorderProfile":Landroid/media/CamcorderProfile;
    const-string v2, "mCamcorderProfile.get"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1684
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-eqz v2, :cond_6

    const/16 v20, 0x0

    .line 1685
    .local v20, "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :goto_3
    const-string v2, "PersistentInputSurface.get"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1687
    sget-object v3, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPictureSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1688
    const-string v2, "mPictureSize.get"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    const/16 v3, 0x100

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedPictureSizes(I)Ljava/util/List;

    move-result-object v2

    iget v3, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v4, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2, v3, v4}, Lcom/android/camera/util/CameraUtil;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;II)Lcom/android/camera/util/Size;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    .line 1690
    sget-object v3, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlavePictureSize = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v2}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1691
    const-string v2, "mSlavePictureSize.get"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO_BROADCAST:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/DualSightVideoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    new-instance v10, Landroid/util/Range;

    iget v11, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v12, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v11}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/DualSightVideoModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {v2 .. v14}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1699
    .local v6, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v2, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1701
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-eqz v2, :cond_a

    .line 1702
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Abort Camera Opened due to Module Paused"

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1703
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1704
    const-string v2, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1672
    .end local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v20    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    .end local v21    # "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080309

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v3

    const-string v4, "default_scope"

    const-string v5, "pref_live_broadcast_choose_key"

    invoke-virtual {v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1682
    .restart local v21    # "persistentInputSurfaceLifetime":Lcom/android/camera/async/Lifetime;
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->is18x9Layout()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/product_utils/ProductUtil$Video;->EXTRA_QUALITY_MAP:Ljava/util/Map;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/android/camera/product_utils/ProductUtil$Video;->EXTRA_QUALITY_MAP:Ljava/util/Map;

    const/16 v4, 0x2718

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x2718

    goto/16 :goto_2

    :cond_5
    const/4 v2, 0x6

    goto/16 :goto_2

    .line 1684
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    :cond_6
    new-instance v20, Lcom/android/camera/video/PersistentInputSurface;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v15}, Lcom/android/camera/video/PersistentInputSurface;-><init>(Lcom/android/camera/async/Lifetime;Landroid/media/CamcorderProfile;)V
    :try_end_2
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 1693
    .end local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    :catch_1
    move-exception v18

    .line 1694
    .local v18, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 1695
    invoke-virtual/range {v21 .. v21}, Lcom/android/camera/async/Lifetime;->close()V

    .line 1696
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 1687
    .end local v18    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v15    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .restart local v20    # "persistentInputSurface":Lcom/android/camera/video/PersistentInputSurface;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1690
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1692
    :cond_9
    :try_start_3
    sget-object v3, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;
    :try_end_3
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    .line 1708
    .restart local v6    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v9

    new-instance v2, Lcom/android/camera/DualSightVideoModule$16;

    move-object/from16 v3, p0

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    move-object v7, v15

    move-object/from16 v8, v20

    invoke-direct/range {v2 .. v8}, Lcom/android/camera/DualSightVideoModule$16;-><init>(Lcom/android/camera/DualSightVideoModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/async/Lifetime;Lcom/android/camera/one/OneCameraCaptureSetting;Landroid/media/CamcorderProfile;Lcom/android/camera/video/PersistentInputSurface;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-interface {v9, v0, v1, v2}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private playSound(Z)V
    .locals 2
    .param p1, "recordStarted"    # Z

    .prologue
    .line 2470
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mShutterSoundEnabled:Z

    if-nez v0, :cond_0

    .line 2472
    :goto_0
    return-void

    .line 2471
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/MediaActionSound;->play(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private recordVideoNow()V
    .locals 14

    .prologue
    const-wide/32 v2, 0x2faf080

    .line 720
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 721
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Not record since Camera is closed."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 772
    :goto_0
    return-void

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v1, :cond_5

    .line 728
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v12

    .line 730
    .local v12, "storageSpaceBytes":J
    cmp-long v1, v12, v2

    if-gtz v1, :cond_1

    .line 731
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordVideoNow ignore - Not enough space or storage not ready. remaining="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 732
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1, v12, v13}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    goto :goto_0

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    goto :goto_0

    .line 739
    :cond_2
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v1}, Lcom/android/camera/video/VideoFacade;->isBurstStopping()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "recordVideoNow ignore - mVideoController not stop complete"

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 742
    :cond_3
    sub-long v8, v12, v2

    .line 743
    .local v8, "remainingStorageBytes":J
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recordVideoNow - remainingStorageBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    .line 747
    .local v5, "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {v1, v2}, Lcom/android/camera/one/v2/photo/ImageRotationCalculatorImpl;->from(Lcom/android/camera/app/OrientationManager;Lcom/android/camera/one/OneCameraCharacteristics;)Lcom/android/camera/one/v2/photo/ImageRotationCalculator;

    move-result-object v10

    .line 749
    .local v10, "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/DualSightVideoModule$7;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightVideoModule$7;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iget-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->STREAMING:Lcom/android/camera/burst/BurstFacade$BurstIntent;

    :goto_1
    iget-object v6, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 759
    invoke-interface {v6}, Lcom/android/camera/one/OneCamera;->getDirection()Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v6

    .line 760
    invoke-interface {v10}, Lcom/android/camera/one/v2/photo/ImageRotationCalculator;->toImageRotation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v7

    .line 749
    invoke-interface/range {v1 .. v9}, Lcom/android/camera/video/VideoFacade;->startBurst(Lcom/android/camera/async/MainThread;Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;Lcom/android/camera/burst/BurstFacade$BurstIntent;Lcom/android/camera/app/OrientationManager$DeviceOrientation;Lcom/android/camera/one/OneCamera$Facing;IJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 763
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :catch_0
    move-exception v0

    .line 764
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Cannot start record : "

    invoke-static {v1, v2, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 749
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .restart local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    :cond_4
    :try_start_1
    sget-object v4, Lcom/android/camera/burst/BurstFacade$BurstIntent;->VIDEO:Lcom/android/camera/burst/BurstFacade$BurstIntent;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 769
    .end local v5    # "deviceOrientation":Lcom/android/camera/app/OrientationManager$DeviceOrientation;
    .end local v8    # "remainingStorageBytes":J
    .end local v10    # "imageRotationCalculator":Lcom/android/camera/one/v2/photo/ImageRotationCalculator;
    .end local v12    # "storageSpaceBytes":J
    :cond_5
    sget-object v1, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v2, "Record fail, mVideoController not initial."

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 925
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 962
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 935
    :cond_1
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/DualSightVideoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$9;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1531
    sget-boolean v0, Lcom/android/camera/DualSightVideoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1532
    invoke-direct {p0, v0}, Lcom/android/camera/DualSightVideoModule;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1531
    :goto_0
    return v0

    .line 1532
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2399
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewBufferSize()V

    .line 2400
    return-void
.end method

.method private resetTouchChangedState()V
    .locals 3

    .prologue
    .line 2413
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    monitor-enter v1

    .line 2414
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mTouchChangedState:Lcom/android/camera/async/ConcurrentState;

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

    .line 2415
    monitor-exit v1

    .line 2416
    return-void

    .line 2414
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2415
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 2366
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2367
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2379
    :cond_0
    :goto_0
    return-void

    .line 2370
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2373
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2374
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->cancelCountDown()V

    .line 2375
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->clearFaces()V

    .line 2376
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 2378
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->initSurfaceTextureConsumer()V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1485
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1486
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1490
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1491
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1492
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1493
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1495
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1496
    return-void
.end method

.method private updateCameraCharacteristics()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 542
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 543
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 546
    :cond_0
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 547
    .local v1, "slaveCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 548
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 555
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v1    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    :goto_0
    return v2

    .line 551
    :catch_0
    move-exception v3

    .line 554
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 5

    .prologue
    .line 1619
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v2, :cond_0

    .line 1636
    :goto_0
    return-void

    .line 1623
    :cond_0
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v2}, Lcom/android/camera/video/VideoFacade;->getCamcorderProfile()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 1624
    .local v0, "camcorderProfile":Landroid/media/CamcorderProfile;
    :goto_1
    if-nez v0, :cond_2

    .line 1625
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v1

    .line 1626
    .local v1, "displaySize":Lcom/android/camera/util/Size;
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displaySize : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1627
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    .line 1628
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    .line 1635
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewBufferSize()V

    goto :goto_0

    .line 1623
    .end local v0    # "camcorderProfile":Landroid/media/CamcorderProfile;
    .end local v1    # "displaySize":Lcom/android/camera/util/Size;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1630
    .restart local v0    # "camcorderProfile":Landroid/media/CamcorderProfile;
    :cond_2
    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/camera/util/Size;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v2, v3}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1631
    .restart local v1    # "displaySize":Lcom/android/camera/util/Size;
    :goto_3
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    .line 1632
    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    goto :goto_2

    .line 1630
    .end local v1    # "displaySize":Lcom/android/camera/util/Size;
    :cond_3
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v1

    goto :goto_3
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 971
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 976
    :cond_0
    monitor-exit v1

    .line 977
    return-void

    .line 976
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
    .line 1521
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewTransform(IIZ)V

    .line 1522
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1541
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1543
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1544
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1546
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1548
    monitor-exit v3

    .line 1590
    :goto_0
    return-void

    .line 1551
    :cond_0
    iput v0, p0, Lcom/android/camera/DualSightVideoModule;->mDisplayRotation:I

    .line 1552
    iput p1, p0, Lcom/android/camera/DualSightVideoModule;->mScreenWidth:I

    .line 1553
    iput p2, p0, Lcom/android/camera/DualSightVideoModule;->mScreenHeight:I

    .line 1554
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewBufferDimension()V

    .line 1567
    sget-boolean v2, Lcom/android/camera/DualSightVideoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1569
    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1570
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1573
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1589
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

    .line 1575
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1580
    :cond_3
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1581
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1582
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1584
    :cond_4
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/DualSightVideoModule;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/DualSightVideoModule;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1587
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2, v1}, Lcom/android/camera/app/AppController;->updatePreviewTransform(Landroid/graphics/Matrix;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1071
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1072
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1074
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    .line 1077
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1080
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1082
    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 1083
    return-void

    .line 1080
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBottomBarSpec()Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1173
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1174
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1175
    new-instance v3, Lcom/android/camera/DualSightVideoModule$11;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightVideoModule$11;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1195
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getPowerStateManager()Lcom/android/camera/PowerStateManager;

    move-result-object v2

    .line 1196
    .local v2, "powerMgr":Lcom/android/camera/PowerStateManager;
    if-nez v2, :cond_1

    move v1, v5

    .line 1197
    .local v1, "isLowPower":Z
    :goto_0
    if-nez v1, :cond_2

    move v3, v4

    :goto_1
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableTorchFlash:Z

    .line 1198
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 1199
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1201
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->isSupportedSurroundSound()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-interface {v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getSupportedSurroundSound()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x3

    if-ge v3, v6, :cond_3

    :cond_0
    move v3, v4

    :goto_2
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1202
    iget-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mIsLiveBroadcastEnabled:Z

    if-nez v3, :cond_5

    move v3, v4

    :goto_3
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    .line 1203
    iget-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSoundFocus:Z

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getSoundFocusCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    :goto_4
    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->soundCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1205
    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mIsSecureCamera:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v4

    :goto_5
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableLiveBroadcast:Z

    .line 1206
    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mIsSecureCamera:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1207
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getLiveBroadcastCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->liveBroadcastCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1209
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v4

    :goto_6
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSettings:Z

    .line 1210
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_b

    move v3, v4

    :goto_7
    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1212
    iput-boolean v5, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1213
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1215
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    .line 1216
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getEffectChooseCallback()Landroid/view/View$OnClickListener;

    move-result-object v3

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    .line 1217
    sget-boolean v3, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mIsSecureCamera:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v3}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v3

    if-nez v3, :cond_d

    :goto_8
    iput-boolean v4, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1218
    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    iput-boolean v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1219
    return-object v0

    .line 1196
    .end local v1    # "isLowPower":Z
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/PowerStateManager;->isLowPower()Z

    move-result v1

    goto/16 :goto_0

    .restart local v1    # "isLowPower":Z
    :cond_2
    move v3, v5

    .line 1197
    goto/16 :goto_1

    :cond_3
    move v3, v5

    .line 1201
    goto/16 :goto_2

    :cond_4
    move v3, v4

    goto/16 :goto_2

    :cond_5
    move v3, v5

    .line 1202
    goto :goto_3

    .line 1203
    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    move v3, v5

    .line 1205
    goto :goto_5

    :cond_8
    move v3, v5

    goto :goto_5

    :cond_9
    move v3, v5

    .line 1209
    goto :goto_6

    :cond_a
    move v3, v4

    goto :goto_6

    :cond_b
    move v3, v5

    .line 1210
    goto :goto_7

    :cond_c
    move v3, v4

    goto :goto_7

    :cond_d
    move v4, v5

    .line 1217
    goto :goto_8
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 377
    sget-object v0, Lcom/android/camera/DualSightVideoModule$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 385
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 379
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 381
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 383
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 377
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
    .line 1108
    new-instance v0, Lcom/android/camera/DualSightVideoModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightVideoModule$10;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1349
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2409
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1097
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1100
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1101
    const-string v0, "PhotoModule"

    invoke-static {v0}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1102
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1101
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 13
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 560
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v11, "DualSightVideoModule.init"

    invoke-interface {v10, v11}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v5

    .line 561
    .local v5, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 562
    iput-boolean p2, p0, Lcom/android/camera/DualSightVideoModule;->mIsSecureCamera:Z

    .line 563
    sget-object v10, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init UseAutotransformUiLayout = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v12, Lcom/android/camera/DualSightVideoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 566
    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "PhotoModule"

    invoke-static {v11}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_camera_id_key"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 565
    invoke-direct {p0, v10}, Lcom/android/camera/DualSightVideoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 567
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v11, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v10, v11, :cond_1

    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    iput-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 569
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v10, v11}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 570
    .local v1, "cameraId":Lcom/android/camera/device/CameraId;
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v10, v11}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v8

    .line 571
    .local v8, "slaveCameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "cameraSettingScope":Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 573
    .local v9, "slavecameraSettingScope":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {v10, v2, v11}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 574
    .local v0, "cameraFlashIndex":I
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {v10, v9, v11}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 575
    .local v7, "slaveCameraFlashIndex":I
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v11, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-eq v10, v11, :cond_2

    .line 576
    if-eq v7, v0, :cond_0

    .line 577
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {v10, v2, v11, v7}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    .line 584
    :cond_0
    :goto_1
    const-string v10, "get Camera Facing"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updateCameraCharacteristics()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    iput-boolean v10, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    .line 586
    const-string v10, "update Camera Characteristics"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 587
    iget-boolean v10, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    if-eqz v10, :cond_4

    .line 588
    sget-object v10, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "init : mShowErrorAndFinish = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 589
    const-string v10, "Error"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 623
    :goto_3
    return-void

    .line 567
    .end local v0    # "cameraFlashIndex":I
    .end local v1    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v2    # "cameraSettingScope":Ljava/lang/String;
    .end local v7    # "slaveCameraFlashIndex":I
    .end local v8    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .end local v9    # "slavecameraSettingScope":Ljava/lang/String;
    :cond_1
    sget-object v10, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto/16 :goto_0

    .line 580
    .restart local v0    # "cameraFlashIndex":I
    .restart local v1    # "cameraId":Lcom/android/camera/device/CameraId;
    .restart local v2    # "cameraSettingScope":Ljava/lang/String;
    .restart local v7    # "slaveCameraFlashIndex":I
    .restart local v8    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    .restart local v9    # "slavecameraSettingScope":Ljava/lang/String;
    :cond_2
    if-eq v7, v0, :cond_0

    .line 581
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "pref_camera_video_flashmode_key"

    invoke-virtual {v10, v9, v11, v0}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 585
    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    .line 593
    :cond_4
    new-instance v10, Lcom/android/camera/DualSightVideoModuleUI;

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v12, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v12}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-direct {v10, p1, v11, v12}, Lcom/android/camera/DualSightVideoModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    .line 594
    const-string v10, "DualSightVideoModuleUI.init"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 595
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v10, v11}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 596
    const-string v10, "PreviewStatusListener.init"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 598
    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v11

    .line 599
    :try_start_0
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 600
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    const-string v10, "PreviewSurfaceTexture.init"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 603
    const v10, 0x7f0f00ba

    invoke-virtual {p1, v10}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 604
    .local v3, "cancelButton":Landroid/view/View;
    new-instance v10, Lcom/android/camera/DualSightVideoModule$6;

    invoke-direct {v10, p0}, Lcom/android/camera/DualSightVideoModule$6;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    invoke-virtual {v3, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 611
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    const-string v11, "default_scope"

    const-string v12, "pref_camera_screen_key"

    invoke-virtual {v10, v11, v12}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 612
    .local v4, "currentValue":I
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v10}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 613
    .local v6, "res":Landroid/content/res/Resources;
    const v10, 0x7f0803c4

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v4, v10, :cond_6

    .line 614
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080138

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 619
    :cond_5
    :goto_4
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getLiveBroadcastManager()Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    .line 620
    const-string v10, "mLiveBroadcastManager.init"

    invoke-interface {v5, v10}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 622
    invoke-interface {v5}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_3

    .line 600
    .end local v3    # "cancelButton":Landroid/view/View;
    .end local v4    # "currentValue":I
    .end local v6    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 615
    .restart local v3    # "cancelButton":Landroid/view/View;
    .restart local v4    # "currentValue":I
    .restart local v6    # "res":Landroid/content/res/Resources;
    :cond_6
    const v10, 0x7f0803c6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-ne v4, v10, :cond_5

    .line 616
    iget-object v10, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v10}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v10

    iget-object v11, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v11}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f080136

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 2419
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

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
    .line 1224
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2404
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 2443
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2444
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 2445
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onActivityResult(IILandroid/content/Intent;)Z

    .line 2451
    :cond_0
    :goto_0
    return-void

    .line 2447
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    if-eqz v0, :cond_0

    .line 2448
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mLoginAccountType:Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->onActivityResult(Lcom/android/camera/livebroadcast/LiveBroadcastManager$AccountType;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 2463
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2464
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    move-result v0

    .line 2466
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
    .line 1093
    return-void
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 470
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 471
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/DualSightVideoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightVideoModule$5;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 523
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightVideoModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/DualSightVideoModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 526
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 527
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModuleUI;->loadModuleLayout()V

    .line 536
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 537
    :cond_2
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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
    .line 1273
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1275
    sget-object v0, Lcom/android/camera/DualSightVideoModule$18;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1301
    :goto_1
    sget-boolean v0, Lcom/android/camera/DualSightVideoModule;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1302
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/DualSightVideoModule;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1277
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1280
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1283
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1287
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1291
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1294
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1275
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

    .line 1229
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1248
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1230
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1248
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1233
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightVideoModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1234
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->cancelCountDown()V

    goto :goto_0

    .line 1235
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1237
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1238
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1239
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isTutorialShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1230
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

    .line 1253
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1265
    :cond_0
    :goto_0
    return v0

    .line 1254
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1265
    const/4 v0, 0x0

    goto :goto_0

    .line 1257
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1258
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1259
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1260
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isTutorialShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1261
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1254
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
    .line 1087
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1088
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1365
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1366
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1361
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/DualSightVideoModule;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1381
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1376
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 873
    iget-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 904
    :goto_0
    return-void

    .line 874
    :cond_0
    const/4 v1, 0x0

    .line 876
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_1
    new-instance v2, Lcom/android/camera/DualSightVideoModule$8;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightVideoModule$8;-><init>(Lcom/android/camera/DualSightVideoModule;)V

    .line 899
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 900
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 877
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 878
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 879
    const/4 v1, 0x1

    goto :goto_1

    .line 902
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
    .line 1338
    if-eqz p1, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->onReadyStateChanged(Z)V

    .line 1342
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1343
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1344
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1345
    return-void
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 908
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 910
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->recordVideoNow()V

    .line 911
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 2455
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 2456
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    if-eqz v0, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mRequestAccountPermission:Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/livebroadcast/LiveBroadcastManager$RequestAccountPermission;->onRequestPermissionsResult(I[Ljava/lang/String;[I)Z

    .line 2459
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 2455
    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 7
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 355
    const-string v3, "pref_camera_screen_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 356
    const-string v3, "default_scope"

    invoke-virtual {p1, v3, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 357
    .local v0, "currentValue":I
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 358
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0803c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_1

    .line 359
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 360
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->showModeBlurCover(I)V

    .line 361
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->onCameraModeSelected(I)V

    .line 373
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 362
    .restart local v0    # "currentValue":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_1
    const v3, 0x7f0803c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080138

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 364
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_VIDEO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    goto :goto_0

    .line 365
    :cond_2
    const v3, 0x7f0803c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080136

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_0

    .line 368
    .end local v0    # "currentValue":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    const-string v3, "pref_camera_video_flashmode_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getSlaveCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_video_flashmode_key"

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v5}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "pref_camera_video_flashmode_key"

    invoke-virtual {p1, v5, v6}, Lcom/android/camera/settings/SettingsManager;->getIndexOfCurrentValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/camera/settings/SettingsManager;->setValueByIndex(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 2

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v0, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onShutterButtonClick"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 663
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    if-nez v0, :cond_2

    .line 664
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 666
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/GoogleAssistantManager;->showRecordVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mNeedDoRecordRunnable:Z

    goto :goto_0

    .line 673
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v0, :cond_3

    .line 674
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_3
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mMoveStarted:Z

    if-eqz v0, :cond_4

    .line 678
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onShutterButtonClick ignore - mMoveStarted "

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 684
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 686
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->recordVideoNow()V

    goto :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 648
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 649
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 627
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 631
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 632
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 635
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 636
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 637
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 638
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 639
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 642
    iget-object v5, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 653
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 654
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightVideoModuleUI;->setPictureTakingProgress(I)V

    .line 1371
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1356
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1037
    sget-object v0, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    .line 1039
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1041
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraActivity;->enableKeepScreenOn(Z)V

    .line 1042
    iget-boolean v0, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_0

    .line 1067
    :goto_0
    return-void

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    if-eqz v0, :cond_1

    .line 1047
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->isBurstRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mVideoController:Lcom/android/camera/video/VideoFacade;

    invoke-interface {v0}, Lcom/android/camera/video/VideoFacade;->stopBurst()Z

    .line 1052
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->cancelCountDown()V

    .line 1054
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1058
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1059
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1060
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1062
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 1063
    invoke-virtual {p0}, Lcom/android/camera/DualSightVideoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1065
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->closeCamera()V

    .line 1066
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->resetTextureBufferSize()V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 981
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 982
    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 985
    :cond_0
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "DualSightVideoModule.resume"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 987
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraIdStateChanged:Z

    if-eqz v2, :cond_3

    .line 988
    iput-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mCameraIdStateChanged:Z

    .line 989
    const-string v2, "reset camera id due to camera state changed."

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 990
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 991
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v4, "PhotoModule"

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getModuleSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 990
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightVideoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 992
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_1
    iput-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 993
    const-string v2, "get Camera Facing"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 994
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    .line 995
    const-string v2, "update Camera Characteristics"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 996
    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_3

    .line 997
    sget-object v2, Lcom/android/camera/DualSightVideoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset camera id : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/DualSightVideoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 998
    const-string v2, "Error when reset camera id"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 992
    :cond_1
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 994
    goto :goto_2

    .line 1003
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/DualSightVideoModule;->mPaused:Z

    .line 1005
    invoke-virtual {p0, v3}, Lcom/android/camera/DualSightVideoModule;->onReadyStateChanged(Z)V

    .line 1007
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->isDisable()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/camera/DualSightVideoModule;->mFirstPreviewArrived:Z

    if-nez v2, :cond_4

    .line 1008
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mLiveBroadcastManager:Lcom/android/camera/livebroadcast/LiveBroadcastManager;

    invoke-virtual {v2}, Lcom/android/camera/livebroadcast/LiveBroadcastManager;->updateAccount()Z

    .line 1009
    const-string v2, "LiveBroadcastManager updateAccount done"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1016
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1018
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1019
    if-eqz v1, :cond_5

    .line 1020
    invoke-direct {p0}, Lcom/android/camera/DualSightVideoModule;->initSurfaceTextureConsumer()V

    .line 1021
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1024
    :cond_5
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1025
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1029
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_6

    .line 1030
    iget-object v2, p0, Lcom/android/camera/DualSightVideoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1032
    :cond_6
    const-string v2, "resume end"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 2
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 691
    iput p1, p0, Lcom/android/camera/DualSightVideoModule;->mOrientation:I

    .line 692
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mOrientationState:Lcom/android/camera/async/ConcurrentState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/async/ConcurrentState;->update(Ljava/lang/Object;)V

    .line 693
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule;->mUI:Lcom/android/camera/DualSightVideoModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/DualSightVideoModuleUI;->setOrientation(IZ)V

    .line 694
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
    .line 391
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1390
    iget-object v3, p0, Lcom/android/camera/DualSightVideoModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1391
    :try_start_0
    iget v1, p0, Lcom/android/camera/DualSightVideoModule;->mScreenWidth:I

    .line 1392
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/DualSightVideoModule;->mScreenHeight:I

    .line 1393
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1394
    invoke-direct {p0, v1, v0}, Lcom/android/camera/DualSightVideoModule;->updatePreviewTransform(II)V

    .line 1395
    return-void

    .line 1393
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
