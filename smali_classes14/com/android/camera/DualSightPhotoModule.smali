.class public Lcom/android/camera/DualSightPhotoModule;
.super Lcom/android/camera/CameraModule;
.source "DualSightPhotoModule.java"

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
        Lcom/android/camera/DualSightPhotoModule$ModuleState;,
        Lcom/android/camera/DualSightPhotoModule$MainHandler;
    }
.end annotation


# static fields
.field private static final BURST_SESSIONS_DIR:Ljava/lang/String; = "burst_sessions"

.field private static final CAMERA_OPEN_CLOSE_TIMEOUT_MILLIS:I = 0x9c4

.field private static final CAPTURE_DEBUG_UI:Z

.field private static final MAX_QUEUE_SIZE:I = 0x2

.field private static final MSG_FIRST_TIME_INIT:I = 0x1

.field private static final MSG_RESET_TWICESHOT_AREA:I = 0x4

.field private static final MSG_SET_CAMERA_PARAMETERS_WHEN_IDLE:I = 0x2

.field private static final MSG_UPDATE_COVER:I = 0x3

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

.field private mCameraIdStateChanged:Z

.field private final mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

.field private mCoverHeight:I

.field private final mDimensionLock:Ljava/lang/Object;

.field private mDisableRefreshThumbnail:Z

.field private mDisplayRotation:I

.field private final mDoSnapRunnable:Ljava/lang/Runnable;

.field public mDownImage:Landroid/graphics/Bitmap;

.field private mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

.field private mFinalPreviewBitmap:Landroid/graphics/Bitmap;

.field private mFirstPreviewArrived:Z

.field private mFocusController:Lcom/android/camera/ui/focus/FocusController;

.field private mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

.field private final mHandler:Landroid/os/Handler;

.field private mHdrPlusEnabled:Z

.field private mHdrSceneEnabled:Z

.field private mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

.field private mIsTSFirstShot:Z

.field private mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

.field private final mMainThread:Lcom/android/camera/async/MainThread;

.field private mMediaActionSound:Landroid/media/MediaActionSound;

.field private mMoveStarted:Z

.field private mOrientation:I

.field private mPaused:Z

.field private final mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

.field private mPictureSize:Lcom/android/camera/util/Size;

.field private mPrevPhotoData:[B

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

.field private mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

.field private mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

.field private mSlavePictureSize:Lcom/android/camera/util/Size;

.field private mSoundPlayer:Lcom/android/camera/SoundPlayer;

.field private mSoundPlayerLoaded:Z

.field private mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

.field private final mStickyGcamCamera:Z

.field private final mSurfaceTextureLock:Ljava/lang/Object;

.field private mTSShutterDisable:Z

.field private mTwiceShotBtnOn:Z

.field private mUI:Lcom/android/camera/DualSightPhotoModuleUI;

.field public mUpperImage:Landroid/graphics/Bitmap;

.field private mWatermarkEnabled:Z

.field private mZoomValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "DSPhotoModule"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 128
    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    sput-boolean v0, Lcom/android/camera/DualSightPhotoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    .line 134
    invoke-static {}, Lcom/android/camera/debug/DebugPropertyHelper;->showCaptureDebugUI()Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/DualSightPhotoModule;->CAPTURE_DEBUG_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;)V
    .locals 1
    .param p1, "appController"    # Lcom/android/camera/app/AppController;

    .prologue
    .line 492
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/DualSightPhotoModule;-><init>(Lcom/android/camera/app/AppController;Z)V

    .line 493
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/app/AppController;Z)V
    .locals 7
    .param p1, "appController"    # Lcom/android/camera/app/AppController;
    .param p2, "stickyHdr"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 497
    invoke-direct {p0, p1}, Lcom/android/camera/CameraModule;-><init>(Lcom/android/camera/app/AppController;)V

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mDimensionLock:Ljava/lang/Object;

    .line 140
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$MainHandler;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$MainHandler;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v1, Ljava/util/concurrent/Semaphore;

    invoke-direct {v1, v5, v5}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    .line 171
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mHdrSceneEnabled:Z

    .line 172
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mHdrPlusEnabled:Z

    .line 173
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    .line 179
    iput-object v6, p0, Lcom/android/camera/DualSightPhotoModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 186
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mWatermarkEnabled:Z

    .line 187
    iput-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mShutterSoundEnabled:Z

    .line 188
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mMoveStarted:Z

    .line 189
    iput v4, p0, Lcom/android/camera/DualSightPhotoModule;->mOrientation:I

    .line 190
    sget-object v1, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 191
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mFirstPreviewArrived:Z

    .line 192
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraIdStateChanged:Z

    .line 195
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$1;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$1;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    .line 204
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    .line 208
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mTSShutterDisable:Z

    .line 214
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$2;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$2;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    .line 226
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$3;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$3;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    .line 310
    new-instance v1, Lcom/android/camera/DualSightPhotoModule$4;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$4;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    .line 441
    sget-object v1, Lcom/android/camera/DualSightPhotoModule$ModuleState;->IDLE:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    .line 443
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/camera/DualSightPhotoModule;->mZoomValue:F

    .line 446
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    .line 456
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    .line 465
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/DualSightPhotoModule;->mDisplayRotation:I

    .line 482
    invoke-static {}, Lcom/android/camera/stats/profiler/Profilers;->instance()Lcom/android/camera/stats/profiler/Profilers;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/stats/profiler/Profilers;->guard()Lcom/android/camera/stats/profiler/GuardingProfiler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    .line 484
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAllocationLock:Ljava/lang/Object;

    .line 486
    iput-object v6, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    .line 487
    iput-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 488
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 498
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v2, "new DualSightPhotoModule"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 499
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mFirstPreviewArrived:Z

    .line 500
    iput-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    .line 501
    invoke-static {}, Lcom/android/camera/async/MainThread;->create()Lcom/android/camera/async/MainThread;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    .line 502
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 503
    iput-boolean p2, p0, Lcom/android/camera/DualSightPhotoModule;->mStickyGcamCamera:Z

    .line 504
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 505
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/focus/FocusController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/DualSightPhotoModule;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewTransform(IIZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/app/AppController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->resetTwiceShotArea()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/async/MainThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/RectF;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Landroid/graphics/RectF;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->updateCoverHeight(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAllocationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/camera/DualSightPhotoModule;)Landroid/media/MediaActionSound;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/camera/DualSightPhotoModule;Landroid/media/MediaActionSound;)Landroid/media/MediaActionSound;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Landroid/media/MediaActionSound;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/SoundPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/SoundPlayer;)Lcom/android/camera/SoundPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/SoundPlayer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/hardware/HeadingSensor;)Lcom/android/camera/hardware/HeadingSensor;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/hardware/HeadingSensor;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 115
    sget-boolean v0, Lcom/android/camera/DualSightPhotoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShutterSoundEnabled:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mShutterSoundEnabled:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mWatermarkEnabled:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mHdrPlusEnabled:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mHdrSceneEnabled:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mStickyGcamCamera:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFirstPreviewArrived:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mFirstPreviewArrived:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/CameraActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->previewHalfBitmapCaptureHandler(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300()Lcom/android/camera/debug/Log$Tag;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/DualSightPhotoModule;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFinalPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/camera/DualSightPhotoModule;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # [B

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/camera/DualSightPhotoModule;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->openCameraAndStartPreview()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraIdStateChanged:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/camera/DualSightPhotoModule;I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updateEffectBeautyZoomUI()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/camera/DualSightPhotoModule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->onBeautyStateChanged(I)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->hideEffectAndShowBeautyOrZoomIfNeeded()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/one/OneCamera;)Lcom/android/camera/one/OneCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/one/OneCamera;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/camera/DualSightPhotoModule;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/camera/DualSightPhotoModule;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/DualSightPhotoModule;->mZoomValue:F

    return v0
.end method

.method static synthetic access$4402(Lcom/android/camera/DualSightPhotoModule;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # F

    .prologue
    .line 115
    iput p1, p0, Lcom/android/camera/DualSightPhotoModule;->mZoomValue:F

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewBufferDimension()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/PreviewRenderer;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/opengl/PreviewRenderer;)Lcom/android/camera/opengl/PreviewRenderer;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/opengl/PreviewRenderer;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    return-object p1
.end method

.method static synthetic access$4700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/one/OneCameraCharacteristics;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/DualSightPhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    return v0
.end method

.method static synthetic access$4900(Lcom/android/camera/DualSightPhotoModule;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModuleUI;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/DualSightPhotoModule;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$5102(Lcom/android/camera/DualSightPhotoModule;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/camera/DualSightPhotoModule;->mMoveStarted:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/camera/DualSightPhotoModule;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isDualSightHalfAndHalf()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshBeautyBarUI()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/camera/DualSightPhotoModule;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/opengl/dualsight/DualSightMode;)Lcom/android/camera/opengl/dualsight/DualSightMode;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/opengl/dualsight/DualSightMode;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    return-object p1
.end method

.method static synthetic access$5600(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/util/Size;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/ui/PreviewStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->onPreviewStarted()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->reopenCamera()V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/camera/DualSightPhotoModule;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->closeCamera()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewBufferSize()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/camera/DualSightPhotoModule;)Lcom/android/camera/DualSightPhotoModule$ModuleState;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/DualSightPhotoModule$ModuleState;)Lcom/android/camera/DualSightPhotoModule$ModuleState;
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/DualSightPhotoModule;
    .param p1, "x1"    # Lcom/android/camera/DualSightPhotoModule$ModuleState;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    return-object p1
.end method

.method private cancelCountDown()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1198
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->cancelCountDown()V

    .line 1201
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1202
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    if-eqz v0, :cond_1

    .line 1203
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] cancelCountDown - first shot"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1204
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1205
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1206
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1207
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    .line 1222
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] cancelCountDown - second shot"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1212
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->hideOperationsAfterFirstTS()V

    .line 1213
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    goto :goto_0

    .line 1216
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1217
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1218
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    goto :goto_0
.end method

.method private closeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2403
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v3, "DualSightPhotoModule.closeCamera()"

    invoke-interface {v2, v3}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v1

    .line 2405
    .local v1, "profile":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2409
    const-string v2, "mCameraOpenCloseLock.acquire()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2412
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v2, :cond_0

    .line 2413
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFocusStateListener(Lcom/android/camera/one/OneCamera$FocusStateListener;)V

    .line 2414
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 2415
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setFaceDetectionListener(Lcom/android/camera/one/OneCamera$FaceDetectionListener;)V

    .line 2416
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCamera;->setReadyStateChangedListener(Lcom/android/camera/one/OneCamera$ReadyStateChangedListener;)V

    .line 2417
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v3}, Lcom/android/camera/one/OneCamera;->getCameraId()Lcom/android/camera/device/CameraId;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/OneCameraProvider;->releaseCamera(Lcom/android/camera/device/CameraId;)V

    .line 2418
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    .line 2419
    const-string v2, "mCamera.close()"

    invoke-interface {v1, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2422
    :cond_0
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2423
    invoke-virtual {p0, v4}, Lcom/android/camera/DualSightPhotoModule;->onReadyStateChanged(Z)V

    .line 2424
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v3, Lcom/android/camera/DualSightPhotoModule$15;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightPhotoModule$15;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    invoke-virtual {v2, v3}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 2432
    invoke-interface {v1}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    .line 2433
    return-void

    .line 2406
    :catch_0
    move-exception v0

    .line 2407
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Interrupted while waiting to acquire camera-open lock."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2422
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v3}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2423
    invoke-virtual {p0, v4}, Lcom/android/camera/DualSightPhotoModule;->onReadyStateChanged(Z)V

    .line 2424
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    new-instance v4, Lcom/android/camera/DualSightPhotoModule$15;

    invoke-direct {v4, p0}, Lcom/android/camera/DualSightPhotoModule$15;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    throw v2
.end method

.method private createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;
    .locals 13
    .param p1, "orientation"    # I

    .prologue
    .line 1081
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "createAndStartCaptureSession"

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1082
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->getSessionTime()J

    move-result-wide v2

    .line 1083
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1084
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createJpegName(J)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1086
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v10

    .line 1102
    .local v10, "session":Lcom/android/camera/session/CaptureSession;
    sget-object v0, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setCaptureMode(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 1103
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1104
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v5, "default_scope"

    const-string v12, "pref_camera_effect_mode_key"

    invoke-virtual {v0, v5, v12}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1103
    invoke-static {v0}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v11

    .line 1105
    .local v11, "state":Lcom/android/camera/effect/EffectChooseState;
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v7

    .line 1106
    .local v7, "isBeautyOn":Z
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-ne v11, v0, :cond_0

    if-eqz v7, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setPreviewOnly(Z)V

    .line 1109
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setDisableSessionReturnData(Z)V

    .line 1112
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_2
    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setForceHideThumbnail(Z)V

    .line 1114
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[TS] getDualSightMode:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v12, p0, Lcom/android/camera/DualSightPhotoModule;->mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v12}, Lcom/android/camera/opengl/PreviewRenderer;->getDualSightMode()Lcom/android/camera/opengl/dualsight/DualSightMode;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDualSightMode:Lcom/android/camera/opengl/dualsight/DualSightMode;

    sget-object v5, Lcom/android/camera/opengl/dualsight/DualSightMode;->MAIN_DOWN_SLAVE_UP:Lcom/android/camera/opengl/dualsight/DualSightMode;

    if-ne v0, v5, :cond_7

    .line 1117
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCaptureUpFirst()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_3
    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setMainCamera(Z)V

    .line 1122
    :goto_4
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setPrevPhoto([B)V

    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    .line 1126
    sget-object v0, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-eq v11, v0, :cond_2

    .line 1127
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v5, "default_scope"

    const-string v12, "pref_camera_screen_key"

    invoke-virtual {v0, v5, v12}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1128
    .local v6, "currentValue":I
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1129
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 1130
    .local v8, "mode":Ljava/lang/Integer;
    const v0, 0x7f0803c4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_8

    .line 1131
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1135
    :cond_1
    :goto_5
    invoke-static {}, Lcom/android/camera/stats/UsageStatistics;->instance()Lcom/android/camera/stats/UsageStatistics;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v0, v5, v12, v11}, Lcom/android/camera/stats/UsageStatistics;->faceEffectDoneEvent(Lcom/android/camera/app/AppController;ILcom/android/camera/effect/EffectChooseState;)V

    .line 1139
    .end local v6    # "currentValue":I
    .end local v8    # "mode":Ljava/lang/Integer;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    new-instance v0, Lcom/android/camera/stats/CaptureStats;

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mHdrPlusEnabled:Z

    invoke-direct {v0, v5}, Lcom/android/camera/stats/CaptureStats;-><init>(Z)V

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-interface {v10, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1140
    return-object v10

    .line 1106
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1109
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1112
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 1117
    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    .line 1119
    :cond_7
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->isCaptureUpFirst()Z

    move-result v0

    invoke-interface {v10, v0}, Lcom/android/camera/session/CaptureSession;->setMainCamera(Z)V

    goto :goto_4

    .line 1132
    .restart local v6    # "currentValue":I
    .restart local v8    # "mode":Ljava/lang/Integer;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_8
    const v0, 0x7f0803c6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v6, v0, :cond_1

    .line 1133
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_5
.end method

.method private createAndStartUntrackedCaptureSession()Lcom/android/camera/session/CaptureSession;
    .locals 9

    .prologue
    .line 1144
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->getSessionTime()J

    move-result-wide v2

    .line 1145
    .local v2, "sessionTime":J
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getLocationManager()Lcom/android/camera/app/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 1146
    .local v4, "location":Landroid/location/Location;
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->instance()Lcom/android/camera/util/CameraUtil;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/util/CameraUtil;->createBurstFolderName(J)Ljava/lang/String;

    move-result-object v1

    .line 1147
    .local v1, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v0

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1148
    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSessionListener()Lcom/android/camera/session/CaptureSessionManager$SessionListener;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/session/CaptureSessionManager;->createNewBurstSession(Ljava/lang/String;JLandroid/location/Location;Lcom/android/camera/session/CaptureSessionManager$SessionListener;)Lcom/android/camera/session/CaptureSession;

    move-result-object v6

    .line 1150
    .local v6, "session":Lcom/android/camera/session/CaptureSession;
    const/4 v0, 0x0

    new-instance v5, Lcom/android/camera/util/Size;

    iget-object v7, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewArea:Landroid/graphics/RectF;

    .line 1151
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v5, v7, v8}, Lcom/android/camera/util/Size;-><init>(II)V

    .line 1150
    invoke-interface {v6, v0, v5}, Lcom/android/camera/session/CaptureSession;->startEmpty(Lcom/android/camera/session/CaptureSession$ImageLifecycleListener;Lcom/android/camera/util/Size;)V

    .line 1152
    return-object v6
.end method

.method private decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V
    .locals 14
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 775
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 777
    .local v8, "flashSetting":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->areGridLinesOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v9

    .line 778
    .local v9, "gridLinesOn":Z
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_countdown_duration_key"

    .line 779
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-float v13, v0

    .line 782
    .local v13, "timerDuration":F
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_screen_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 783
    .local v7, "currentValue":I
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 784
    .local v12, "res":Landroid/content/res/Resources;
    const/4 v11, 0x0

    .line 785
    .local v11, "mode":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_beauty_level_key"

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v4, 0x7f08035f

    .line 786
    invoke-virtual {v3, v4}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 785
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v6

    .line 787
    .local v6, "beautyLevel":I
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v10

    .line 788
    .local v10, "isBeautyOn":Z
    const v0, 0x7f0803c4

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_1

    .line 789
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 794
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    .line 795
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 794
    invoke-virtual {v0, v1, v6, v10}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeBeautyCaptureRequest(IIZ)V

    .line 800
    invoke-interface {p1}, Lcom/android/camera/session/CaptureSession;->getCollector()Lcom/android/camera/stats/CaptureSessionStatsCollector;

    move-result-object v0

    .line 801
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "0"

    iget-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mWatermarkEnabled:Z

    const-wide/16 v4, 0x1

    .line 800
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/stats/CaptureSessionStatsCollector;->decorateAtTimeCaptureRequest(ILjava/lang/String;ZJ)V

    .line 807
    return-void

    .line 790
    :cond_1
    const v0, 0x7f0803c6

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_0

    .line 791
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0
.end method

.method private doTwiceShotFinishAnim(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 2685
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v0

    .line 2686
    .local v0, "orientation":I
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v2, :cond_0

    .line 2687
    rsub-int v2, v0, 0x168

    int-to-float v2, v2

    invoke-virtual {p0, p1, v2}, Lcom/android/camera/DualSightPhotoModule;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2688
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v2, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->finishCaptureShow(Landroid/graphics/Bitmap;)V

    .line 2691
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    .line 2693
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2694
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2695
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2697
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method private enableTheShutterButtonOfTS(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2765
    if-eqz p1, :cond_0

    .line 2766
    iput-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mTSShutterDisable:Z

    .line 2767
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    .line 2773
    :goto_0
    return-void

    .line 2769
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mTSShutterDisable:Z

    .line 2770
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setShutterButtonEnabled(Z)V

    goto :goto_0
.end method

.method private genrateFinalPreviewImage(Landroid/graphics/Bitmap;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2635
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 2637
    .local v1, "orientation":I
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS] genrateFinalPreviewImage - preview bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2638
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS]    mUpperImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2639
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS]    mDownImage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2641
    if-eqz v1, :cond_0

    .line 2642
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/DualSightPhotoModule;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    .line 2643
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/DualSightPhotoModule;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    .line 2647
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2648
    .local v2, "result":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2649
    .local v0, "canvas":Landroid/graphics/Canvas;
    sparse-switch v1, :sswitch_data_0

    .line 2668
    :goto_0
    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mFinalPreviewBitmap:Landroid/graphics/Bitmap;

    .line 2670
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->doTwiceShotFinishAnim(Landroid/graphics/Bitmap;)V

    .line 2671
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v3, v8}, Lcom/android/camera/opengl/PreviewRenderer;->setTwiceShotDisableSlide(Z)V

    .line 2672
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/app/CameraAppUI;->updateTwiceShotWaitingMode(Z)V

    .line 2674
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->setThumbnailVisibility(Z)V

    .line 2675
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v3, v8}, Lcom/android/camera/DualSightPhotoModuleUI;->setIsTwiceShotWaiting(Z)V

    .line 2676
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/effect/EffectChooseManager;->setNeedHideEffect(Z)V

    .line 2678
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshBeautyBarUI()V

    .line 2680
    return-void

    .line 2651
    :sswitch_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2652
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2655
    :sswitch_1
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2656
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2659
    :sswitch_2
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2660
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2663
    :sswitch_3
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v6, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2664
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v6, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 2649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_3
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
    .locals 1

    .prologue
    .line 1780
    new-instance v0, Lcom/android/camera/DualSightPhotoModule$13;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightPhotoModule$13;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    return-object v0
.end method

.method private getEffectChooseCallback()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 1770
    new-instance v0, Lcom/android/camera/DualSightPhotoModule$12;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightPhotoModule$12;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    return-object v0
.end method

.method private getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;
    .locals 2
    .param p1, "cameraId"    # I

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

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
    .line 1308
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1309
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    monitor-exit v1

    return-object v0

    .line 1310
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
    .line 1157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTwiceShotHalf_Down(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 2529
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 2530
    .local v1, "orientation":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2531
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2532
    .local v0, "height":I
    move-object v2, p1

    .line 2533
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    sparse-switch v1, :sswitch_data_0

    .line 2547
    :goto_0
    rsub-int v4, v1, 0x168

    int-to-float v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/DualSightPhotoModule;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 2535
    :sswitch_0
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v5, v0, v5

    invoke-static {p1, v6, v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2536
    goto :goto_0

    .line 2538
    :sswitch_1
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v4, v0, v4

    invoke-static {p1, v6, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2539
    goto :goto_0

    .line 2541
    :sswitch_2
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v4, v3, v4

    invoke-static {p1, v6, v6, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2542
    goto :goto_0

    .line 2544
    :sswitch_3
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v5, v3, v5

    invoke-static {p1, v4, v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 2533
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getTwiceShotHalf_Upper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "src"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 2507
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v1

    .line 2508
    .local v1, "orientation":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 2509
    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 2510
    .local v0, "height":I
    move-object v2, p1

    .line 2511
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    sparse-switch v1, :sswitch_data_0

    .line 2525
    :goto_0
    rsub-int v4, v1, 0x168

    int-to-float v4, v4

    invoke-virtual {p0, v2, v4}, Lcom/android/camera/DualSightPhotoModule;->rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 2513
    :sswitch_0
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    invoke-static {p1, v6, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2514
    goto :goto_0

    .line 2516
    :sswitch_1
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v4, v0, v4

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    invoke-static {p1, v6, v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2517
    goto :goto_0

    .line 2519
    :sswitch_2
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    invoke-static {p1, v4, v6, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2520
    goto :goto_0

    .line 2522
    :sswitch_3
    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    invoke-static {p1, v6, v6, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 2511
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private hideEffectAndShowBeautyOrZoomIfNeeded()V
    .locals 2

    .prologue
    .line 1819
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseManager;->hide()V

    .line 1820
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    .line 1821
    .local v0, "isBeautyOn":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/android/camera/DualSightPhotoModule;->updateBeautyAndZoomUI(ZZ)V

    .line 1822
    return-void

    .line 1821
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideOperationsAfterFirstTS()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    .line 2606
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 2607
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 2608
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 2611
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/app/CameraAppUI;->updateTwiceShotWaitingMode(Z)V

    .line 2613
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setSwitchButtonVisible(I)V

    .line 2614
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->setThumbnailVisibility(Z)V

    .line 2615
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideDefaultThumbnail()V

    .line 2616
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->hideCaptureIndicator()V

    .line 2618
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/app/CameraAppUI;->setModeTextVisible(I)V

    .line 2621
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/DualSightPhotoModuleUI;->setTwiceShotWaitMode(Z)V

    .line 2622
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v2}, Lcom/android/camera/DualSightPhotoModuleUI;->setIsTwiceShotWaiting(Z)V

    .line 2624
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->setBeautyVisibility(I)V

    .line 2625
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mGlRendererPreviewRender:Lcom/android/camera/opengl/PreviewRenderer;

    invoke-virtual {v0, v2}, Lcom/android/camera/opengl/PreviewRenderer;->setTwiceShotDisableSlide(Z)V

    .line 2626
    return-void
.end method

.method private initSurfaceTextureConsumer()V
    .locals 4

    .prologue
    .line 1281
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1282
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1284
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->getSurfaceWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1285
    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/app/CameraAppUI;->getSurfaceHeight()I

    move-result v3

    .line 1283
    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1287
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1288
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->reopenCamera()V

    .line 1289
    return-void

    .line 1287
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

    .line 1958
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return v1

    .line 1963
    :cond_1
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 1964
    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 1967
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

    .line 1965
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

.method private isDualSightHalfAndHalf()Z
    .locals 5

    .prologue
    .line 2712
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2713
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_camera_screen_key"

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2714
    .local v0, "currentValue":I
    const v2, 0x7f0803c4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 2715
    const/4 v2, 0x1

    .line 2717
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTSActive()Z
    .locals 1

    .prologue
    .line 2704
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isDualSightHalfAndHalf()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTwiceShotON()Z
    .locals 3

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_dual_twiceshot_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V
    .locals 12
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "frameNumber"    # J

    .prologue
    .line 1680
    const/4 v3, 0x0

    .line 1681
    .local v3, "passive":Z
    sget-object v7, Lcom/android/camera/DualSightPhotoModule$16;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1706
    :cond_0
    :goto_0
    return-void

    .line 1684
    :pswitch_0
    iget-wide v8, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 1685
    iput-wide p2, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    .line 1686
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartTime:J

    goto :goto_0

    .line 1691
    :pswitch_1
    const/4 v3, 0x1

    .line 1694
    :pswitch_2
    iget-wide v8, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_0

    .line 1695
    iget-wide v8, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    sub-long v4, p2, v8

    .line 1696
    .local v4, "frames":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartTime:J

    sub-long v0, v8, v10

    .line 1697
    .local v0, "dt":J
    long-to-float v7, v4

    const/high16 v8, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v8

    long-to-float v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 1698
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

    .line 1699
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v7

    .line 1698
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1700
    .local v6, "report":Ljava/lang/String;
    sget-object v7, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v7, v6}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1701
    iget-object v7, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

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

    invoke-virtual {v7, v8}, Lcom/android/camera/DualSightPhotoModuleUI;->showDebugMessage(Ljava/lang/String;)V

    .line 1702
    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusScanStartFrame:J

    goto :goto_0

    .line 1698
    .end local v6    # "report":Ljava/lang/String;
    :cond_1
    const-string v7, "AF"

    goto :goto_1

    .line 1681
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
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 1803
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    const-string v3, "default_scope"

    const-string v4, "pref_beauty"

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/camera/settings/SettingsManager;->getValueOfCurrentIndex(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1805
    .local v0, "beautyState":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f080313

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1806
    .local v1, "isShow":Z
    if-nez v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/android/camera/DualSightPhotoModule;->updateBeautyAndZoomUI(ZZ)V

    .line 1807
    return-void

    .line 1806
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onPreviewStarted()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1860
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    sget-object v2, Lcom/android/camera/DualSightPhotoModule$ModuleState;->WATCH_FOR_NEXT_FRAME_AFTER_PREVIEW_STARTED:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    if-ne v1, v2, :cond_0

    .line 1861
    sget-object v1, Lcom/android/camera/DualSightPhotoModule$ModuleState;->UPDATE_TRANSFORM_ON_NEXT_SURFACE_TEXTURE_UPDATE:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    iput-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mState:Lcom/android/camera/DualSightPhotoModule$ModuleState;

    .line 1863
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->onPreviewStarted()V

    .line 1864
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1865
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1, v0}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1866
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1867
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1868
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraCharacteristics;->getDisplayOrientation(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v3, v4, :cond_1

    :goto_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/android/camera/DualSightPhotoModuleUI;->onStartFaceDetection(IZLcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;)V

    .line 1869
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setOnFaceChangedListener(Lcom/android/camera/ui/FaceView$OnFaceChangedListener;)V

    .line 1870
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 1871
    return-void

    .line 1868
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openCameraAndStartPreview()V
    .locals 23

    .prologue
    .line 1992
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v5, "DualSightPhotoModule.openCameraAndStartPreview()"

    invoke-interface {v4, v5}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v21

    .line 2000
    .local v21, "guard":Lcom/android/camera/stats/profiler/Profile;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    const-wide/16 v6, 0x9c4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2002
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Time out waiting to acquire camera-open lock."

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2004
    :catch_0
    move-exception v19

    .line 2005
    .local v19, "e":Ljava/lang/InterruptedException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Interrupted while waiting to acquire camera-open lock."

    move-object/from16 v0, v19

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 2008
    .end local v19    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const-string v4, "Acquired mCameraOpenCloseLock"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2010
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v4, :cond_1

    .line 2012
    sget-object v4, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Camera already open, not re-opening."

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2014
    const-string v4, "Camera is already open"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 2400
    :goto_0
    return-void

    .line 2018
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v17

    .line 2019
    .local v17, "cameraId":Lcom/android/camera/device/CameraId;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v4, v5}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v22

    .line 2020
    .local v22, "slaveCameraId":Lcom/android/camera/device/CameraId;
    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/SettingsManager;->getCameraSettingScope(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2025
    .local v15, "cameraSettingScope":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 2027
    sget-object v5, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mPictureSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2028
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getResolutionSetting()Lcom/android/camera/settings/ResolutionSetting;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5}, Lcom/android/camera/settings/ResolutionSetting;->getPictureSize(Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/util/Size;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    .line 2029
    sget-object v5, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSlavePictureSize = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    invoke-virtual {v4}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2030
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v5, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/camera/DualSightPhotoModule;->mSlavePictureSize:Lcom/android/camera/util/Size;

    sget-object v12, Lcom/android/camera/one/OneCameraCaptureSetting;->DEFAULT_PREVIEW_FPS:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v13}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/DualSightPhotoModule;->getHardwareSpec()Lcom/android/camera/hardware/HardwareSpec;

    move-result-object v14

    const/16 v16, 0x0

    invoke-static/range {v4 .. v16}, Lcom/android/camera/one/OneCameraCaptureSetting;->create(Lcom/android/camera/app/AppController;Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCamera$Facing;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/one/OneCameraCharacteristics;Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;Landroid/util/Range;Lcom/android/camera/settings/SettingsManager;Lcom/android/camera/hardware/HardwareSpec;Ljava/lang/String;Z)Lcom/android/camera/one/OneCameraCaptureSetting;
    :try_end_1
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v18

    .line 2036
    .local v18, "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    const-string v4, "OneCameraCaptureSetting.get"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 2038
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v4, :cond_4

    .line 2039
    sget-object v4, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v5, "Abort Camera Opened due to Module Paused"

    invoke-static {v4, v5}, Lcom/android/camera/debug/Log;->w(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 2041
    const-string v4, "Abort Camera Opened due to Module Paused"

    move-object/from16 v0, v21

    invoke-interface {v0, v4}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2027
    .end local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_2
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 2029
    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 2031
    :catch_1
    move-exception v20

    .line 2032
    .local v20, "ex":Lcom/android/camera/one/OneCameraAccessException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    .line 2033
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mCameraOpenCloseLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    goto/16 :goto_0

    .line 2045
    .end local v20    # "ex":Lcom/android/camera/one/OneCameraAccessException;
    .restart local v18    # "captureSetting":Lcom/android/camera/one/OneCameraCaptureSetting;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOneCameraProvider()Lcom/android/camera/app/OneCameraProvider;

    move-result-object v4

    new-instance v5, Lcom/android/camera/DualSightPhotoModule$14;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v18

    invoke-direct {v5, v0, v1, v2}, Lcom/android/camera/DualSightPhotoModule$14;-><init>(Lcom/android/camera/DualSightPhotoModule;Lcom/android/camera/stats/profiler/Profile;Lcom/android/camera/one/OneCameraCaptureSetting;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v4, v0, v1, v5}, Lcom/android/camera/app/OneCameraProvider;->requestCamera(Lcom/android/camera/device/CameraId;Lcom/android/camera/device/CameraId;Lcom/android/camera/one/OneCamera$OpenCallback;)V

    goto/16 :goto_0
.end method

.method private previewHalfBitmapCaptureHandler(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "preview"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2563
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->isCaptureUpFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2564
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    if-eqz v1, :cond_0

    .line 2566
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 2567
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 2568
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->getTwiceShotHalf_Upper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2569
    .local v0, "displayHalf":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setUpCoverImg(Landroid/graphics/Bitmap;)V

    .line 2570
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    .line 2571
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->hideOperationsAfterFirstTS()V

    .line 2600
    :goto_0
    return-void

    .line 2574
    .end local v0    # "displayHalf":Landroid/graphics/Bitmap;
    :cond_0
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 2575
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 2576
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->getTwiceShotHalf_Down(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2577
    .restart local v0    # "displayHalf":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    .line 2578
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->genrateFinalPreviewImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2582
    .end local v0    # "displayHalf":Landroid/graphics/Bitmap;
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    if-eqz v1, :cond_2

    .line 2584
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 2585
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 2586
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->getTwiceShotHalf_Down(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2587
    .restart local v0    # "displayHalf":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setDownCoverImg(Landroid/graphics/Bitmap;)V

    .line 2588
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDownImage:Landroid/graphics/Bitmap;

    .line 2589
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->hideOperationsAfterFirstTS()V

    goto :goto_0

    .line 2592
    .end local v0    # "displayHalf":Landroid/graphics/Bitmap;
    :cond_2
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 2593
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 2594
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->getTwiceShotHalf_Upper(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2595
    .restart local v0    # "displayHalf":Landroid/graphics/Bitmap;
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUpperImage:Landroid/graphics/Bitmap;

    .line 2596
    invoke-direct {p0, p1}, Lcom/android/camera/DualSightPhotoModule;->genrateFinalPreviewImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private refreshBeautyBarUI()V
    .locals 2

    .prologue
    .line 1825
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-nez v1, :cond_1

    .line 1833
    :cond_0
    :goto_0
    return-void

    .line 1828
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v0

    .line 1829
    .local v0, "isBeautyOn":Z
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1830
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/effect/EffectChooseManager;->getIsLastModuelShowEffectPanel()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1831
    const/4 v0, 0x0

    .line 1832
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/camera/DualSightPhotoModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private reopenCamera()V
    .locals 2

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1305
    :goto_0
    return-void

    .line 1296
    :cond_0
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$9;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$9;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requiresNexus4SpecificFixFor16By9Previews()Z
    .locals 1

    .prologue
    .line 1888
    sget-boolean v0, Lcom/android/camera/DualSightPhotoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/camera/util/ApiHelper;->IS_NEXUS_4:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSize:Lcom/android/camera/util/Size;

    .line 1889
    invoke-direct {p0, v0}, Lcom/android/camera/DualSightPhotoModule;->is16by9AspectRatio(Lcom/android/camera/util/Size;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1888
    :goto_0
    return v0

    .line 1889
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetTSStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1381
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    if-nez v0, :cond_0

    .line 1383
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    .line 1384
    iput-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mDisableRefreshThumbnail:Z

    .line 1385
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    .line 1386
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    .line 1387
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setTwiceShotWaitMode(Z)V

    .line 1388
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setIsTwiceShotWaiting(Z)V

    .line 1389
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1390
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1391
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1395
    :cond_0
    return-void
.end method

.method private resetTextureBufferSize()V
    .locals 0

    .prologue
    .line 2472
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewBufferSize()V

    .line 2473
    return-void
.end method

.method private resetTwiceShotArea()V
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->resetTwiceShotArea()V

    .line 2737
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->getPreviewAreaHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    .line 2738
    return-void
.end method

.method private showTwiceShotSwitchButton(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 2743
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->updateTwiceShotStatus(Z)V

    .line 2745
    return-void
.end method

.method private switchCamera()V
    .locals 3

    .prologue
    .line 2439
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCamera : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2440
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return-void

    .line 2443
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 2446
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "switchCamera"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2447
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->cancelCountDown()V

    .line 2448
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->clearFaces()V

    .line 2449
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 2451
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->initSurfaceTextureConsumer()V

    goto :goto_0
.end method

.method private switchToRegularCapture()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    .line 1842
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    .line 1843
    .local v1, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v2, "default_scope"

    const-string v3, "pref_camera_hdr_plus_key"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1847
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getButtonManager()Lcom/android/camera/ButtonManager;

    move-result-object v0

    .line 1848
    .local v0, "buttonManager":Lcom/android/camera/ButtonManager;
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->disableButtonClick(I)V

    .line 1849
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/app/CameraAppUI;->fakefreezeScreenUntilPreviewReady()V

    .line 1850
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->onModeSelected(I)V

    .line 1852
    invoke-virtual {v0, v5}, Lcom/android/camera/ButtonManager;->enableButtonClick(I)V

    .line 1853
    return-void
.end method

.method private takePictureNow()V
    .locals 12

    .prologue
    .line 810
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 811
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "Not taking picture since Camera is closed."

    invoke-static {v1, v3}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1074
    :goto_0
    return-void

    .line 815
    :cond_0
    invoke-static {}, Lcom/android/camera/cpuboost/CpuBooster;->instance()Lcom/android/camera/cpuboost/BoostEngine;

    move-result-object v1

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Lcom/android/camera/cpuboost/BoostEngine;->boostInTime(I)Z

    .line 817
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v1

    .line 818
    invoke-virtual {v1}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 819
    .local v2, "orientation":I
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->createAndStartCaptureSession(I)Lcom/android/camera/session/CaptureSession;

    move-result-object v11

    .line 823
    .local v11, "session":Lcom/android/camera/session/CaptureSession;
    new-instance v0, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;

    .line 824
    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11}, Lcom/android/camera/session/CaptureSession;->getLocation()Landroid/location/Location;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 825
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    new-instance v5, Lcom/android/camera/DualSightPhotoModule$7;

    invoke-direct {v5, p0, v2, v11}, Lcom/android/camera/DualSightPhotoModule$7;-><init>(Lcom/android/camera/DualSightPhotoModule;ILcom/android/camera/session/CaptureSession;)V

    iget-object v7, p0, Lcom/android/camera/DualSightPhotoModule;->mPictureSaverCallback:Lcom/android/camera/one/OneCamera$PictureSaverCallback;

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    .line 1071
    invoke-virtual {v6}, Lcom/android/camera/hardware/HeadingSensor;->getCurrentHeading()I

    move-result v8

    :goto_1
    iget v9, p0, Lcom/android/camera/DualSightPhotoModule;->mZoomValue:F

    const/4 v10, 0x0

    move-object v6, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;-><init>(Ljava/lang/String;ILandroid/location/Location;Ljava/io/File;Lcom/android/camera/one/OneCamera$PictureCallback;Lcom/android/camera/one/OneCamera$ScreenFlashController;Lcom/android/camera/one/OneCamera$PictureSaverCallback;IFF)V

    .line 1072
    .local v0, "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    invoke-direct {p0, v11}, Lcom/android/camera/DualSightPhotoModule;->decorateSessionAtCaptureTime(Lcom/android/camera/session/CaptureSession;)V

    .line 1073
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    invoke-interface {v1, v0, v11}, Lcom/android/camera/one/OneCamera;->takePicture(Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;Lcom/android/camera/session/CaptureSession;)V

    goto :goto_0

    .line 1071
    .end local v0    # "params":Lcom/android/camera/one/OneCamera$PhotoCaptureParameters;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateBeautyAndZoomUI(ZZ)V
    .locals 2
    .param p1, "isBeautyShow"    # Z
    .param p2, "isZoomShow"    # Z

    .prologue
    const/16 v0, 0x8

    .line 1809
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotWaiting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1811
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setBeautyVisibility(I)V

    .line 1817
    :goto_0
    return-void

    .line 1813
    :cond_0
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->setBeautyVisibility(I)V

    goto :goto_0
.end method

.method private updateCameraCharacteristics()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 581
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v0

    .line 582
    .local v0, "cameraId":Lcom/android/camera/device/CameraId;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 583
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 585
    :cond_0
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v3, v4}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v1

    .line 586
    .local v1, "slaveCameraId":Lcom/android/camera/device/CameraId;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 587
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/camera/one/OneCameraManager;->getOneCameraCharacteristics(Lcom/android/camera/device/CameraId;)Lcom/android/camera/one/OneCameraCharacteristics;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    .line 589
    :cond_1
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraCharacteristics:Lcom/android/camera/one/OneCameraCharacteristics;
    :try_end_0
    .catch Lcom/android/camera/one/OneCameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 594
    .end local v0    # "cameraId":Lcom/android/camera/device/CameraId;
    .end local v1    # "slaveCameraId":Lcom/android/camera/device/CameraId;
    :cond_2
    :goto_0
    return v2

    .line 590
    :catch_0
    move-exception v3

    .line 593
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/FatalErrorHandler;->onGenericCameraAccessFailure()V

    goto :goto_0
.end method

.method private updateCoverHeight(Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "curRect"    # Landroid/graphics/RectF;

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_0

    .line 2728
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, p1}, Lcom/android/camera/DualSightPhotoModuleUI;->updateCoversArea(Landroid/graphics/RectF;)V

    .line 2729
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    .line 2731
    :cond_0
    return-void
.end method

.method private updateEffectBeautyZoomUI()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1793
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-nez v4, :cond_0

    .line 1801
    :goto_0
    return-void

    .line 1794
    :cond_0
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectChooseManager;->isShow()Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1795
    .local v0, "hide":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 1796
    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    .line 1797
    .local v1, "isBeautyOn":Z
    if-nez v1, :cond_2

    :goto_2
    invoke-direct {p0, v1, v2}, Lcom/android/camera/DualSightPhotoModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0

    .end local v0    # "hide":Z
    .end local v1    # "isBeautyOn":Z
    :cond_1
    move v0, v3

    .line 1794
    goto :goto_1

    .restart local v0    # "hide":Z
    .restart local v1    # "isBeautyOn":Z
    :cond_2
    move v2, v3

    .line 1797
    goto :goto_2

    .line 1799
    .end local v1    # "isBeautyOn":Z
    :cond_3
    invoke-direct {p0, v3, v3}, Lcom/android/camera/DualSightPhotoModule;->updateBeautyAndZoomUI(ZZ)V

    goto :goto_0
.end method

.method private updatePreviewBufferDimension()V
    .locals 4

    .prologue
    .line 1976
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_0

    .line 1986
    :goto_0
    return-void

    .line 1980
    :cond_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDefaultDisplaySize()Lcom/android/camera/util/Size;

    move-result-object v0

    .line 1981
    .local v0, "displaySize":Lcom/android/camera/util/Size;
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displaySize : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1982
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    .line 1983
    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/camera/util/Size;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    .line 1985
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewBufferSize()V

    goto :goto_0
.end method

.method private updatePreviewBufferSize()V
    .locals 4

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1315
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 1316
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    iget v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 1319
    :cond_0
    monitor-exit v1

    .line 1320
    return-void

    .line 1319
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
    .line 1878
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewTransform(IIZ)V

    .line 1879
    return-void
.end method

.method private updatePreviewTransform(IIZ)V
    .locals 8
    .param p1, "incomingWidth"    # I
    .param p2, "incomingHeight"    # I
    .param p3, "forceUpdate"    # Z

    .prologue
    .line 1898
    sget-object v2, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1900
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1901
    :try_start_0
    invoke-static {}, Lcom/android/camera/util/CameraUtil;->getDisplayRotation()I

    move-result v0

    .line 1903
    .local v0, "incomingRotation":I
    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenHeight:I

    if-ne v2, p2, :cond_0

    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenWidth:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mDisplayRotation:I

    if-ne v0, v2, :cond_0

    if-nez p3, :cond_0

    .line 1905
    monitor-exit v3

    .line 1947
    :goto_0
    return-void

    .line 1908
    :cond_0
    iput v0, p0, Lcom/android/camera/DualSightPhotoModule;->mDisplayRotation:I

    .line 1909
    iput p1, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenWidth:I

    .line 1910
    iput p2, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenHeight:I

    .line 1911
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewBufferDimension()V

    .line 1924
    sget-boolean v2, Lcom/android/camera/DualSightPhotoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    if-eqz v2, :cond_3

    .line 1926
    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    if-eqz v2, :cond_1

    .line 1927
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->requiresNexus4SpecificFixFor16By9Previews()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1930
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    const v4, 0x3fe38e39

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    .line 1946
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

    .line 1932
    .restart local v0    # "incomingRotation":I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget v4, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-interface {v2, v4}, Lcom/android/camera/app/AppController;->updatePreviewAspectRatio(F)V

    goto :goto_1

    .line 1937
    :cond_3
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    if-nez v2, :cond_4

    .line 1938
    new-instance v2, Lcom/android/camera/captureintent/PreviewTransformCalculator;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1939
    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/android/camera/captureintent/PreviewTransformCalculator;-><init>(Lcom/android/camera/app/OrientationManager;)V

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    .line 1941
    :cond_4
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewTransformCalculator:Lcom/android/camera/captureintent/PreviewTransformCalculator;

    new-instance v4, Lcom/android/camera/util/Size;

    iget v5, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenWidth:I

    iget v6, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenHeight:I

    invoke-direct {v4, v5, v6}, Lcom/android/camera/util/Size;-><init>(II)V

    new-instance v5, Lcom/android/camera/util/Size;

    iget v6, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferWidth:I

    iget v7, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewBufferHeight:I

    invoke-direct {v5, v6, v7}, Lcom/android/camera/util/Size;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/captureintent/PreviewTransformCalculator;->toTransformMatrix(Lcom/android/camera/util/Size;Lcom/android/camera/util/Size;)Landroid/graphics/Matrix;

    move-result-object v1

    .line 1944
    .local v1, "transformMatrix":Landroid/graphics/Matrix;
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

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

    .line 1435
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAllocationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1436
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-virtual {v0}, Lcom/android/camera/ui/focus/FocusController;->release()V

    .line 1438
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_1

    .line 1441
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->release()V

    .line 1442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1444
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_2

    .line 1445
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v0}, Landroid/media/MediaActionSound;->release()V

    .line 1446
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mMediaActionSound:Landroid/media/MediaActionSound;

    .line 1448
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 1450
    return-void

    .line 1448
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
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1540
    new-instance v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;

    invoke-direct {v0}, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;-><init>()V

    .line 1541
    .local v0, "bottomBarSpec":Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCamera:Z

    .line 1542
    new-instance v3, Lcom/android/camera/DualSightPhotoModule$11;

    invoke-direct {v3, p0}, Lcom/android/camera/DualSightPhotoModule$11;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    iput-object v3, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->cameraCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1557
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableFlash:Z

    .line 1558
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableHdr:Z

    .line 1559
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideHdr:Z

    .line 1560
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableGridLines:Z

    .line 1561
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideLiveBroadcast:Z

    .line 1562
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideSoundFocus:Z

    .line 1563
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isExposureCompensationSupported:Z

    .line 1564
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableExposureCompensation:Z

    .line 1566
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableSelfTimer:Z

    .line 1567
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showSelfTimer:Z

    .line 1568
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableCameraScreen:Z

    .line 1570
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualCamera:Z

    .line 1571
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDualCamera:Z

    .line 1573
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDaulCamSwitcher:Z

    .line 1574
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->getDualCamType()Lcom/android/camera/util/ProductModelUtil$DualCamType;

    move-result-object v3

    sget-object v4, Lcom/android/camera/util/ProductModelUtil$DualCamType;->COLOR_MONO:Lcom/android/camera/util/ProductModelUtil$DualCamType;

    if-eq v3, v4, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->hideDaulCamSwitcher:Z

    .line 1576
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableEffect:Z

    .line 1577
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->getEffectChooseCallback()Landroid/view/View$OnClickListener;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->effectCallback:Landroid/view/View$OnClickListener;

    .line 1579
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showBeauty:Z

    .line 1580
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableBeauty:Z

    .line 1581
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->beautyCallback:Lcom/android/camera/ButtonManager$ButtonCallback;

    .line 1582
    sget-boolean v1, Lcom/android/camera/product_utils/ProductUtil$DesignSpec$Mode;->ENABLE_PRO_MODE:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->movableShutterButton:Z

    .line 1583
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    iput-boolean v1, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->isModulePause:Z

    .line 1586
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->showDualTwiceshot:Z

    .line 1587
    iput-boolean v2, v0, Lcom/android/camera/app/CameraAppUI$BottomBarUISpec;->enableDualTwiceshot:Z

    .line 1590
    return-object v0
.end method

.method public getFocusState()I
    .locals 2

    .prologue
    .line 412
    sget-object v0, Lcom/android/camera/DualSightPhotoModule$16;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    invoke-virtual {v1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 420
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 414
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 416
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 418
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 412
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
    .line 1475
    new-instance v0, Lcom/android/camera/DualSightPhotoModule$10;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightPhotoModule$10;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    return-object v0
.end method

.method public getPeekAccessibilityString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    .line 1722
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1721
    return-object v0
.end method

.method public getUsingCameraId()Lcom/android/camera/device/CameraId;
    .locals 1

    .prologue
    .line 2493
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

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
    .line 1464
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mStickyGcamCamera:Z

    if-eqz v0, :cond_0

    .line 1467
    const-string v0, "default_scope"

    const-string v1, "pref_camera_hdr_plus_key"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1468
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_id_key"

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1469
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getOneCameraManager()Lcom/android/camera/one/OneCameraManager;

    move-result-object v2

    sget-object v3, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    invoke-interface {v2, v3}, Lcom/android/camera/one/OneCameraManager;->findFirstCameraFacing(Lcom/android/camera/one/OneCamera$Facing;)Lcom/android/camera/device/CameraId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/device/CameraId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-virtual {p1, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    :cond_0
    return-void
.end method

.method public hideScreenFlash()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method public init(Lcom/android/camera/CameraActivity;ZZ)V
    .locals 11
    .param p1, "activity"    # Lcom/android/camera/CameraActivity;
    .param p2, "isSecureCamera"    # Z
    .param p3, "isCaptureIntent"    # Z

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v1, "DualSightPhotoModule.init"

    invoke-interface {v0, v1}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v8

    .line 600
    .local v8, "guard":Lcom/android/camera/stats/profiler/Profile;
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 602
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init UseAutotransformUiLayout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/camera/DualSightPhotoModule;->USE_AUTOTRANSFORM_UI_LAYOUT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 605
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_id_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 604
    invoke-direct {p0, v0}, Lcom/android/camera/DualSightPhotoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 606
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v1, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_0
    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 607
    const-string v0, "get Camera Facing"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updateCameraCharacteristics()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    .line 609
    const-string v0, "update Camera Characteristics"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 610
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_2

    .line 611
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 612
    const-string v0, "Error"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    .line 649
    :goto_2
    return-void

    .line 606
    :cond_0
    sget-object v0, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_0

    .line 608
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 615
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v10

    .line 616
    .local v10, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v0, "default_scope"

    const-string v1, "pref_beauty_level_key"

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    const v3, 0x7f08035f

    .line 617
    invoke-virtual {v2, v3}, Lcom/android/camera/CameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 616
    invoke-virtual {v10, v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)I

    move-result v4

    .line 618
    .local v4, "level":I
    invoke-static {v10}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v5

    .line 619
    .local v5, "isBeautyOn":Z
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 620
    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->getIsLastModuelShowEffectPanel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 621
    const/4 v5, 0x0

    .line 622
    :cond_3
    new-instance v0, Lcom/android/camera/DualSightPhotoModuleUI;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getModuleLayoutRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/DualSightPhotoModuleUI;-><init>(Lcom/android/camera/CameraActivity;Lcom/android/camera/app/AppController;Landroid/view/View;IZ)V

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    .line 623
    const-string v0, "DualSightPhotoModuleUI.init"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewStatusListener:Lcom/android/camera/ui/PreviewStatusListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setPreviewStatusListener(Lcom/android/camera/ui/PreviewStatusListener;)V

    .line 625
    const-string v0, "PreviewStatusListener.init"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mSurfaceTextureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 628
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 629
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    const-string v0, "PreviewSurfaceTexture.init"

    invoke-interface {v8, v0}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 632
    const v0, 0x7f0f00ba

    invoke-virtual {p1, v0}, Lcom/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 633
    .local v6, "cancelButton":Landroid/view/View;
    new-instance v0, Lcom/android/camera/DualSightPhotoModule$6;

    invoke-direct {v0, p0}, Lcom/android/camera/DualSightPhotoModule$6;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 640
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    const-string v1, "default_scope"

    const-string v2, "pref_camera_screen_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 641
    .local v7, "currentValue":I
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 642
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x7f0803c4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_5

    .line 643
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 648
    :cond_4
    :goto_3
    invoke-interface {v8}, Lcom/android/camera/stats/profiler/Profile;->stop()V

    goto/16 :goto_2

    .line 629
    .end local v6    # "cancelButton":Landroid/view/View;
    .end local v7    # "currentValue":I
    .end local v9    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 644
    .restart local v6    # "cancelButton":Landroid/view/View;
    .restart local v7    # "currentValue":I
    .restart local v9    # "res":Landroid/content/res/Resources;
    :cond_5
    const v0, 0x7f0803c6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_4

    .line 645
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public isUsingBottomBar()Z
    .locals 1

    .prologue
    .line 1595
    const/4 v0, 0x1

    return v0
.end method

.method public isUsingHAL3()Z
    .locals 1

    .prologue
    .line 2477
    const/4 v0, 0x1

    return v0
.end method

.method public onCameraAvailable(Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;)V
    .locals 0
    .param p1, "cameraProxy"    # Lcom/android/ex/camera2/portability/CameraAgent$CameraProxy;

    .prologue
    .line 1460
    return-void
.end method

.method public onCountDownFinished()V
    .locals 1

    .prologue
    .line 1162
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->transitionToCapture()V

    .line 1164
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 1165
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->showPreviewOverlay()V

    .line 1168
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1172
    :goto_0
    return-void

    .line 1171
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->takePictureNow()V

    goto :goto_0
.end method

.method public onFirstPreviewArrived()V
    .locals 5

    .prologue
    .line 509
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 511
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/camera/DualSightPhotoModule$5;

    invoke-direct {v1, p0}, Lcom/android/camera/DualSightPhotoModule$5;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 556
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->getFocusRing()Lcom/android/camera/ui/focus/FocusRing;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v2}, Lcom/android/camera/DualSightPhotoModuleUI;->getFaceView()Lcom/android/camera/ui/FaceView;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/focus/FocusController;-><init>(Lcom/android/camera/ui/focus/FocusRing;Lcom/android/camera/ui/FaceView;Lcom/android/camera/ui/focus/FocusSound;Lcom/android/camera/async/MainThread;)V

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    .line 559
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewArea:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/focus/FocusController;->configurePreviewDimensions(Landroid/graphics/RectF;)V

    .line 560
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mFocusController:Lcom/android/camera/ui/focus/FocusController;

    invoke-interface {v0, v1}, Lcom/android/camera/one/OneCamera;->setLensStateListener(Lcom/android/camera/one/OneCamera$LensStateListener;)V

    .line 564
    :cond_0
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] mUI"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 565
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_1

    .line 566
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->loadModuleLayout()V

    .line 567
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0}, Lcom/android/camera/DualSightPhotoModuleUI;->getPreviewAreaHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/DualSightPhotoModule;->mCoverHeight:I

    .line 569
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibile(Z)V

    .line 570
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isDualSightHalfAndHalf()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/DualSightPhotoModule;->showTwiceShotSwitchButton(Z)V

    .line 571
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshBeautyBarUI()V

    .line 575
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    sget-object v1, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/effect/EffectChooseManager;->registerEffectChoose(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;Lcom/android/camera/one/OneCamera$Facing;)V

    .line 576
    :cond_2
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onFirstPreviewArrived done"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public onFocusStatusUpdate(Lcom/android/camera/one/OneCamera$AutoFocusState;Landroid/graphics/PointF;J)V
    .locals 3
    .param p1, "state"    # Lcom/android/camera/one/OneCamera$AutoFocusState;
    .param p2, "focusPotint"    # Landroid/graphics/PointF;
    .param p3, "frameNumber"    # J

    .prologue
    .line 1645
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1646
    :cond_1
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 1647
    sget-object v0, Lcom/android/camera/DualSightPhotoModule$16;->$SwitchMap$com$android$camera$one$OneCamera$AutoFocusState:[I

    invoke-virtual {p1}, Lcom/android/camera/one/OneCamera$AutoFocusState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1673
    :goto_1
    sget-boolean v0, Lcom/android/camera/DualSightPhotoModule;->CAPTURE_DEBUG_UI:Z

    if-eqz v0, :cond_0

    .line 1674
    invoke-direct {p0, p1, p3, p4}, Lcom/android/camera/DualSightPhotoModule;->measureAutoFocusScans(Lcom/android/camera/one/OneCamera$AutoFocusState;J)V

    goto :goto_0

    .line 1649
    :pswitch_0
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1652
    :pswitch_1
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1655
    :pswitch_2
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->PASSIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1659
    :pswitch_3
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_SCAN:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1663
    :pswitch_4
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_FOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1666
    :pswitch_5
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->ACTIVE_UNFOCUSED:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    goto :goto_1

    .line 1647
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

    .line 1600
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1619
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1601
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1619
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1604
    :pswitch_2
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->isCountingDown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1605
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->cancelCountDown()V

    goto :goto_0

    .line 1606
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1608
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1609
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1610
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isTutorialShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1611
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1601
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

    .line 1624
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 1637
    :cond_0
    :goto_0
    return v0

    .line 1625
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 1637
    const/4 v0, 0x0

    goto :goto_0

    .line 1628
    :pswitch_0
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1629
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isShutterButtonEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1630
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isModeTransiting()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1631
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->isTutorialShow()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1632
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->onShutterButtonClick()V

    goto :goto_0

    .line 1625
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
    .line 1454
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onLayoutOrientationChanged"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1455
    return-void
.end method

.method public onPictureSaved(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1737
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->notifyNewMedia(Landroid/net/Uri;)V

    .line 1738
    return-void
.end method

.method public onPictureTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1733
    return-void
.end method

.method public onPictureTakingFailed()V
    .locals 2

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getFatalErrorHandler()Lcom/android/camera/FatalErrorHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/DualSightPhotoModule;->mOrientation:I

    invoke-interface {v0, v1}, Lcom/android/camera/FatalErrorHandler;->onMediaStorageFailure(I)V

    .line 1753
    return-void
.end method

.method public onPreviewTaken(Lcom/android/camera/session/CaptureSession;)V
    .locals 0
    .param p1, "session"    # Lcom/android/camera/session/CaptureSession;

    .prologue
    .line 1748
    return-void
.end method

.method public onQuickExpose()V
    .locals 5

    .prologue
    .line 1226
    iget-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v3, :cond_0

    .line 1271
    :goto_0
    return-void

    .line 1227
    :cond_0
    const/4 v1, 0x0

    .line 1229
    .local v1, "needRescheduleInMainThread":Z
    :try_start_0
    invoke-static {}, Lcom/android/camera/async/MainThread;->checkMainThread()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1235
    :goto_1
    new-instance v2, Lcom/android/camera/DualSightPhotoModule$8;

    invoke-direct {v2, p0}, Lcom/android/camera/DualSightPhotoModule$8;-><init>(Lcom/android/camera/DualSightPhotoModule;)V

    .line 1266
    .local v2, "runnable":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 1267
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    invoke-virtual {v3, v2}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1230
    .end local v2    # "runnable":Ljava/lang/Runnable;
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "Not main thread."

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1232
    const/4 v1, 0x1

    goto :goto_1

    .line 1269
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
    .line 1710
    if-eqz p1, :cond_0

    .line 1711
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/app/CameraAppUI;->enableModeOptions()V

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectChooseManager;->onReadyStateChanged(Z)V

    .line 1714
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1715
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0, p1}, Lcom/android/camera/app/AppController;->setSwitchButtonEnabled(Z)V

    .line 1716
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/app/CameraAppUI;->setSwipeEnabled(Z)V

    .line 1717
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

    .line 1176
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-eqz v0, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1177
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-nez v0, :cond_2

    .line 1178
    new-instance v0, Lcom/android/camera/SoundPlayer;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/SoundPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    .line 1181
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    if-nez v0, :cond_4

    .line 1182
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1184
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 1185
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    .line 1188
    :cond_4
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShutterSoundEnabled:Z

    if-eqz v0, :cond_0

    .line 1189
    if-ne p1, v3, :cond_5

    .line 1190
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0

    .line 1191
    :cond_5
    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1192
    :cond_6
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0, v5, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    goto :goto_0
.end method

.method public onRemoteShutterPress()V
    .locals 2

    .prologue
    .line 1275
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "onRemoteShutterPress"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->d(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1277
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->takePictureNow()V

    .line 1278
    return-void
.end method

.method public onSessionPictureDataUpdate([BI)V
    .locals 4
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I

    .prologue
    const/4 v1, 0x1

    .line 2482
    sget-object v2, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[TS] onSessionPictureDataUpdate :"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 2484
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2485
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mPrevPhotoData:[B

    .line 2487
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    .line 2490
    return-void

    .line 2482
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSettingChanged(Lcom/android/camera/settings/SettingsManager;Ljava/lang/String;)V
    .locals 6
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 326
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS] onSettingChanged key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 329
    const-string v3, "pref_camera_screen_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const-string v3, "default_scope"

    invoke-virtual {p1, v3, p2}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 332
    .local v0, "currentValue":I
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 333
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x7f0803c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 334
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[TS] onSettingChanged  camera_screen_off"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 335
    const v3, 0x7f0b000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 336
    .local v1, "index":I
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->showModeBlurCover(I)V

    .line 337
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/app/CameraAppUI;->onCameraModeSelected(I)V

    .line 352
    .end local v0    # "currentValue":I
    .end local v1    # "index":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    const-string v3, "pref_dual_twiceshot_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-nez v3, :cond_1

    .line 354
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[TS] onSettingChanged - KEY_DUAL_TWICESHOT"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 355
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTwiceShotON()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    .line 357
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshTwiceShotContainer()V

    .line 361
    :cond_1
    const-string v3, "pref_camera_id_key"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-nez v3, :cond_2

    .line 363
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v3}, Lcom/android/camera/DualSightPhotoModuleUI;->switchFrontAndMain()V

    .line 366
    :cond_2
    return-void

    .line 338
    .restart local v0    # "currentValue":I
    .restart local v2    # "res":Landroid/content/res/Resources;
    :cond_3
    const v3, 0x7f0803c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 339
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[TS] onSettingChanged  half_and_half"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 340
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080138

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 341
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    sget-object v4, Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;->DUAL_SIGHT_PHOTO:Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;

    invoke-interface {v3, v4}, Lcom/android/camera/app/AppController;->showTutorial(Lcom/android/camera/one/OneCameraCaptureSetting$CaptureMode;)V

    .line 342
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/camera/DualSightPhotoModule;->showTwiceShotSwitchButton(Z)V

    .line 343
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshTwiceShotContainer()V

    goto :goto_0

    .line 344
    :cond_4
    const v3, 0x7f0803c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 345
    sget-object v3, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[TS] onSettingChanged  sub_and_full"

    invoke-static {v3, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 346
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v3}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080136

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/app/CameraAppUI;->updateModeText(Ljava/lang/String;)V

    .line 347
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/camera/DualSightPhotoModule;->showTwiceShotSwitchButton(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->refreshTwiceShotContainer()V

    goto/16 :goto_0
.end method

.method public onShutterButtonClick()V
    .locals 8

    .prologue
    .line 684
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mCamera:Lcom/android/camera/one/OneCamera;

    if-nez v1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1}, Lcom/android/camera/DualSightPhotoModuleUI;->isTwiceShotAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    if-nez v1, :cond_0

    .line 690
    :cond_2
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[TS] onShutterButtonClick - A      mTSShutterDisable:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mTSShutterDisable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTwiceShotBtnOn:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsTSFirstShot:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mIsTSFirstShot:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 692
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mTSShutterDisable:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    if-nez v1, :cond_0

    .line 695
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mMoveStarted:Z

    if-eqz v1, :cond_4

    .line 696
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mMoveStarted "

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_4
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_effect_mode_key"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/android/camera/effect/EffectChooseState;->fromValue(I)Lcom/android/camera/effect/EffectChooseState;

    move-result-object v1

    sget-object v4, Lcom/android/camera/effect/EffectChooseState;->NONE:Lcom/android/camera/effect/EffectChooseState;

    if-ne v1, v4, :cond_5

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    .line 700
    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/settings/Keys;->isBeautyOn(Lcom/android/camera/settings/SettingsManager;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 701
    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_screen_key"

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0803c4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 702
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/app/CameraServices;->getCaptureSessionManager()Lcom/android/camera/session/CaptureSessionManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/session/CaptureSessionManager;->getSessionsSize()I

    move-result v1

    const/4 v4, 0x2

    if-le v1, v4, :cond_5

    .line 703
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "SessionsSize > MAX_QUEUE_SIZE return"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :cond_5
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 709
    iget-boolean v1, p0, Lcom/android/camera/DualSightPhotoModule;->mFirstPreviewArrived:Z

    if-nez v1, :cond_6

    .line 710
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - First Preview Not Arrived"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mMainThread:Lcom/android/camera/async/MainThread;

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mDoSnapRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 719
    :cond_6
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v1, :cond_7

    .line 720
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "onShutterButtonClick ignore - mActivity is null"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 724
    :cond_7
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/android/camera/CameraActivity;->getStorageSpaceBytes()J

    move-result-wide v2

    .line 726
    .local v2, "storageSpaceBytes":J
    const-wide/32 v4, 0x2faf080

    cmp-long v1, v2, v4

    if-gtz v1, :cond_8

    .line 727
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    goto/16 :goto_0

    .line 731
    :cond_8
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 733
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/camera/effect/EffectChooseManager;->setNeedHideEffect(Z)V

    .line 734
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/camera/DualSightPhotoModule;->enableTheShutterButtonOfTS(Z)V

    .line 735
    sget-object v1, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v4, "[TS] mTSShutterDisable = true"

    invoke-static {v1, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 738
    :cond_9
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isDualSightHalfAndHalf()Z

    move-result v1

    if-nez v1, :cond_a

    .line 739
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->showModeOptions()V

    .line 742
    :cond_a
    const/4 v1, 0x6

    invoke-static {v1}, Landroid/util/CameraPerformanceTracker;->onEvent(I)V

    .line 744
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptionsExpandButtons()V

    .line 746
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v1

    const-string v4, "default_scope"

    const-string v5, "pref_camera_countdown_duration_key"

    .line 747
    invoke-virtual {v1, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 749
    .local v0, "countDownDuration":I
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->needExecuteGoogleAssistantAction()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 750
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->getTimer()I

    move-result v0

    .line 751
    invoke-static {}, Lcom/android/camera/GoogleAssistantManager;->getInstance()Lcom/android/camera/GoogleAssistantManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/GoogleAssistantManager;->finishOperation()V

    .line 754
    :cond_b
    if-lez v0, :cond_c

    .line 756
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->transitionToCancel()V

    .line 757
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hideModeOptions()V

    .line 758
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v1}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/app/CameraAppUI;->hidePreviewOverlay()V

    .line 759
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1, p0}, Lcom/android/camera/DualSightPhotoModuleUI;->setCountdownFinishedListener(Lcom/android/camera/ui/CountDownView$OnCountDownStatusListener;)V

    .line 760
    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v1, v0}, Lcom/android/camera/DualSightPhotoModuleUI;->startCountdown(I)V

    goto/16 :goto_0

    .line 763
    :cond_c
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->takePictureNow()V

    goto/16 :goto_0
.end method

.method public onShutterButtonFocus(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .prologue
    .line 674
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

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

    .line 675
    return-void
.end method

.method public onShutterButtonSwiped(I)V
    .locals 8
    .param p1, "swiped"    # I

    .prologue
    .line 653
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mActivity:Lcom/android/camera/CameraActivity;

    if-nez v5, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-void

    .line 656
    :cond_1
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getOrientationManager()Lcom/android/camera/app/OrientationManager;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/app/OrientationManager;->getDeviceOrientation()Lcom/android/camera/app/OrientationManager$DeviceOrientation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/app/OrientationManager$DeviceOrientation;->getDegrees()I

    move-result v2

    .line 657
    .local v2, "orientation":I
    invoke-static {p1, v2}, Lcom/android/camera/ShutterButton;->isGestureUp(II)Ljava/lang/Boolean;

    move-result-object v1

    .line 658
    .local v1, "isGestureUp":Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 661
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCurrentModuleIndex()I

    move-result v0

    .line 662
    .local v0, "index":I
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5, v0}, Lcom/android/camera/app/AppController;->getQuickSwitchToProModuleId(I)I

    move-result v3

    .line 663
    .local v3, "quickSwitchTo":I
    if-eq v0, v3, :cond_0

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    if-nez v5, :cond_0

    .line 664
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v4

    .line 665
    .local v4, "settingsManager":Lcom/android/camera/settings/SettingsManager;
    const-string v5, "default_scope"

    const-string v6, "pref_camera_manual_pro_mode_enabled"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 668
    iget-object v5, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v5}, Lcom/android/camera/app/AppController;->getCameraAppUI()Lcom/android/camera/app/CameraAppUI;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/app/CameraAppUI;->onModeSelected(I)V

    goto :goto_0
.end method

.method public onShutterCoordinate(Lcom/android/camera/ui/TouchCoordinate;)V
    .locals 0
    .param p1, "coord"    # Lcom/android/camera/ui/TouchCoordinate;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule;->mLastShutterTouchCoordinate:Lcom/android/camera/ui/TouchCoordinate;

    .line 680
    return-void
.end method

.method public onTakePictureProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setPictureTakingProgress(I)V

    .line 1743
    return-void
.end method

.method public onThumbnailResult([B)V
    .locals 1
    .param p1, "jpegData"    # [B

    .prologue
    .line 1727
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 1728
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 1401
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause : mShowErrorAndFinish = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    .line 1403
    sget-object v0, Lcom/android/camera/one/OneCamera$AutoFocusState;->INACTIVE:Lcom/android/camera/one/OneCamera$AutoFocusState;

    iput-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAutoFocusState:Lcom/android/camera/one/OneCamera$AutoFocusState;

    .line 1404
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->resetTSStatus()V

    .line 1406
    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    if-eqz v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1410
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->cancelCountDown()V

    .line 1412
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v0, :cond_2

    .line 1413
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v0}, Lcom/android/camera/hardware/HeadingSensor;->deactivate()V

    .line 1416
    :cond_2
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1417
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v1, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->removePreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1418
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/camera/settings/SettingsManager;->removeListener(Lcom/android/camera/settings/SettingsManager$OnSettingChangedListener;)V

    .line 1420
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getEffectChooseManager()Lcom/android/camera/effect/EffectChooseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectChooseManager;->unregisterEffectChoose()V

    .line 1421
    invoke-virtual {p0}, Lcom/android/camera/DualSightPhotoModule;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/remote/RemoteShutterListener;->onModuleExit()V

    .line 1423
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->closeCamera()V

    .line 1424
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->resetTextureBufferSize()V

    .line 1425
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    if-eqz v0, :cond_0

    .line 1426
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1427
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f07001c

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1428
    invoke-static {}, Lcom/android/camera/util/ProductModelUtil;->isCustomShutterSound()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayer:Lcom/android/camera/SoundPlayer;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 1429
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/DualSightPhotoModule;->mSoundPlayerLoaded:Z

    goto :goto_0
.end method

.method public refreshTwiceShotContainer()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2749
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_0

    .line 2750
    sget-object v0, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v1, "[TS] switchTwiceShotContainer"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2753
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTSActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2754
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    .line 2755
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, v3}, Lcom/android/camera/DualSightPhotoModuleUI;->switchTSCoverViewToUpper(Z)V

    .line 2762
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/DualSightPhotoModuleUI;->setCoverContainerVisibility(I)V

    goto :goto_0
.end method

.method public resume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1324
    sget-object v2, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resume : mShowErrorAndFinish = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1325
    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_0

    .line 1378
    :goto_0
    return-void

    .line 1329
    :cond_0
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mProfiler:Lcom/android/camera/stats/profiler/Profiler;

    const-string v4, "DualSightPhotoModule.resume"

    invoke-interface {v2, v4}, Lcom/android/camera/stats/profiler/Profiler;->create(Ljava/lang/String;)Lcom/android/camera/stats/profiler/Profile;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/stats/profiler/Profile;->start()Lcom/android/camera/stats/profiler/Profile;

    move-result-object v0

    .line 1331
    .local v0, "guard":Lcom/android/camera/stats/profiler/Profile;
    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraIdStateChanged:Z

    if-eqz v2, :cond_3

    .line 1332
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraIdStateChanged:Z

    .line 1333
    const-string v2, "reset camera id due to camera state changed."

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1334
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    .line 1335
    invoke-interface {v2}, Lcom/android/camera/app/AppController;->getSettingsManager()Lcom/android/camera/settings/SettingsManager;

    move-result-object v2

    iget-object v4, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    invoke-interface {v4}, Lcom/android/camera/app/AppController;->getModuleScope()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_camera_id_key"

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1334
    invoke-direct {p0, v2}, Lcom/android/camera/DualSightPhotoModule;->getFacingFromCameraId(I)Lcom/android/camera/one/OneCamera$Facing;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1336
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    sget-object v4, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    if-ne v2, v4, :cond_1

    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->FRONT:Lcom/android/camera/one/OneCamera$Facing;

    :goto_1
    iput-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mSlaveCameraFacing:Lcom/android/camera/one/OneCamera$Facing;

    .line 1337
    const-string v2, "get Camera Facing"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1338
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->updateCameraCharacteristics()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    .line 1339
    const-string v2, "update Camera Characteristics"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1340
    iget-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    if-eqz v2, :cond_3

    .line 1341
    sget-object v2, Lcom/android/camera/DualSightPhotoModule;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset camera id : mShowErrorAndFinish = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/DualSightPhotoModule;->mShowErrorAndFinish:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->v(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 1342
    const-string v2, "Error when reset camera id"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto :goto_0

    .line 1336
    :cond_1
    sget-object v2, Lcom/android/camera/one/OneCamera$Facing;->BACK:Lcom/android/camera/one/OneCamera$Facing;

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1338
    goto :goto_2

    .line 1347
    :cond_3
    iput-boolean v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPaused:Z

    .line 1349
    invoke-virtual {p0, v3}, Lcom/android/camera/DualSightPhotoModule;->onReadyStateChanged(Z)V

    .line 1355
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->getPreviewSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 1357
    .local v1, "texture":Landroid/graphics/SurfaceTexture;
    invoke-interface {v0}, Lcom/android/camera/stats/profiler/Profile;->mark()V

    .line 1358
    if-eqz v1, :cond_4

    .line 1359
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->initSurfaceTextureConsumer()V

    .line 1360
    const-string v2, "initSurfaceTextureConsumer"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->mark(Ljava/lang/String;)V

    .line 1363
    :cond_4
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mPreviewAreaChangedListener:Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1364
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mAppController:Lcom/android/camera/app/AppController;

    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-interface {v2, v3}, Lcom/android/camera/app/AppController;->addPreviewAreaSizeChangedListener(Lcom/android/camera/ui/PreviewStatusListener$PreviewAreaChangedListener;)V

    .line 1368
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    if-eqz v2, :cond_5

    .line 1369
    iget-object v2, p0, Lcom/android/camera/DualSightPhotoModule;->mHeadingSensor:Lcom/android/camera/hardware/HeadingSensor;

    invoke-virtual {v2}, Lcom/android/camera/hardware/HeadingSensor;->activate()V

    .line 1373
    :cond_5
    invoke-direct {p0}, Lcom/android/camera/DualSightPhotoModule;->isTwiceShotON()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/DualSightPhotoModule;->mTwiceShotBtnOn:Z

    .line 1377
    const-string v2, "resume end"

    invoke-interface {v0, v2}, Lcom/android/camera/stats/profiler/Profile;->stop(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public rotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "source"    # Landroid/graphics/Bitmap;
    .param p2, "angle"    # F

    .prologue
    const/4 v1, 0x0

    .line 2553
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 2554
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 2555
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 769
    iput p1, p0, Lcom/android/camera/DualSightPhotoModule;->mOrientation:I

    .line 770
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule;->mUI:Lcom/android/camera/DualSightPhotoModuleUI;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/DualSightPhotoModuleUI;->setOrientation(IZ)V

    .line 771
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
    .line 426
    const/4 v0, 0x0

    return v0
.end method

.method public updatePreviewTransform()V
    .locals 4

    .prologue
    .line 1762
    iget-object v3, p0, Lcom/android/camera/DualSightPhotoModule;->mDimensionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1763
    :try_start_0
    iget v1, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenWidth:I

    .line 1764
    .local v1, "width":I
    iget v0, p0, Lcom/android/camera/DualSightPhotoModule;->mScreenHeight:I

    .line 1765
    .local v0, "height":I
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1766
    invoke-direct {p0, v1, v0}, Lcom/android/camera/DualSightPhotoModule;->updatePreviewTransform(II)V

    .line 1767
    return-void

    .line 1765
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
